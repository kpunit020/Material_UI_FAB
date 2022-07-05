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
import { FabType } from './fabTypes'
import { sizeSpecs } from './fab_regular_specs'

namespace FabRegularModel {
  const DEFAULT_FAB_TYPE: FabType = FabType.MEDIUM
  const DEFAULT_FAB_ICON: ResourceStr = $r('app.media.add_icon')

  export class Model extends CommonProperties {
    private fabType: FabType = DEFAULT_FAB_TYPE

    constructor() {
      super()
      this.fabType = DEFAULT_FAB_TYPE
      this.fabIcon = DEFAULT_FAB_ICON
      this.setFabSpecs(this.fabType)
    }

    private setFabSpecs(fabType: FabType): void {
      this.setFabSize(sizeSpecs[fabType].containerSize)
      this.setIconSize(sizeSpecs[fabType].iconSize)
      this.setBorder(sizeSpecs[fabType].border)
    }

    setFabType(fabType: FabType): Model {
      if (fabType != FabType.SMALL && fabType != FabType.MEDIUM && fabType != FabType.LARGE) {
        this.fabType = DEFAULT_FAB_TYPE
      }
      else {
        this.fabType = fabType
      }
      this.setFabSpecs(fabType)
      return this
    }

    getFabType(): FabType {
      return this.fabType
    }
  }
}

export { FabRegularModel }