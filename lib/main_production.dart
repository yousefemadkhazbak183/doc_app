import 'package:doc_app/core/di/dependency_injection.dart';
import 'package:doc_app/core/rotuing/app_router.dart';
import 'package:doc_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//production
void main() async{
  setUpGitIt();

  // This Line is used to fix texts being hidden font bug in flutter_screenutil in release mode.

  // This Line is used to fix texts being hidden,
  // font bug in flutter_screenutil in release mode.

  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
