# todo-dart

Simple ToDo dart web app with github hosting (Settings -> Pages)

Create initial dart app from a dart template (web-simple)

```bash
# run this without the existing folder todo-dart
dart create -t web-simple todo-dart

# runt his when folder already exists 
cd todo-dart
dart create -t web-simple . --force

# eventually Compile the Dart Code to JavaScript in /docs folder
dart compile js -o docs/main.dart.js web/main.dart
```

## Deploy the App (Use GitHub Actions for Deployment)

We choose to host this app to Github Pages therefore we have created a github action where we build and push the result to a dedicated branch `gh-pages`.
This branch is configured in github project settings (-> Pages) to serve the app build files (html, js, css).

Check the `.github/workflows/deploy.yaml` file and see:

* prepare the build environment (install dart and webdev)
* build from /web to /build output folder (webdev build --output web:build) 
* use `actions-gh-pages` action to push the `./build` folder to the default branch `gh-pages`
* go to Settings -> Pages and configure 'Deploy from branch' gh-pages and folder /(root) then save
* access the url: https://<your-username>.github.io/todo-dart/ 


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
