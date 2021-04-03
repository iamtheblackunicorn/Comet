<p align="center">
 <img src="https://github.com/iamtheblackunicorn/Comet/raw/main/assets/images/banner.png"/>
</p>

# COMET :ringed_planet:

*A small news-reading app.* :ringed_planet:

## About :books:

This app is a curious little app! I am tired of checking several news websites each day to get my news, so I decided to write an app to help me with that! This is that app. This app focusses on the bits of news I care about!

## Download :inbox_tray:

- *Dark Planet* (v.1.0.0): [Download](https://github.com/iamtheblackunicorn/Comet/releases/download/v.1.0.0/Comet-v1.0.0-DarkPlanet-Release.apk) (16.7 MB)

- *Dark Debris* (v.1.1.0): [Download](https://github.com/iamtheblackunicorn/Comet/releases/download/v.1.1.0/Comet-v1.1.0-DarkDebris-Release.apk) (16.7 MB)


## Building :hammer:

Make sure that you have the following programs installed:

- Flutter SDK
- Dart SDK
- Android Studio
- Android SDK
- Java JDK
- Xcode
- Make
- Git

After you have installed these, run this command to generate a keystore for the app.

```bash
keytool -genkey -v -keystore key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
```

After having done that, move the keystore to `android/app` and fill in the fields for the keystore password in the file `android/app/key.properties`.

Finally, run these commands:

```bash
$ flutter pub get
$ flutter build apk
```

You have now generated a release build of *Comet*.

## Extending the supported languages :book:

*Comet* is localized for German and English. To add a language, simply create a filed called `app_languagecode.arb` in `lib/l10n` where `languagecode` represents the languagecode for the language you want to add. If it were Spanish for example, you would create a file called `app_es.arb`.
Copy and paste the contents from one of the other `*.arb` files and edit the strings accordingly.
Finally, add this line in the list `supportedLocales` in the file `lib/main.dart`.

```dart
const Locale('languagecode', ''),
```

`languagecode` represents the language you are translating for.

## Changelog :black_nib:

### Version 1.0.0: Dark Planet

- initial release
- bare-bones

### Version 1.1.0: Dark Debris

- improved performance
- massive visual changes
- tron-like font
- localized for German and English
- minor fixes

## Note :scroll:

- *Comet* :ringed_planet: by Alexander Abraham :black_heart: a.k.a. *"The Black Unicorn"* :unicorn:
- licensed under the MIT license
