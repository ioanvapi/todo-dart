# todo-dart

Simple ToDo dart web app with github hosting (Settings -> Pages)

Create initial dart app from a dart template (web-simple)

```bash
# run this without the existing folder todo-dart
dart create -t web-simple todo-dart

# runt his when folder already exists 
cd todo-dart
dart create -t web-simple . --force

# Compile the Dart Code to JavaScript in /docs folder
dart compile js -o docs/main.dart.js web/main.dart
```

## Access the app

`https://<your-username>.github.io/todo-dart/`

## Use GitHub Actions for Deployment





Uses [`package:web`](https://pub.dev/packages/web) to interop with JS and the DOM.

## Running and building

To run the app,
activate and use [`package:webdev`](https://dart.dev/tools/webdev):

```
dart pub global activate webdev
webdev serve
```

To build a production version ready for deployment,
use the `webdev build` command:

```
webdev build
```

To learn how to interop with web APIs and other JS libraries,
check out https://dart.dev/interop/js-interop.
