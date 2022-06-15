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
export struct FAB_regular {
  fabSize: string  // use pre-defined sizes

  // icon attributes
  fabIcon: ResourceStr
  iconSize: SizeOptions

  //container attributes
  position: Position
  backgroundColor: ResourceColor
  @State border: BorderOptions = {}
  fabCustomSize: SizeOptions
  @State private containerSize: SizeOptions = {}
  margin : Margin

  @State private clickCoordinates: Position = { x: 0, y: 0 }
  @State private showRipple: boolean = false // for ripple rendering control
  rippleColor: ResourceColor

  onClick: (event?: ClickEvent) => void


  // size specifications for different fab_regular
  private sizeSpecs = {
    "small": {
      containerSize: 40,
      iconSize: 24,
      borderRadius: 12
    },
    "medium": {
      containerSize: 56,
      iconSize: 24,
      borderRadius: 16
    },
    "large": {
      containerSize: 96,
      iconSize: 36,
      borderRadius: 28
    },
  }

  private check_fabSize_type() {
    if(this.fabSize != 'small' && this.fabSize != 'medium' && this.fabSize != 'large')
            this.fabSize = 'medium'
  }

  aboutToAppear() {
    this.check_fabSize_type()

    this.fabIcon = this.fabIcon? this.fabIcon : $r('app.media.add_icon')
    this.position = this.position? this.position : { x: 0, y: 0 }
    this.backgroundColor = this.backgroundColor? this.backgroundColor : Color.Blue
    this.rippleColor = this.rippleColor? this.rippleColor : Color.White

    this.onClick = this.onClick? this.onClick : (event) => {}

    this.border.radius = this.border.radius? this.border.radius : this.sizeSpecs[this.fabSize].borderRadius

    this.containerSize = (this.fabCustomSize) ? this.fabCustomSize : {
                                                                       width: this.sizeSpecs[this.fabSize].containerSize,
                                                                       height: this.sizeSpecs[this.fabSize].containerSize
                                                                     }


    this.iconSize = this.iconSize ? this.iconSize : {
                                                      width: this.sizeSpecs[this.fabSize].iconSize,
                                                      height: this.sizeSpecs[this.fabSize].iconSize
                                                    }
  }

  
  build() {
    Flex({ justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center }) {
      Image(this.fabIcon)
        .size(this.iconSize)
        .objectFit(ImageFit.Cover)

      rippleUtils({
        size: $containerSize,
        border: $border,
        rippleStartPosition: $clickCoordinates,
        showRipple: $showRipple,
        color: this.rippleColor,
      })
    }
    .size(this.containerSize)
    .backgroundColor(this.backgroundColor)
    .border(this.border)
    .zIndex(Number.MAX_VALUE)
    .shadow({ radius: 30, color: Color.Gray, offsetY: 16 })
    .position(this.position)
    .margin(this.margin)
    .onClick((event) => {
      this.clickCoordinates = {
        x: event.x,
        y: event.y
      }
      this.showRipple = true
      setTimeout(()=> {
        this.onClick(event)
      }, 300)
    })
  }
}
