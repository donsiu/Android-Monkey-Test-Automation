#! /bin/bash
aaptpath="/Users/DonSiu/android-sdk-macosx/build-tools/22.0.1"
savepath="/Users/DonSiu/desktop/Monkeylog5"
desktop="/Users/DonSiu/desktop/"
crashpath="$desktop/Monkeycrash5"
sucesspath="$desktop/MonkeySuccess5"
error_str="Monkey aborted due to error"

mkdir $savepath
mkdir $crashpath
mkdir $sucesspath

 for w in `ls | grep -v script | tail -101`; 
	
	do echo $w;
	adb install -r $w
	# adb -s $PHONESERIAL shell "svc wifi enable"
	echo $w "installed"
	res=`$aaptpath/aapt dump badging $w | grep package | sed 's/package: name=''//g' | awk '{print $1}' | sed 's/'\''/ /g'| sed -e 's/^[ \t]*//'`
	echo "package name is $res"

	for i in {1..5};
		do 
	    adb shell monkey --monitor-native-crashes --throttle 100 -p "$res" -v 1000 >> "$savepath/$res"_#"$i".txt
		adb shell cat /proc/meminfo $res -d | grep Mem >> "$savepath/$res"memory_#"$i".txt
		app_status=$(adb shell ps | grep $res)
	    adb shell am force-stop "$res" 
	done

	adb uninstall $res
	echo "$res uninstall"

	for j in {1..5}
	do
	if [ -z "$app_status" ]
     then
       app_status="Not Found"
     fi
	
	if [ "$app_status" = "Not Found" ]
     then
      echo $app_name >> "$crashpath/$res"
        continue
     fi
 
     is_success=true

     while read log_line
     do
       if [[ $log_line == *"$error_str"* ]]
       then
         echo "$app_name" >> "$crashpath/$res"
         is_success=false
         break
       fi
     done < "$savepath/$res"_#"$j".txt
 
     if $is_success
     then
       echo "$app_name" >>"$sucesspath/$res"
     fi
    done
 done

