import 'package:doc_app/core/di/dependency_injection.dart';
import 'package:doc_app/core/rotuing/app_router.dart';
import 'package:doc_app/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setUpGitIt();
  runApp( DocApp(
    appRouter: AppRouter(),
  ));
}


