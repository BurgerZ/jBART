Patches configs:

1. method_patches.conf
This config is for method replacement patches (replace the whole method with new one).
------
{
   "apkname0.apk":[
      {
         "ApkName":"apkname0.apk",
         "SmaliPath":"smali/com/miui/home/launcher/gadget",
         "SmaliFileName":"",
         "MethodName":".method public getDate()Ljava/lang/String;",
         "MethodFilePath":"apkname0.apk",
         "MethodFileName":"getDate.m",
         "Enabled":"true"
      },
      {
         "ApkName":"apkname0.apk",
         "SmaliPath":"smali/com/miui/home/launcher/gadget",
         "SmaliFileName":"",
         "MethodName":".method public gF()Ljava/lang/String;",
         "MethodFilePath":"apkname0.apk",
         "MethodFileName":"gF.m",
         "Enabled":"true"
      }
   ],
   "apkname1.apk":[
      {
         "ApkName":"apkname1.apk",
         "SmaliPath":"smali/miui/resourcebrowser/controller/online",
         "SmaliFileName":"",
         "MethodName":".method public getDownloadUrl(Ljava/lang/String;Z)Lmiui/resourcebrowser/controller/online/RequestUrl;",
         "MethodFilePath":"apkname1.apk",
         "MethodFileName":"getDownloadUrl.m",
         "Enabled":"false"
      }
   ],
   "apkname.jar":[
      {
         "ApkName":"apkname.jar",
         "SmaliPath":"smali/com/miui/smalipath",
         "SmaliFileName":"",
         "MethodName":".method gF()L",
         "MethodFilePath":"pathToMethod",
         "MethodFileName":"gF.m",
         "Enabled":"false"
      }
   ]
}
------
"ApkName":"apkname.apk" - The name of apk(jar) file
"SmaliPath":"smali/com/miui/home/launcher/gadget" - The path to smali folder. If this field is not empty, MethodName will be searched in this smali folder (in every smali file in this folder)
"SmaliFileName":"" - the path to smali file. If this field is not empty, MethodName will be searched in this smali file
"MethodName":".method public getDate()Ljava/lang/String;" - method name to replace
"MethodFilePath":"apkname.apk" - the folder name (inside the "patches" folder), where the new method is located
"MethodFileName":"getDate.m" - the new method file name
"Enabled":"true" - enabled or disabled patch. If false - this patch will not be processed

2. string_patches.conf
This config is for string replacement patches (replace the original string with new one).
------
{
   "apkname0.apk":[
	  {
         "ApkName":"apkname0.apk",
         "SmaliFileName":"smali/com/android/providers/contacts/t9/one.smali",
         "OriginalString":"invoke-static {v4}, Lcom/android/providers/contacts/t9/f;->b(C)C",
         "ReplaceString":"invoke-static {v4}, Lcom/android/providers/contacts/t9/MyT9Class;->formatCharToT9(C)C",
         "Enabled":"true"
      },
	  {
         "ApkName":"apkname.apk",
         "SmaliFileName":"smali/com/android/providers/contacts/t9/two.smali",
         "OriginalString":"invoke-static {v4}, Lcom/android/providers/contacts/t9/h;->b(C)C",
         "ReplaceString":"invoke-static {v4}, Lcom/android/providers/contacts/t9/MyT9Class;->formatCharToT9(C)C",
         "Enabled":"true"
      },
      {
         "ApkName":"apkname.apk",
         "SmaliFileName":"smali/com/android/providers/contacts/t9/three.smali",
         "OriginalString":"invoke-static {v4}, Lcom/android/providers/contacts/t9/T9Utils;->d(C)C",
         "ReplaceString":"invoke-static {v4}, Lcom/android/providers/contacts/t9/MyT9Class;->formatCharToT9(C)C",
         "Enabled":"true"
      }
   ],
   "apkname.jar":[
      {
         "ApkName":"apkname.jar",
         "SmaliFileName":"smali/miui/util/filename.smali",
         "OriginalString":"http://api.comm.miui.com/",
         "ReplaceString":"http://mysite.com/",
         "Enabled":"true"
      }
   ],
   "apkname1.apk":[
      {
         "ApkName":"apkname1.apk",
         "SmaliFileName":"smali/com/android/mms/data/smaliname.smali",
         "OriginalString":"original_string_to_replace_in_given_smali_file",
         "ReplaceString":"replacement_string",
         "Enabled":"true"
      }
   ]
}
------
"ApkName":"apkname1.apk" - The name of apk(jar) file
"SmaliFileName":"smali/com/android/mms/data/smaliname.smali" - the path to smali file
"OriginalString":"original_string_to_replace_in_given_smali_file" - the string to search (and replace)
"ReplaceString":"replacement_string" - replacement string
"Enabled":"true" - enabled or disabled patch. If false - this patch will not be processed