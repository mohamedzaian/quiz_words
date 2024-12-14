import 'package:flutter/material.dart';

import '../features/home/data/model/drawer_item_model.dart';

List <DrawerItemModel> drawerItems =
    [
      DrawerItemModel(name: 'Categories', icon:  Icon(Icons.category)),
      DrawerItemModel(name: 'Leaderboard', icon: Icon(Icons.emoji_events)),
      DrawerItemModel(name: 'Profile', icon: Icon(Icons.person)),
      DrawerItemModel(name: 'Sound Effects', icon: Icon(Icons.volume_up)),
      DrawerItemModel(name: 'Remove Ads', icon: Icon(Icons.credit_card)),
      DrawerItemModel(name: 'Update', icon: Icon(Icons.update)),
      DrawerItemModel(name: 'Share', icon: Icon(Icons.share)),
      DrawerItemModel(name: 'Rate', icon: Icon(Icons.star)),
      DrawerItemModel(name: 'Contact Us', icon: Icon(Icons.email)),
      DrawerItemModel(name: 'Privacy Policy', icon: Icon(Icons.info)),

    ];