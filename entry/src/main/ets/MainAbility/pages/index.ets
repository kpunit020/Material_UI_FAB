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

//      FAB_extended({
//        fontColor : Color.White,
//        fabIcon : $r('app.media.add_icon'),
//        fabLabel : `Add`,
//        onClick : () => {
//          AlertDialog.show({message : "you clicked fab_extended"})
//          console.log('fired from fab_extended')
//        },
//
//        position : {x : 20, y : 670},
//      })
//
//      FAB_regular({
//        fabIcon : $r('app.media.add_icon'),
//        fabSize : "small",
//        position : {x : 20, y : 50},
//        onClick : (event) => {
//          AlertDialog.show({message : "you clicked fab_small"})
//          console.log('fired from fab_small')
//        }
//      })

      FAB_regular({
        fabIcon : $r('app.media.add_icon'),
        //fabSize : "medium",
        position : {x : 280, y:690},
        backgroundColor : Color.Red,
        onClick : (event) => {
          AlertDialog.show({message : "you clicked fab_mid"})
          console.log('fired from fab_mid')
        }
      })

//      FAB_regular({
//
//        fabIcon : $r('app.media.add_icon'),
//        fabSize : "large",
//        backgroundColor : Color.Orange,
//        position : {x: 230, y : 50},
//
//      })
    }.width('100%').height('100%').backgroundColor(0xDCDCDC).padding({ top: 5 })
  }
}
