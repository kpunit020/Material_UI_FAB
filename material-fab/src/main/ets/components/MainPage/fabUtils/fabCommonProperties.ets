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

const DEFAULT_FAB_ICON: ResourceStr = undefined
const DEFAULT_ICON_SIZE: SizeOptions = {}
const DEFAULT_ICON_PADDING: Padding = {}
const DEFAULT_FAB_SIZE: SizeOptions = {}
const DEFAULT_BACKGROUND_COLOR: ResourceColor = Color.Blue
const DEFAULT_BORDER: BorderOptions = {}
const DEFAULT_POSITION: Position = { x: '0vp', y: '0vp' }

class CommonProperties {
  protected fabIcon: ResourceStr = DEFAULT_FAB_ICON
  protected iconSize: SizeOptions = DEFAULT_ICON_SIZE
  protected iconPadding: Padding = DEFAULT_ICON_PADDING
  protected rippleModel: RippleModel.Model = new RippleModel.Model()
  protected fabSize: SizeOptions = DEFAULT_FAB_SIZE
  protected backgroundColor: ResourceColor = DEFAULT_BACKGROUND_COLOR
  protected border: BorderOptions = DEFAULT_BORDER
  protected position: Position = DEFAULT_POSITION

  setFabIcon(fabIcon: ResourceStr): CommonProperties{
    this.fabIcon = (fabIcon != null && fabIcon != undefined) ? fabIcon : DEFAULT_FAB_ICON
    return this
  }

  getFabIcon(): ResourceStr{
    return this.fabIcon
  }

  setIconSize(iconSize: SizeOptions): CommonProperties {
    this.iconSize = (iconSize != null && iconSize != undefined) ? iconSize : DEFAULT_ICON_SIZE
    return this
  }

  getIconSize(): SizeOptions {
    return this.iconSize
  }

  setIconPadding(iconPadding: Padding): CommonProperties {
    this.iconPadding = (iconPadding != null && iconPadding != undefined) ? iconPadding : DEFAULT_ICON_PADDING
    return this
  }

  getIconPadding(): Padding {
    return this.iconPadding
  }

  setRippleModel(rippleModel: RippleModel.Model): CommonProperties {
    this.rippleModel = (rippleModel != null && rippleModel != undefined) ? rippleModel : new RippleModel.Model()
    return this
  }

  getRippleModel(): RippleModel.Model {
    return this.rippleModel
  }

  setFabSize(fabSize: SizeOptions): CommonProperties {
    this.fabSize = (fabSize != null && fabSize != undefined) ? fabSize : DEFAULT_FAB_SIZE
    this.rippleModel.setRippleContainerSize(this.fabSize)
    return this
  }

  getFabSize(): SizeOptions {
    return this.fabSize
  }

  setBackgroundColor(backgroundColor: ResourceColor): CommonProperties {
    this.backgroundColor = (backgroundColor != null && backgroundColor != undefined) ? backgroundColor : DEFAULT_BACKGROUND_COLOR
    return this
  }

  getBackgroundColor(): ResourceColor {
    return this.backgroundColor
  }

  setBorder(border: BorderOptions): CommonProperties {
    this.border = (border != null && border != undefined) ? border : DEFAULT_BORDER
    this.rippleModel.setBorder({radius : this.border.radius})
    return this
  }

  getBorder(): BorderOptions {
    return this.border
  }

  setPosition(position: Position): CommonProperties {
    this.position = (position != null && position != undefined) ? position : DEFAULT_POSITION
    return this
  }

  getPosition(): Position {
    return this.position
  }

  setRippleColor(rippleColor: ResourceColor): CommonProperties {
    this.rippleModel.setRippleColor(rippleColor)
    return this
  }

  getRippleColor(): ResourceColor {
    return this.rippleModel.getRippleColor()
  }
}

export { CommonProperties }