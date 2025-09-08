```
//cmd to build AAB(Android App Bundle) for specific flavor 

flutter build appbundle --flavor prod -t lib/main_prod.dart

//The `.aab` file will be in `build/app/outputs/bundle/<flavor>Release/app-<flavor>-release.aab`
```

## To fix the overflow status bar in new android devices (targetSDK 35 >=)

```xml
//add in every theme style.xml
<item name="android:windowOptOutEdgeToEdgeEnforcement" tools:targetApi="35">true</item>
```