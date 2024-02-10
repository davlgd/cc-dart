# Clever Cloud Dart example

This is a Dart example for the Clever Cloud platform. It's a simple "Hello, world!" web server. First, you need [`clever-tools`](https://github.com/CleverCloud/clever-tools) installed and your account connected:

```bash
npm install -g clever-tools
clever login
```

Then, clone this repository and deploy the app with the following commands:

```bash
clever create -t node myDartApp
clever env import < .env
clever deploy && clever open
```
