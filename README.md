
# Material_FAB

Material FAB replicates the floating action buttons(FAB) using *material design 3* specifications.

## <FAB_regular>

Implementation of Regular FAB buttons with size options as *small*, *medium* and *large*.
## Screenshots




## Attributes


| Attribute | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `fabSize` | `string` | specifies the type of FAB_regular from small, medium(**DEFAULT**) and large  |
| `fabIcon` | `ResourceStr` | specifies the resource for the icon (Default - Plus icon) |
| `iconSize` | `SizeOptions` | Give custom size to the icon |
| `position` | `Position` | Specify the position of the FAB (Default [0, 0]) |
| `backgroundColor` | `ResourceColor` | Specify the background color for the FAB (Default - Blue) |
| `border` | `BorderOptions` | give custom border to the FAB |
| `fabCustomSize` | `SizeOptions` | Give custom size for the FAB |
| `margin` | `Margin` | Give margin to the FAB |
| `rippleColor` | `ResourceColor` | Give custom size color for the ripple effect (Default - White) |
| `onClick` | `callback` | Give behaviour for the click event |



## Usage/Examples

### small FAB
![img.png](images/small_fab.png)

```
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
```

