DART_VERSION=3.2.6
DEST_BIN="${HOME}/.local/bin"
FILENAME=dartsdk-linux-x64-release.zip
DART_URL=https://storage.googleapis.com/dart-archive/channels/stable/release/${DART_VERSION}/sdk/${FILENAME}

curl --create-dirs -s -L -o ${DEST_BIN}/${FILENAME} ${DART_URL}
cd ${DEST_BIN}
unzip -q ${FILENAME} -d ${DEST_BIN}
rm -f ${FILENAME}
