import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz/cubits/get_user_data/get_user_data_cubit.dart';
import 'package:quizz/features/home/presentation/widgets/home_drawer.dart';
import 'package:quizz/features/home/presentation/widgets/home_screen_body.dart';
import 'package:quizz/features/home/presentation/widgets/title_text.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
context.read<GetUserDataCubit>().getUserData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DrawerButton(),
        backgroundColor: Color(0xff4D2501),
        title: TitleText(),
      ),
      drawer: HomeDrawer(),
      body: const HomeScreenBody(),
    );
  }
}
