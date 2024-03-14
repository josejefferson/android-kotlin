#!/bin/bash
cd ~/android-kotlin
./gradlew assembleDebug || exit $?
$ANDROID_SDK_ROOT/platform-tools/adb -s emulator-5554 install app/build/outputs/apk/debug/app-debug.apk
$ANDROID_SDK_ROOT/platform-tools/adb -s emulator-5554 shell am start -a android.intent.action.MAIN -n com.example.helloworld/.MainActivity