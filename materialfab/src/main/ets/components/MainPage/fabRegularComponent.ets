/*
 * Copyright (c) 2022 Application Library Engineering Group.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


import { Ripple } from './ripple/ripple'
import { FabRegularModel } from './fabUtils/fab_regular_model'

@Component
export struct FAB_regular {
  @State model: FabRegularModel.Model = undefined
  @State show_ripple: boolean = false
  onClick: (event?: ClickEvent) => void

  build() {
    if (this.model != undefined && this.model != null) {
      Flex({ justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center }) {
        if (this.model.getFabIcon() != undefined && this.model.getFabIcon() != null) {
          Image(this.model.getFabIcon())
            .size(this.model.getIconSize())
            .objectFit(ImageFit.Cover)
        }

        Ripple({
          model: this.model.getRippleModel(),
          show_ripple: $show_ripple
        })
      }
      .size(this.model.getFabSize())
      .backgroundColor(this.model.getBackgroundColor())
      .border(this.model.getBorder())
      .zIndex(Number.MAX_VALUE)
      .shadow({ radius: 30, color: Color.Gray, offsetY: 16 })
      .position(this.model.getPosition())
      .onClick((event) => {
        this.model.getRippleModel().setRippleStartPosition({
          x: event.x,
          y: event.y
        })
        this.show_ripple = true

        if (this.onClick) {
          setTimeout(() => {
            this.onClick(event)
          }, this.model.getRippleModel().getRippleDuration())
        }
      })
    }
  }
}

export { FabType } from './fabUtils/fabTypes'

export { FabRegularModel } from './fabUtils/fab_regular_model'