#! /bin/bash
aaptpath="/Users/DonSiu/android-sdk-macosx/build-tools/22.0.1"
savepath="/Users/DonSiu/desktop/AppShield"
desktop="/Users/DonSiu/desktop/"
w="com.AppShield.apk"
mkdir $savepath

res="com.webshield.appshield"
echo "package name is $res"

    for i in {1..10};
        do 
        adb shell monkey -p $res -c android.intent.category.LAUNCHER 1
        adb shell monkey --monitor-native-crashes --throttle 1000 -p com.webshield.appshield -v 1000 >> "AppShield"_#"$i".txt
        adb shell cat /proc/meminfo $res -d | grep Mem >> "AppShield"memory_#"$i".txt
        adb shell sleep 8
        adb shell monkey -p com.phoenix.compass -c android.intent.category.LAUNCHER 1
        adb shell monkey --monitor-native-crashes --throttle 1000 -p com.phoenix.compass -v 1000
        adb shell sleep 1800

    done

    adb logcat | grep appshield > "AppShieldLog".txt

break
    
    