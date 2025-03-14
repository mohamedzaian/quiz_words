import 'package:flutter/material.dart';

import '../../../../core/custom_bold_text.dart';
import '../../../../core/icon_lock.dart';
import '../../../level/data/models/user_model.dart';

class ContainerLevel extends StatelessWidget {
  const ContainerLevel({
    super.key,
    required this.levels,
    required this.index,

  });

final int index;
  final List<Level> levels;

  @override
  Widget build(BuildContext context) {
    bool isLocked = index >= levels.length ;
    final total = isLocked ? 0 : levels[index].total;
    bool isPassed = total  >=  3 && !isLocked;

    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFD850D),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(2, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: isLocked ?  IconLock() :     Stack(
        alignment: Alignment.center,
        children: [
          CustomBoldText(
              text: '${index + 1} ', fontSize: 30),
        isPassed ?  Positioned(
            bottom: 0,
            right: 0,
            child:  Icon(
              Icons.check_circle,
              size: 30,
              color: Color(0xff65DB12),
            ),
          ) : SizedBox(),
        ],
      ) ,
    );
  }
}
