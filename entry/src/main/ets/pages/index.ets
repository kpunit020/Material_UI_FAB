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

import { FAB_extended, FAB_regular, FabType, FabExtendedModel, FabRegularModel } from '@ohos/materialfab'

@Entry
@Component
struct ListExample {
  model_SMALL: FabRegularModel.Model = new FabRegularModel.Model().setFabType(FabType.SMALL)
  model_MEDIUM: FabRegularModel.Model = new FabRegularModel.Model()
  model_LARGE: FabRegularModel.Model = new FabRegularModel.Model().setFabType(FabType.LARGE)
  model_extended: FabExtendedModel.Model = new FabExtendedModel.Model()

  aboutToAppear() {
    this.model_SMALL.setPosition({ x: '20vp', y: '30vp' })
    this.model_SMALL.setBackgroundColor(Color.Green)

    this.model_MEDIUM.setPosition({ x: '290vp', y: '30vp' })
    this.model_MEDIUM.setBackgroundColor(Color.Red)

    this.model_LARGE.setPosition({ x: '250vp', y: '630vp' })
    this.model_LARGE.setBackgroundColor(Color.Orange)

    this.model_extended.setPosition({ x: '20vp', y: '630vp' }).setFabIcon($r('app.media.add_icon'))
  }

  private arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  @State editFlag: boolean = false
  @State count: number = 1

  build() {
    Column() {
      Column() {
        List({ space: 20, initialIndex: 0 }) {
          ForEach(this.arr, (item) => {
            ListItem() {
              Text('' + item)
                .width('100%')
                .height(100)
                .fontSize(16)
                .textAlign(TextAlign.Center)
                .borderRadius(10)
                .backgroundColor(0xFFFFFF)
            }.editable(true)
          }, item => item)
        }
        .listDirection(Axis.Vertical)
        .divider({ strokeWidth: 2, color: 0xFFFFFF, startMargin: 20, endMargin: 20 })
        .edgeEffect(EdgeEffect.None)
        .chainAnimation(false)
        .onScrollIndex((firstIndex: number, lastIndex: number) => {
          console.info('first' + firstIndex)
          console.info('last' + lastIndex)
        })
        .editMode(this.editFlag)
        .onItemDelete((index: number) => {
          console.info(this.arr[index] + 'Delete')
          this.arr.splice(index, 1)
          console.info(JSON.stringify(this.arr))
          this.editFlag = false
          return true
        })
        .width('90%')
      }.width('100%')

      FAB_regular({
        model: this.model_SMALL,
        onClick: (event) => {
          AlertDialog.show({ message: 'You clicked SMALL fab' })
        }
      })

      FAB_regular({
        model: this.model_MEDIUM,
        onClick: (event) => {
          AlertDialog.show({ message: 'You clicked MEDIUM fab' })
        }
      })

      FAB_regular({
        model: this.model_LARGE,
        onClick: (event) => {
          AlertDialog.show({ message: 'You clicked LARGE fab' })
        }
      })

      FAB_extended({
        model: this.model_extended,
        onClick: (event) => {
          AlertDialog.show({ message: 'You clicked extended fab' })
        }
      })


    }.width('100%').height('100%').backgroundColor(0xDCDCDC).padding({ top: 5 })
  }
}
