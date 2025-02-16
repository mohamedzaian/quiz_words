import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz/core/colors.dart';
import 'package:quizz/cubits/add_user_cubit/add_user_cubit.dart';
import 'package:quizz/cubits/answer_cubit/answer_cubit.dart';
import 'package:quizz/cubits/data_cubit/get_data_cubit.dart';
import 'package:quizz/cubits/get_user_data/get_user_data_cubit.dart';
import 'package:quizz/cubits/levels_cubit/levels_cubit.dart';
import 'package:quizz/features/splash/presentation/splash_screen.dart';
import 'package:get/get.dart';
import 'package:quizz/firebase_options.dart';

void main() async {
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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: brownColor,
      systemNavigationBarColor: brownColor,
    ));

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LevelsCubit(),
        ),
        BlocProvider(
          create: (context) => DataCubit(),
        ),
        BlocProvider(
          create: (context) => AnswerCubit(),
        ),
        BlocProvider(
          create: (context) => AddUserCubit(),
        ),
        BlocProvider(
          create: (context) => GetUserDataCubit(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
