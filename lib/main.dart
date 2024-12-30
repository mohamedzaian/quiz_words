import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz/cubits/data_cubit/get_data_cubit.dart';
import 'package:quizz/cubits/levels_cubit/levels_cubit.dart';
import 'package:quizz/features/splash/presentation/splash_screen.dart';
import 'package:get/get.dart';
import 'package:quizz/firebase_options.dart';

import 'features/home/data/repo/get_count_level.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LevelsCubit(),
        ),
        BlocProvider(
          create: (context) => DataCubit(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
