import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_flutter_assessment/core/di/injection.dart';
import 'package:recast_flutter_assessment/core/utils/ui_sizes.dart';
import 'package:recast_flutter_assessment/features/home/presentation/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const RecastFlutterAssessmentApp());
}

class RecastFlutterAssessmentApp extends StatelessWidget {
  const RecastFlutterAssessmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(UiSizes.screenWidth, UiSizes.screenHeight),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Platform.isAndroid
              ? SafeArea(
                  top: false,
                  child: HomeScreen(),
                )
              : HomeScreen(),
        ),
      ),
    );
  }
}
