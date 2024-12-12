import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  const DrawerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  IconButton(onPressed: (){

    }, icon: Icon(Icons.menu),
      color: Colors.white,
    );
  }
}
