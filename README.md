# Scanning Effect

[![License: MIT][license_badge]][license_link]

Scanning Effect to wrap around the camera

Demo Image
![Alt Text](https://media0.giphy.com/media/x45QOkremgScssAhN6/giphy.gif)

## Demo Code

Wrap the ScanningEffect widget around your widget

```Dart
@override
Widget build(BuildContext context) {
  return ScanningEffect(
    scanningColor: Colors.red,
    borderLineColor: Colors.green,
    delay: Duration(seconds: 1),
    duration: Duration(seconds: 2),
    child: Container(
      child: SizedBox(),
    ),
  );
}
```

You can set the custom config base on these param:
- scanningColor: The color of the scanning animation
- borderLineColor: The color of the border line
- scanningHeightOffset: The percent of scanning animation with the view height
- delay: The delay between each animation
- duration: The length of time this animation should last.
- scanningLinePadding: The padding of the scanning animation

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
