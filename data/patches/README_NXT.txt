NXT Patches config (https://github.com/KDGDev/miui-v6-translation-for-nxt):

1. The main patch config file is "patch_data" file, placed at the root of the data/patches directory:
------
#Sample patch_data content:
include "%translation_dir%/nxt/BackupFix.ptch";
#include "%translation_dir%/nxt/CloudBackupFix.ptch";
include "%translation_dir%/nxt/CloudFix.ptch";
include "%translation_dir%/nxt/CoreFix.ptch";
include "%translation_dir%/nxt/DisVolume.ptch";
include "%translation_dir%/nxt/DownloadUiFix.ptch";
------
Each "include" node describes included patch file path (may be commented by # to skip some patches).
%translation_dir% (equals to the %patches_dir%) is the directory where "patch_data" file is placed. You can use both tags (they are equals).

2. Patch files

#Sample patch file content (BackupFix.ptch):
appfile <Backup.apk>;
replaceinfile "%smali%/com/miui/backup/ui/LocalBackupFragment.smali" "const-string v6, \"MB, \"" "const-string v6, \" МБ \"";
replaceinfile "%smali%/com/miui/backup/ui/LocalBackupFragment.smali" "const-string v6, \"KB, \"" "const-string v6, \" КБ \"";
#etc.
------
appfile - apk name to patch
------
Available patch options:
1. Replace string in smali file:
   replaceinfile "%smali%/com/miui/backup/ui/LocalBackupFragment.smali" "const-string v6, \"KB, \"" "const-string v6, \" КБ \"";
   replaceinfile "file_to_search_string" "string_to_replace" "replacement_string";
2. Replace string in all smali files:
   replaceinall "invoke-static {v4}, Lcom/android/providers/contacts/t9/f;->b(C)C" "invoke-static {v4}, Lcom/android/providers/contacts/t9/NXTUtils;->formatCharToT9(C)C"; 
   replaceinfile "string_to_replace" "replacement_string";
3. Replace method in smali file:
   methodreplace "%smali%/com/android/providers/downloads/ui/DownloadUtils.smali" "%here%/methods/downloadproviderui_formatunitfix.m" "public static" "formatUnit" "Ljava/lang/String;" "Ljava/lang/String;";
   methodreplace "file_to_search_method" "method_replacement_holder_file" "method_access" "method_name" "method_parameter_types" "method_return_types";
4. Replace resource id in smali file:
   methodstrings "%smali%/com/miui/video/HomeActivity.smali" "string" "my_video" "online_video" "" "";
   methodstrings "file_to_search_string" "resource_type" "resource_name" "resource_replace_name" "additional-1" "additional-2";
   Possible resource types: attr, drawable, mipmap, layout, anim, interpolator, xml, raw, array, bool, color, dimen, id, integer, style, string, plurals, menu.
   additional-1 in resource name will be replaced by additional-2 while patching.
   Example:
   methodstrings "%smali%/com/miui/video/HomeActivity.smali" "string" "my_video" "online_video" "" "-";
   This patch will search for R.string.my_video resource id (<string name="my_video">...</string>) in HomeActivity.smali file (res id is 0x7f...) and replace it with R.string.online_video, also "-" will be added to online_video id (0x7f...-)
5. Copy file:
   copyfile "%here%/NXTUtils.smali" "%smali%/com/android/providers/contacts/t9/NXTUtils.smali"; 
   copyfile "file_from" "file_to"; 
   
%smali% - the "smali" directory of the decompiled apk.
%here% - the directory where the patch file is located.
--------
jbart patching process:
1. Decompile file sources
2. Search for native patches (methods, strings etc.) configs, load them, patch files.
3. Search for NXT patch_data config at the repository and at the local data/patches directory, load them, patch files. Online patch_data config has maximum priority.