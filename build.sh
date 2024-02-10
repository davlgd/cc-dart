export PATH="$PATH:/home/bas/.local/bin/dart-sdk/bin/"

mkdir bin
dart pub get
dart compile exe src/app.dart -o bin/app
