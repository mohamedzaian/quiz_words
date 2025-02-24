import 'package:flutter/material.dart';
import 'package:quizz/core/custom_bold_text.dart';
import 'package:quizz/core/list_drawer_items.dart';

import '../../../../core/images.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 250,

            width: double.infinity,
            child: DrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.orangeAccent, 
                      Colors.white,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  spacing: 10,
                  children: [
                    Image.asset(Images.drawerLogo, ),



                  ]
                )
            ),
          ),
         Expanded(
           child: ListView.separated(
             separatorBuilder: (context , i )
               {
                 return SizedBox(height: 20,);
               },
               itemCount: drawerItems.length,
               itemBuilder: (context , i)
           {
             return Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16.0),
               child: Row(
                 children: [
                   drawerItems[i].icon,
                   SizedBox(width: 20),
                   CustomBoldText(text: drawerItems[i].name, fontSize: 24 , color: Color(0xff4D2501),),

                 ],
               ),
             );
           
           }),
         )
        ],
      ),
    );
  }
}
