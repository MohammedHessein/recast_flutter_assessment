import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_flutter_assessment/core/di/injection.dart';
import 'package:recast_flutter_assessment/core/router/app_router.dart';
import 'package:recast_flutter_assessment/core/router/app_routes.dart';
import 'package:recast_flutter_assessment/core/utils/app_colors.dart';
import 'package:recast_flutter_assessment/core/utils/ui_sizes.dart';

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
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.primaryColor,
          brightness: Brightness.dark,
          useMaterial3: true,
        ),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: AppRoutes.homeScreen,
        builder: (context, child) {
          return SafeArea(
            child: Platform.isAndroid
                ? SafeArea(
                    top: false,
                    child: child!,
                  )
                : child!,
          );
        },
      ),
    );
  }
}
