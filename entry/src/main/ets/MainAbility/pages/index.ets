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


import {FAB_extended, FAB_regular} from '@ohos/Material_FAB'

@Entry
@Component
struct ListExample {
  private arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  @State editFlag: boolean = false
  @State count : number = 1

  build() {
    Column() {
      Column() {
        List({ space: 20, initialIndex: 0 }) {
          ForEach(this.arr, (item) => {
            ListItem() {
              Text('' + item)
                .width('100%').height(100).fontSize(16)
                .textAlign(TextAlign.Center).borderRadius(10).backgroundColor(0xFFFFFF)
            }.editable(true)
          }, item => item)
        }
        .listDirection(Axis.Vertical) //Arrangement direction
        .divider({ strokeWidth: 2, color: 0xFFFFFF, startMargin: 20, endMargin: 20 }) // Divider line
        .edgeEffect(EdgeEffect.None) // No effect when sliding to the edge
        .chainAnimation(false) // Chained animations are disabled.
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
        }).width('90%')
      }.width('100%')

      FAB_extended({
        fabIcon : $r('app.media.add_icon'),
        fabLabel : `Add`,
        onClick : () => {
          AlertDialog.show({message : "you clicked fab_extended"})
        },
        position : {x : 220, y : 670},
        backgroundColor : Color.Red

      })
//
      FAB_regular({
        fabIcon : $r('app.media.add_icon'),
        fabSize : "small",
        position : {x : 30, y : 70},
        onClick : (event) => {
          AlertDialog.show({message : "you clicked fab_small"})
        },

      })

      FAB_regular({
        fabIcon : $r('app.media.add_icon'),
        fabSize : "medium",
        position : {x : 280, y:70},
        backgroundColor : Color.Red,
        onClick : (event) => {
          AlertDialog.show({message : "you clicked fab_mid"})
        }
      })

      FAB_regular({
        fabIcon : $r('app.media.add_icon'),
        fabSize : "large",
        backgroundColor : Color.Orange,
        position : {x: 20, y : 650},
      })
    }.width('100%').height('100%').backgroundColor(0xDCDCDC).padding({ top: 5 })
  }
}
