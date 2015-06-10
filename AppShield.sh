#! /bin/bash
adbpath="/home/don/Public/android-sdk-linux/platform-tools"
w="com.AppShield.apk"
crashpath="Monkeycrash"
sucesspath="MonkeySuccess"
error_str="Monkey aborted due to error"
sleeptime="10"

avd="-s emulator-5558" 
mkdir $crashpath;
mkdir $sucesspath;
#avd="-d" 
#442device
test1="jp.ne.shira.csv.viewer"
test2="cn.kuwo.player"
test3="com.appyown.contactsbackuprestore"
test4="netgenius.bizcal"
test5="cn.wps.moffice_eng"
test6="com.idea.backup.smscontacts"
test7="com.nuomi"
test8="com.outlook.Z7"
test9="net.IntouchApp"
test10="com.my.mail"
test11="com.joodioapps.DocToPdf"
test12="com.lps.beyond2.hcawestflorida"
test13="com.globile.mycontactbackup"
test14="com.ijinshan.kbackup"
test15="net.appatomic.documentsmanager"
test16="com.aor.droidedit"
test17="com.jecelyin.editor"
test18="never.slave.again.pdf.modify"
test19="com.dataviz.docstogo"
test20="joa.zipper.editor"

    for i in {8..10};
        do 
        # $adbpath/adb $avd shell monkey -p $res -c android.intent.category.LAUNCHER 1

         $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test1 -v 1000 >> "$test1"_#"$i".txt
         $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test1"memory_#"$i".txt
         $adbpath/adb $avd shell sleep $sleeptime

	
         $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test2 -v 1000 >> "$test2"_#"$i".txt
         $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test2"memory_#"$i".txt
         $adbpath/adb $avd shell sleep $sleeptime

         $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test3 -v 1000 >> "$test3"_#"$i".txt
         $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test3"memory_#"$i".txt
         $adbpath/adb $avd shell sleep $sleeptime

         $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test4 -v 1000 >> "$test4"_#"$i".txt
         $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test4"memory_#"$i".txt
         $adbpath/adb $avd shell sleep $sleeptime

         $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test5 -v 1000 >> "$test5"_#"$i".txt
         $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test5"memory_#"$i".txt
         $adbpath/adb $avd shell sleep $sleeptime

         $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test6 -v 1000 >> "$test6"_#"$i".txt
         $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test6"memory_#"$i".txt
         $adbpath/adb $avd shell sleep $sleeptime

         $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test7 -v 1000 >> "$test7"_#"$i".txt
         $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test7"memory_#"$i".txt
         $adbpath/adb $avd shell sleep $sleeptime

         $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test8 -v 1000 >> "$test8"_#"$i".txt
         $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test8"memory_#"$i".txt
         $adbpath/adb $avd shell sleep $sleeptime

         $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test9 -v 1000 >> "$test9"_#"$i".txt
         $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test9"memory_#"$i".txt
         $adbpath/adb $avd shell sleep $sleeptime

         $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test10 -v 1000 >> "$test10"_#"$i".txt
         $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test10"memory_#"$i".txt
         $adbpath/adb $avd shell sleep $sleeptime

         $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test11 -v 1000 >> "$test11"_#"$i".txt
         $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test11"memory_#"$i".txt
         $adbpath/adb $avd shell sleep $sleeptime

         $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test12 -v 1000 >> "$test12"_#"$i".txt
         $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test12"memory_#"$i".txt
         $adbpath/adb $avd shell sleep $sleeptime

         $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test13 -v 1000 >> "$test13"_#"$i".txt
         $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test13"memory_#"$i".txt
         $adbpath/adb $avd shell sleep $sleeptime

         $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test14 -v 1000 >> "$test14"_#"$i".txt
         $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test14"memory_#"$i".txt
         $adbpath/adb $avd shell sleep $sleeptime

         $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test15 -v 1000 >> "$test15"_#"$i".txt
         $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test15"memory_#"$i".txt
         $adbpath/adb $avd shell sleep $sleeptime

         $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test16 -v 1000 >> "$test16"_#"$i".txt
         $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test16"memory_#"$i".txt
         $adbpath/adb $avd shell sleep $sleeptime

        $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test17 -v 1000 >> "$test17"_#"$i".txt
        $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test17"memory_#"$i".txt
        $adbpath/adb $avd shell sleep $sleeptime

        $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test18 -v 1000 >> "$test18"_#"$i".txt
        $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test18"memory_#"$i".txt
        $adbpath/adb $avd shell sleep $sleeptime

        $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test19 -v 1000 >> "$test19"_#"$i".txt
        $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test19"memory_#"$i".txt
        $adbpath/adb $avd shell sleep $sleeptime

        $adbpath/adb $avd shell monkey --monitor-native-crashes --throttle 100 -p $test20 -v 1000 >> "$test20"_#"$i".txt
        $adbpath/adb $avd shell cat /proc/meminfo $res -d | grep Mem >> "$test20"memory_#"$i".txt
        $adbpath/adb $avd shell sleep $sleeptime

    done

        $adbpath/adb logcat -d | grep appshield > "AppShieldLog".txt
	$adbpath/adb logcat | grep AndroidRuntime > "AppShieldRunTime".txt

for j in {1..10}
    do
    if [ -z "$app_status" ]
     then
       app_status="Not Found"
     fi
    
    if [ "$app_status" = "Not Found" ]
     then
      echo $app_name >> "$crashpath/$j"
        continue
     fi
 
     is_success=true

     while read log_line
     do
       if [[ $log_line == *"$error_str"* ]]
       then
         echo "$app_name" >> "$crashpath/$j"
         is_success=false
         break
       fi
     done < "$savepath/$res"_#"$j".txt
 
     if $is_success
     then
       echo "$app_name" >>"$sucesspath/$j"
     fi
    done
    
    
