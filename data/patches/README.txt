# Sample config to patch files in ROM. 
# Supports %here%, %smali%, %smali_classes2%, %res% directives to point to some directories
# *** Possible directives ***
# 1. appfile (or extrafile for extra) - the name of apk/extra file to patch
# 2. device - specify the device string to search patches. To exclude device use ! (!aries -> patch is not for aries)
# 3. replaceinall - replace the string in all smali files of decompiled apk
# 4. replaceinfile - replaces the string in specified file with another string
# 5. replaceinsmali - searches for defined smali file by it's name and replaces a string in found smali file with another string
# 6. methodreplace - replace a method in smali file with your method read from file
# 7. addmethod - add new method (read from file) to the end of smali file
# 8. replaceinmethod - replace one string with another one in the defined smali and method from it
# 9. copyfile - copy file
# 10. copy - copy directory
# 11. delete - delete file/directory
# 12. manifest - replace string in AndroidManifest.xml (apk will be forced to resign than)
#
# Example usage of all these directives:
#
#appfile <DeskClock.apk>;
#device "!aries";
#manifest "android:protectionLevel="signature"" "android:protectionLevel="normal"";
#copy "%here%/smali" "%smali%";
#replaceinsmali "ClockTextView.smali" ""miuiex"" ""miuiex-light"";
#replaceinfile "%smali%/com/android/providers/contacts/t9/r.smali" "invoke-static {v4}, Lcom/android/providers/contacts/t9/f;->b(C)C" "invoke-static {v4}, Lcom/android/providers/contacts/t9/T9miuipro;->formatCharToT9(C)C";
#methodreplace "%smali%/com/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder.smali" ".method private confirmRestrictPermission()Z" "%here%/methods/confirmRestrictPermission.m";
#replaceinall "yyyy-MM-dd" "d.M.yyyy";
#addmethod "%smali%/com/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder.smali" "%here%/methods/newMethodFile.m";
#replaceinmethod "%smali%/com/android/settings/KeySettings.smali" ".method public onCreate(Landroid/os/Bundle;)V" ""android.intent.action.ASSIST"" ""android.intent.action.MAIN"";
#etc.
