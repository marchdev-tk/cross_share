# cross_share

![Build](https://github.com/marchdev-tk/cross_share/workflows/build/badge.svg)
![GitHub](https://img.shields.io/github/license/marchdev-tk/cross_share)
![GitHub stars](https://img.shields.io/github/stars/marchdev-tk/cross_share?style=social)

A Flutter plugin for `launching a URL` and `sharing files` in the mobile, web and desktop platforms. Supports iOS, Android, Web, Windows, Linux and macOS.
**Note**: Sharing files supports only on iOS, Android and Web. Desktop support is under development.

## Getting Started

In order to use this plugin, add dependency in the `pubspec.yaml`:

```yaml
cross_share:
    git:
      url: https://github.com/marchdev-tk/cross_share
```

Add an import to dart file:

```dart
import 'package:cross_share/cross_share.dart';
```

### Samples

Web sample:

![Web Sample](../assets/cs_web.gif?raw=true)

<!-- Desktop sample:

![Desktop Sample](../assets/cs_desktop.gif?raw=true) -->

Mobile sample:

![Mobile Sample](../assets/cs_mobile.gif?raw=true)

### Share URL sample:

```dart
Share().shareUrl(url: 'tel:0001112223');
```

#### Supported URL schemes

The [`shareUrl`](https://www.dartdocs.org/documentation/url_launcher/latest/url_launcher/launch.html) method
takes a string argument containing a URL. This URL
can be formatted using a number of different URL schemes. The supported
URL schemes depend on the underlying platform and installed apps.

Common schemes supported:

| Scheme | Action |
|---|---|
| `http:<URL>` , `https:<URL>`, e.g. `http://flutter.dev` | Open URL in the default browser |
| `mailto:<email address>?subject=<subject>&body=<body>`, e.g. `mailto:smith@example.org?subject=News&body=New%20plugin` | Create email to <email address> in the default email app |
| `tel:<phone number>`, e.g. `tel:+1 555 010 999` | Make a phone call to <phone number> using the default phone app |
| `sms:<phone number>`, e.g. `sms:5550101234` | Send an SMS message to <phone number> using the default messaging app |

### Share File :

```dart
Share().shareFile(
    name: file.name,
    bytes: file.bytes,
    type: file.type,
);
```

where:
 * `name` is a name of the file
 * `bytes` is a byte array of file to share
 * `type` is a MIME Type of the file to share

## Feature requests and Bug reports

Feel free to post a feature requests or report a bug [here](https://github.com/marchdev-tk/cross_share/issues).
