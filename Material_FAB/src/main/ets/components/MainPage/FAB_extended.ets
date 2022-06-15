/*
 * Copyright (C) 2020-21 Application Library Engineering Group
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { rippleUtils } from './ripple'

@Component
export struct FAB_extended {
  // Icon attributes
  fabIcon: ResourceStr
  iconPadding : Padding
  iconSize: SizeOptions

  // fab text attributes
  fabLabel: string | Resource
  fontColor: ResourceColor
  fontStyle: FontStyle
  fontSize: number | string | Resource
  fontWeight: FontWeight
  textPadding : Padding


  // container Attributes
  @State border: BorderOptions = {}
  backgroundColor: ResourceColor
  position: Position
  fabMaxWidth: number
  @State private currFabSize: SizeOptions = { width: 80, height: 56 }
  margin : Margin

  //ripple rendering control
  @State private showRipple: boolean = false
  @State private clickCoordinates: Position = { x: 0, y: 0 }
  rippleColor: ResourceColor

  onClick: (event?: ClickEvent) => void // callback for onClick



  /*
  set values for all the properties
   */
  aboutToAppear() {
    this.iconPadding = this.iconPadding? this.iconPadding : {left : 20 , right : -8}
    this.iconSize = this.iconSize? this.iconSize : { width: 24, height: 24 }

    this.fontColor = this.fontColor? this.fontColor : Color.White
    this.fontSize = this.fontSize? this.fontSize : 24
    this.fontWeight = this.fontWeight? this.fontWeight : FontWeight.Bold
    this.textPadding = this.textPadding? this.textPadding : {left : 20, right : 20}

    this.backgroundColor = this.backgroundColor? this.backgroundColor : Color.Blue
    this.position = this.position? this.position : { x: 0, y: 0 }
    this.fabMaxWidth = this.fabMaxWidth? this.fabMaxWidth : 200

    this.rippleColor = this.rippleColor? this.rippleColor : Color.White

    this.onClick = this.onClick? this.onClick : (event) => {}

    this.border.radius = this.border.radius ? this.border.radius : 16
  }

  build() {
    Row() {
      if (this.fabIcon) {
        Image(this.fabIcon)
          .size(this.iconSize)
          .objectFit(ImageFit.Cover)
          .margin(this.iconPadding)
      }

      Text(this.fabLabel)
        .fontColor(this.fontColor)
        .fontStyle(this.fontStyle)
        .fontSize(this.fontSize)
        .fontWeight(this.fontWeight)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
        .maxLines(1)
        .margin(this.textPadding)
        .alignSelf(ItemAlign.Auto)
        .align(Alignment.Start)

      rippleUtils({
        size: $currFabSize,
        border: $border,
        rippleStartPosition: $clickCoordinates,
        showRipple: $showRipple,
        color: this.rippleColor,
      })

    }
    .constraintSize({ minWidth: 80, maxWidth: this.fabMaxWidth })
    .height(56)
    .backgroundColor(this.backgroundColor)
    .border(this.border)
    .zIndex(Number.MAX_VALUE)
    .shadow({ radius: 30, color: Color.Gray, offsetY: 16 })
    .position(this.position)
    .margin(this.margin)
    .onAreaChange((oldArea, newArea) => {
      this.currFabSize.width = newArea.width
    })
    .onClick((event) => {
      this.clickCoordinates = { x: event.x, y: event.y }
      this.showRipple = true
      setTimeout(() => {
        this.onClick(event)
      }, 300)
    })

  }
}
