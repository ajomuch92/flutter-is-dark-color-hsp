# Flutter Is Dark Color HSP


This package helps to determine if a color is dark tone or light tone. It's useful to use a contrast color (as you can see on demo image) with other. It's based on HSP color model, you can read more about it [here](http://alienryderflex.com/hsp.html).

<img src="https://raw.githubusercontent.com/ajomuch92/flutter-is-dark-color-hsp/master/assets/demo.gif" width="200" height="429"/>

## Instalation
Include `flutter_is_dark_color_hsp` in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_is_dark_color_hsp: version
```

## Usage and Example

To use this package, just import it into your file and enjoy it.

```dart
import 'package:flutter_is_dark_color_hsp/flutter_is_dark_color_hsp.dart';

...

Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    color: _color
  ),
  width: MediaQuery.of(context).size.width * 0.6,
  height: 100,
  child: Center(
    child: Text(
      'Hello World',
      style: TextStyle(
        color: isDarkHsp(_color)? Colors.white: Colors.black,
        fontSize: 32
      ),
    ),
  ),
)

...
```

You could use **isDarkHsp** method to determine if is dark color tone or use **isLightHsp** to determine if is a light color tone
