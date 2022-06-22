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
  export class Model extends CommonProperties {
    private fabLabel : string | Resource = 'Add'
    private fontColor : ResourceColor = Color.White
    private fontStyle : FontStyle = FontStyle.Normal
    private fontSize : number | string | Resource = '24vp'
    private fontWeight : FontWeight = FontWeight.Bold
    private textPadding : Padding = {left : '20vp', right : '20vp'}
    private fabMaxWidth : number = 200

    constructor(){
      super()
      this.setBorder({radius : 16})
      this.iconSize = {height : '24vp', width : '24vp'}
      this.iconPadding = {left : 20, right : -8}
    }

    getFabLabel() : string | Resource {
      return this.fabLabel
    }

    setFabLabel(fabLabel : string | Resource) : Model {
      this.fabLabel = (fabLabel != null && fabLabel != undefined) ? fabLabel : 'Add'
      return this
    }

    getFontColor() : ResourceColor {
      return this.fontColor
    }

    setFontColor(fontColor : ResourceColor) : Model {
      this.fontColor = (fontColor != null && fontColor != undefined) ? fontColor : Color.White
      return this
    }

    getFontStyle() : FontStyle {
      return this.fontStyle
    }

    setFontStyle(fontStyle : FontStyle) : Model {
      this.fontStyle = (fontStyle != null && fontStyle != undefined)? fontStyle : FontStyle.Normal
      return this
    }

    getFontSize() : number | string | Resource {
      return this.fontSize
    }

    setFontSize(fontSize : number | string | Resource) : Model {
      this.fontSize = (fontSize != null && fontSize != undefined)? fontSize : '24vp'
      return this
    }

    getFontWeight() : FontWeight {
      return this.fontWeight
    }

    setFontWeight(fontWeight : FontWeight) : Model {
      this.fontWeight = (fontWeight != null && fontWeight != undefined)? fontWeight : FontWeight.Bold
      return this
    }

    getTextPadding() : Padding{
      return this.textPadding
    }

    setTextPadding(textPadding : Padding) : Model {
      this.textPadding = (textPadding != null && textPadding != undefined)? textPadding : {left : '20vp', right : '20vp'}
      return this
    }

    getFabMaxWidth() : number {
      return this.fabMaxWidth
    }

    setFabMaxWidth(fabMaxWidth : number) : Model {
      this.fabMaxWidth = (fabMaxWidth != null && fabMaxWidth != undefined)? fabMaxWidth : 200
      return this
    }

  }
}

export {FabExtendedModel}