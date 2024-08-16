
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laundry_app/Loginpage/Login%20Api/LoginProvider.dart';
import 'package:laundry_app/RegistionPage/API/service.dart';
import 'package:laundry_app/Splashscreens/splashscreen1.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
    
      builder: (_ , child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => UserProvider()),
           ChangeNotifierProvider(create: (context) => LoginProvider())

          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: '',
          
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: child,
          ),
        );
      },
      child:SplashScreen()
      
    );
  }
}
