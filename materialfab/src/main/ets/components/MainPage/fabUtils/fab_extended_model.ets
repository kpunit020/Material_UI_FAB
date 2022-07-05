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


import { CommonProperties } from './fabCommonProperties'

namespace FabExtendedModel {
  const DEFAULT_FAB_LABEL: string | Resource = 'Add'
  const DEFAULT_FONT_COLOR: ResourceColor = Color.White
  const DEFAULT_FONT_STYLE: FontStyle = FontStyle.Normal
  const DEFAULT_FONT_SIZE: number | string | Resource = '24fp'
  const DEFAULT_FONT_WEIGHT: FontWeight = FontWeight.Bold
  const DEFAULT_TEXT_PADDING: Padding = { left: '20vp', right: '20vp' }
  const DEFAULT_FAB_MAX_WIDTH: Length = '200vp'
  const DEFAULT_BORDER: BorderOptions = { radius: '16vp' }
  const DEFAULT_ICON_SIZE: SizeOptions = { height: '24vp', width: '24vp' }
  const DEFAULT_ICON_PADDING: Padding = { left: '20vp', right: '-8vp' }

  export class Model extends CommonProperties {
    private fabLabel: string | Resource = DEFAULT_FAB_LABEL
    private fontColor: ResourceColor = DEFAULT_FONT_COLOR
    private fontStyle: FontStyle = DEFAULT_FONT_STYLE
    private fontSize: number | string | Resource = DEFAULT_FONT_SIZE
    private fontWeight: FontWeight = DEFAULT_FONT_WEIGHT
    private textPadding: Padding = DEFAULT_TEXT_PADDING
    private fabMaxWidth: Length = DEFAULT_FAB_MAX_WIDTH

    constructor() {
      super()
      this.setBorder(DEFAULT_BORDER)
      this.iconSize = DEFAULT_ICON_SIZE
      this.iconPadding = DEFAULT_ICON_PADDING
    }

    getFabLabel(): string | Resource {
      return this.fabLabel
    }

    setFabLabel(fabLabel: string | Resource): Model {
      this.fabLabel = (fabLabel != null && fabLabel != undefined) ? fabLabel : DEFAULT_FAB_LABEL
      return this
    }

    getFontColor(): ResourceColor {
      return this.fontColor
    }

    setFontColor(fontColor: ResourceColor): Model {
      this.fontColor = (fontColor != null && fontColor != undefined) ? fontColor : DEFAULT_FONT_COLOR
      return this
    }

    getFontStyle(): FontStyle {
      return this.fontStyle
    }

    setFontStyle(fontStyle: FontStyle): Model {
      this.fontStyle = (fontStyle != null && fontStyle != undefined) ? fontStyle : DEFAULT_FONT_STYLE
      return this
    }

    getFontSize(): number | string | Resource {
      return this.fontSize
    }

    setFontSize(fontSize: number | string | Resource): Model {
      this.fontSize = (fontSize != null && fontSize != undefined) ? fontSize : DEFAULT_FONT_SIZE
      return this
    }

    getFontWeight(): FontWeight {
      return this.fontWeight
    }

    setFontWeight(fontWeight: FontWeight): Model {
      this.fontWeight = (fontWeight != null && fontWeight != undefined) ? fontWeight : DEFAULT_FONT_WEIGHT
      return this
    }

    getTextPadding(): Padding{
      return this.textPadding
    }

    setTextPadding(textPadding: Padding): Model {
      this.textPadding = (textPadding != null && textPadding != undefined) ? textPadding : DEFAULT_TEXT_PADDING
      return this
    }

    getFabMaxWidth(): Length {
      return this.fabMaxWidth
    }

    setFabMaxWidth(fabMaxWidth: Length): Model {
      this.fabMaxWidth = (fabMaxWidth != null && fabMaxWidth != undefined) ? fabMaxWidth : DEFAULT_FAB_MAX_WIDTH
      return this
    }
  }
}

export { FabExtendedModel }