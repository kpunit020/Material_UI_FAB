import {FAB_regular} from '@ohos/Material_FAB'

@Entry
@Component
struct small_FAB_Demo {
  build() {
    Column(){
      FAB_regular({
        fabIcon : $r('app.media.add_icon'),
        fabSize : 'small',
        position : {x : 100, y : 300}
      })
    }.height('100%')
  }
}