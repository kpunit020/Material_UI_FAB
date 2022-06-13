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
  fabIcon: ResourceStr
  iconPadding : Padding = {left : 20 , right : -8}

  // fab text attributes
  fabLabel: string | Resource
  fontColor: ResourceColor  = Color.White
  fontStyle: FontStyle
  fontSize: number | string | Resource = 24
  fontWeight: FontWeight = FontWeight.Bold
  fontFamily : string | Resource
  textPadding : Padding = {left : 20, right : 20}


  // container Attributes
  @State border: BorderOptions = {}
  backgroundColor: ResourceColor = Color.Blue
  position: Position = { x: 0, y: 0 }
  fabMaxWidth: number = 200
  @State private currFabSize: SizeOptions = { width: 80, height: 56 }
  @State iconSize: SizeOptions = { width: 24, height: 24 }
  margin : Margin

  //ripple rendering control
  @State showRipple: boolean = false
  @State clickCoordinates: Position = { x: 0, y: 0 }
  rippleColor: ResourceColor = Color.White

  onClick: (event?: ClickEvent) => void = (event) => { // callback for onClick
    console.log('FAB_extended clicked')
  }

  aboutToAppear() {
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
        .fontFamily(this.fontFamily)
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
    .zIndex(99999999)
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
