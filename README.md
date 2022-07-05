# materialfab

Material FAB replicates the floating action buttons(FAB) using *material design 3* specifications in openHarmony.

## Dependencies

For using materialfab in your app, add the below dependency in entry/package.json

```
"dependencies": {
    "@ohos/materialfab": "file:../materialfab"
  }
```

## Usage Instructions

Import all components at once

```ets
import {FAB_extended, FAB_regular, FabType, FabExtendedModel, FabRegularModel} from '@ohos/materialfab'
```

## Screenshots

![](images/sample_small_fab.gif)   ![](images/sample_medium_fab.gif)
![](images/sample_large_fab.gif)   ![](images/sample_extended_fab.gif)

## Class **CommonProperties**

### Methods

| Name | Return Type     | Description                |
| :-------- | :------- | :------------------------- |
| `setFabIcon(fabIcon: ResourceStr)` | `CommonProperties` | sets icon for the fab. |
| `getFabIcon()` | `ResourceStr` | return fab icon. |
| `setIconSize(iconSize: SizeOptions)` | `CommonProperties` | sets custom icon size. |
| `getIconSize()` | `SizeOptions` | returns icon size. |
| `setIconPadding(iconPadding: Padding)` | `CommonProperties` | sets padding to the icon. |
| `getIconPadding()` | `Padding` | return icon padding. |
| `setRippleModel(rippleModel: RippleModel.Model)` | `CommonProperties` | sets custom ripple model. |
| `getRippleModel()` | `RippleModel.Model` | return current ripple model. |
| `setFabSize(fabSize: SizeOptions)` | `CommonProperties` | sets custom fab size. |
| `getFabSize()` | `SizeOptions` | return current fab size. |
| `setBackgroundColor(backgroundColor: ResourceColor)` | `CommonProperties` | sets fab background color. |
| `getBackgroundColor()` | `ResourceColor` | return fab background color. |
| `setBorder(border: BorderOptions)` | `CommonProperties` | sets custom border for the fab. |
| `getBorder()` | `BorderOptions` | return current border specs. |
| `setPosition(position: Position)` | `CommonProperties` | sets fab position. |
| `getPosition()` | `BorderOptions` | return current position of the fab. |
| `setRippleColor(rippleColor : ResourceColor)` | `CommonProperties` | sets custom ripple color. |
| `getRippleColor()` | `ResourceColor` | return current ripple color. |

## Class **FabRegularModel.Model**

Implementation of Regular FAB buttons with size options as *SMALL*, *MEDIUM* and *LARGE*.

### Methods

| Name | Return Type     | Description                |
| :-------- | :------- | :------------------------- |
| `setFabType(fabType : FabType)` | `FabRegularModel.Model` | sets fab type. Defaults to *FabType.MEDIUM* |
| `getFabType()` | `FabType` | return current fab type. |

### FabType enum

| Name | Description                |
| :-------- | :------------------------- |
| `SMALL` | Small fab as per material design 3 specifications. |
| `MEDIUM` | Medium fab as per material design 3 specifications. |
| `LARGE` | Large fab as per material design 3 specifications. |

### Usage/Examples

#### SMALL FAB

![small_fab.png](images/small_fab.png)

```
import {FAB_regular, FabRegularModel, FabType} from '@ohos/materialfab'

@Entry
@Component
struct SMALL_fab_demo {
  model : FabRegularModel.Model = new FabRegularModel.Model().setFabType(FabType.SMALL)

  aboutToAppear(){
    this.model.setPosition({x : 100, y : 300})
  }

  build() {
    Column() {
      FAB_regular({
        model : this.model,
        onClick : (event) => {
          AlertDialog.show({ message: 'You clicked SMALL fab' })
        }
      })
    }.height('100%')
  }
}
```

#### MEDIUM FAB

![medium_fab.png](images/medium.png)

```
import {FAB_regular, FabRegularModel, FabType} from '@ohos/materialfab'

@Entry
@Component
struct MEDIUM_fab_demo {
  model : FabRegularModel.Model = new FabRegularModel.Model().setFabType(FabType.MEDIUM)

  aboutToAppear(){
    this.model.setPosition({x : 100, y : 300})
    this.model.setBackgroundColor(Color.Green)
  }

  build() {
    Column() {
      FAB_regular({
        model : this.model,
        onClick : (event) => {
          AlertDialog.show({ message: 'You clicked MEDIUM fab' })
        }
      })
    }.height('100%')
  }
}
```

#### LARGE FAB

![large_fab.png](images/large_fab.png)

```
import {FAB_regular, FabRegularModel, FabType} from '@ohos/materialfab'

@Entry
@Component
struct LARGE_fab_demo {
  model : FabRegularModel.Model = new FabRegularModel.Model().setFabType(FabType.LARGE)

  aboutToAppear(){
    this.model.setPosition({x : 100, y : 300})
    this.model.setBackgroundColor(Color.Red)
  }

  build() {
    Column() {
      FAB_regular({
        model : this.model,
        onClick : (event) => {
          AlertDialog.show({ message: 'You clicked LARGE fab' })
        }
      })
    }.height('100%')
  }
}
```

## Class **FabExtendedModel.Model**

Implementation of Extended FAB buttons with an options for addition of leading icon.

### Methods

| Name | Return Type     | Description                |
| :-------- | :------- | :------------------------- |
| `setFabLabel(fabLabel : string` or `Resource)` | `FabExtendedModel.Model` | sets label text. |
| `getFabLabel()` | `string` or `Resource` | return label text. |
| `setFontColor(fontColor : ResourceColor)` | `FabExtendedModel.Model` | sets text color. |
| `getFontColor()` | `ResourceColor` | return text color. |
| `setFontStyle(fontStyle : FontStyle)` | `FabExtendedModel.Model` | sets font style. |
| `getFontStyle()` | `FontStyle` | returns font style. |
| `setFontSize(fontSize : number` or `string` or `Resource)` | `FabExtendedModel.Model` | sets text size. |
| `getFontSize()` | `number` or `string` or `Resource` | returns current text size. |
| `setFontWeight(fontWeight : FontWeight)` | `FabExtendedModel.Model` | sets font weight. |
| `getFontWeight()` | `FontWeight` | returns font weight. |
| `setTextPadding(textPadding : Padding)` | `FabExtendedModel.Model` | sets text padding. |
| `getTextPadding()` | `Padding` | return current text padding. |
| `setFabMaxWidth(fabMaxWidth : number)` | `FabExtendedModel.Model` | sets maximum allowed width for fab. |
| `getFabMaxWidth()` | `number` | return maximum allowed width for the fab. |

### Usage/Examples

#### With Leading Icon

![with_icon.png](images/extended_with_icon.png)

```
import {FAB_extended, FabExtendedModel} from '@ohos/materialfab'

@Entry
@Component
struct extended_fab_demo {
  model : FabExtendedModel.Model = new FabExtendedModel.Model()

  aboutToAppear(){
    this.model.setPosition({x : 100, y : 300})
    this.model.setFabIcon($r('app.media.add_icon'))
  }

  build() {
    Column() {
      FAB_extended({
        model : this.model,
        onClick : (event) => {
          AlertDialog.show({ message: 'You clicked extended fab' })
        }
      })
    }.height('100%')
  }
}
```

#### Without Leading Icon

![without_icon.png](images/extended_without_icon.png)

```
import {FAB_extended, FabExtendedModel} from '@ohos/materialfab'

@Entry
@Component
struct extended_fab_demo {
  model : FabExtendedModel.Model = new FabExtendedModel.Model()

  aboutToAppear(){
    this.model.setPosition({x : 100, y : 300})
    this.model.setBackgroundColor(Color.Gray)
  }

  build() {
    Column() {
      FAB_extended({
        model : this.model,
        onClick : (event) => {
          AlertDialog.show({ message: 'You clicked extended fab' })
        }
      })
    }.height('100%')
  }
}
```

## Compatibility

Supports OpenHarmony API version 9

## Code Contribution

If you find any problems during usage, you can submit
an [Issue](https://github.com/Applib-OpenHarmony/Material_UI_FAB/issues) to us. Of course, we also welcome you to send
us [PR](https://github.com/Applib-OpenHarmony/Material_UI_FAB/pulls).

## Open source License

This project is based on [Apache License 2.0](https://github.com/kpunit020/Material_UI_FAB/blob/main/LICENSE), please
enjoy and participate in open source freely.
