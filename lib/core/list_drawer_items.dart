import 'package:flutter/material.dart';

import '../features/home/data/model/drawer_item_model.dart';

List <DrawerItemModel> drawerItems =
    [
      DrawerItemModel(name: 'Categories', icon:  Icon(Icons.category, size: 35,color: Color(0xff4D2501),)),
      DrawerItemModel(name: 'Leaderboard', icon: Icon(Icons.emoji_events , size: 35,color: Color(0xff4D2501))),
      DrawerItemModel(name: 'Profile', icon: Icon(Icons.person ,size: 35,color: Color(0xff4D2501))),
      DrawerItemModel(name: 'Sound Effects', icon: Icon(Icons.volume_up ,size: 35,color: Color(0xff4D2501))),
      DrawerItemModel(name: 'Remove Ads', icon: Icon(Icons.credit_card ,size: 35,color: Color(0xff4D2501))),
      DrawerItemModel(name: 'Update', icon: Icon(Icons.update , size: 35,color: Color(0xff4D2501))),
      DrawerItemModel(name: 'Share', icon: Icon(Icons.share , size: 35,color: Color(0xff4D2501))),
      DrawerItemModel(name: 'Rate', icon: Icon(Icons.star , size: 35,color: Color(0xff4D2501))),
      DrawerItemModel(name: 'Contact Us', icon: Icon(Icons.email , size: 35,color: Color(0xff4D2501))),
      DrawerItemModel(name: 'Privacy Policy', icon: Icon(Icons.info , size: 35,color: Color(0xff4D2501))),

    ];