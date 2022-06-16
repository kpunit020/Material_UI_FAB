
# Material_FAB

Material FAB replicates the floating action buttons(FAB) using *material design 3* specifications in openHarmony.

## Dependencies
For using Material_FAB in your app, add the below dependency in entry/package.json

```
"dependencies": {
    "@ohos/Material_FAB": "file:../Material_FAB"
  }
```

## Usage Instructions

Import all components at once

```ets
import { FAB_regular, FAB_extended }  from '@ohos/Material_FAB'
```


## Screenshots

![](images/sample_small_fab.gif)   ![](images/sample_medium_fab.gif)
![](images/sample_large_fab.gif)   ![](images/sample_extended_fab.gif)

## <FAB_regular>

Implementation of Regular FAB buttons with size options as *small*, *medium* and *large*.

### Attributes

#### Icon properties
| Attribute | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `fabIcon` | `ResourceStr` | specifies the resource for the icon. Defaults to `+` icon. |
| `iconSize` | `SizeOptions` | Give custom size to the icon. |

#### Container properties
| Attribute | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `fabSize` | `string` | specifies the type of FAB_regular from small, medium and large. Defaults to *medium*.  |
| `position` | `Position` | Specify the position of the FAB. Defaults to [0, 0]. |
| `backgroundColor` | `ResourceColor` | Specify the background color for the FAB. Defaults to *Blue*. |
| `border` | `BorderOptions` | give custom border to the FAB. |
| `fabCustomSize` | `SizeOptions` | Give custom size for the FAB. |
| `margin` | `Margin` | Give margin to the FAB. |


#### Other properties
| Attribute | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `rippleColor` | `ResourceColor` | Give custom size color for the ripple effect. Defaults to *White*. |
| `onClick` | `(event?: ClickEvent) => void` | Give behaviour for the click event. |


### Usage/Examples

#### Small FAB
![small_fab.png](images/small_fab.png)

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

#### Medium FAB
![medium_fab.png](images/medium.png)

```
import {FAB_regular} from '@ohos/Material_FAB'

@Entry
@Component
struct medium_FAB_Demo {
  build() {
    Column(){
      FAB_regular({
        fabIcon : $r('app.media.add_icon'),
        fabSize : 'medium',
        position : {x : 100, y : 300},
        backgroundColor : Color.Green
      })
    }.height('100%')
  }
}
```

#### Large FAB
![large_fab.png](images/large_fab.png)

```
import {FAB_regular} from '@ohos/Material_FAB'

@Entry
@Component
struct large_FAB_Demo {
  build() {
    Column(){
      FAB_regular({
        fabIcon : $r('app.media.add_icon'),
        fabSize : 'large',
        position : {x : 100, y : 300},
        backgroundColor : Color.Red,
        onClick : (event) => {
          console.log("clicked at x: "+ event.x + " , y: " + event.y)
        }
      })
    }.height('100%')
  }
}
```


## <FAB_extended>

Implementation of Extended FAB buttons with an options for addition of leading icon.
### Attributes

#### Icon properties
| Attribute | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `fabIcon` | `ResourceStr` | Specifies the resource for the icon. |
| `iconPadding` | `Padding` | Sets custom padding to the icon. |
| `iconSize` | `SizeOptions` | Specifies size of the icon. Defaults to *24X24*. |

#### Text properties
| Attribute | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `fabLabel` | `string` *or*  `Resource` | Give text value for the FAB. |
| `fontColor` | `ResourceColor` |  Sets font color. Defaults to *Blue*. |
| `fontStyle` | `FontStyle` | Sets font style. |
| `fontSize` | `string` *or*  `number` *or*  `Resource` | specifies size for the text. Defaults to *24*. |
| `fontWeight` | `FontWeight` | specifies font weight. Defaults to *FontWeight.Bold* |
| `textPadding` | `Padding` | Sets padding to the text. |

#### Container properties
| Attribute | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `border` | `BorderOptions` | Specifies custom border properties. |
| `backgroundColor` | `ResourceColor` | Give color for the container background. Defaults to *Blue*. |
| `position` | `Position` | Specifies the position for the FAB. Defaults to [0, 0]. |
| `fabMaxWidth` | `number` | Specifies the maximum allowed width for the FAB. Defaults to 200 |
| `margin` | `Margin` | Give margin to the FAB |



#### Other properties
| Attribute | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `rippleColor` | `ResourceColor` | Specifies the color for the ripple effect. Defaults to *White*. |
| `onClick` | `(event?: ClickEvent) => void` | Callback for the behaviour on click event |



### Usage/Examples

#### With Leading Icon
![with_icon.png](images/extended_with_icon.png)
```
import {FAB_extended} from '@ohos/Material_FAB'

@Entry
@Component
struct FAB_extend_Demo {
  build() {
    Column(){
      FAB_extended({
        fabIcon : $r('app.media.add_icon'), // provide only if need icon before text
        fabLabel : `Add`,
        position : {x : 100, y : 300},
      })
    }.height('100%')
  }
}
```
#### Without Leading Icon
![without_icon.png](images/extended_without_icon.png)
```
import {FAB_extended} from '@ohos/Material_FAB'

@Entry
@Component
struct FAB_extend_Demo {
  build() {
    Column(){
      FAB_extended({
        fabLabel : `Add`,
        backgroundColor : Color.Gray,
        position : {x : 100, y : 300},
      })
    }.height('100%')
  }
}
```


## Compatibility
Supports OpenHarmony API version 8

## Code Contribution
If you find any problems during usage, you can submit an [Issue](https://github.com/Applib-OpenHarmony/Material_UI_FAB/issues) to us. Of course, we also welcome you to send us [PR](https://github.com/Applib-OpenHarmony/Material_UI_FAB/pulls).

## Open source License
This project is based on [Apache License 2.0](https://github.com/Applib-OpenHarmony/Material_UI_FAB/blob/main/LICENSE), please enjoy and participate in open source freely.
