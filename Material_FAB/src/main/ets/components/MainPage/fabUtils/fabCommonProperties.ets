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

import { RippleModel } from '../ripple/rippleModel'

class CommonProperties {
  protected fabIcon: ResourceStr = undefined
  protected iconSize: SizeOptions = undefined
  protected iconPadding: Padding = undefined
  protected rippleModel: RippleModel.Model = new RippleModel.Model()
  protected fabSize: SizeOptions = undefined
  protected backgroundColor: Color = Color.Blue
  protected border: BorderOptions = {}
  protected margin: Margin = {}
  protected position: Position = {x : 0, y : 0}

  setFabIcon(fabIcon: ResourceStr): CommonProperties{
    this.fabIcon = (fabIcon != null && fabIcon != undefined)? fabIcon : undefined
    return this
  }

  getFabIcon(): ResourceStr{
    return this.fabIcon
  }

  setIconSize(iconSize: SizeOptions): CommonProperties {
    this.iconSize = (iconSize != null && iconSize != undefined)? iconSize : undefined
    return this
  }

  getIconSize(): SizeOptions {
    return this.iconSize
  }

  setIconPadding(iconPadding: Padding): CommonProperties {
    this.iconPadding = (iconPadding != null && iconPadding != undefined)? iconPadding : undefined
    return this
  }

  getIconPadding(): Padding {
    return this.iconPadding
  }

  setRippleModel(rippleModel: RippleModel.Model): CommonProperties {
    this.rippleModel = (rippleModel != null && rippleModel != undefined)? rippleModel : new RippleModel.Model()
    return this
  }

  getRippleModel(): RippleModel.Model {
    return this.rippleModel
  }

  setFabSize(fabSize: SizeOptions): CommonProperties {
    this.fabSize = (fabSize != null && fabSize != undefined)? fabSize : undefined
    this.rippleModel.setRippleContainerSize(this.fabSize)
    return this
  }

  getFabSize(): SizeOptions {
    return this.fabSize
  }

  setBackgroundColor(backgroundColor: Color): CommonProperties {
    this.backgroundColor = (backgroundColor != null && backgroundColor != undefined)? backgroundColor : Color.Blue
    return this
  }

  getBackgroundColor(): Color {
    return this.backgroundColor
  }

  setBorder(border: BorderOptions): CommonProperties {
    this.border = (border != null && border != undefined)? border : {}
    this.rippleModel.setBorder(this.border)
    return this
  }

  getBorder(): BorderOptions {
    return this.border
  }

  setMargin(margin: Margin): CommonProperties {
    this.margin = (margin != null && margin != undefined)? margin : {}
    return this
  }

  getMargin(): Margin {
    return this.margin
  }

  setPosition(position: Position): CommonProperties {
    this.position = (position != null && position != undefined)? position : {x : 0, y : 0}
    return this
  }

  getPosition(): Position {
    return this.position
  }
}

export { CommonProperties }