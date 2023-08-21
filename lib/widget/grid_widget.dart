import 'package:flutter/material.dart';

import 'boderFun.dart';

Widget gridWidget(){
  return GridView.count(
    primary: false,
    physics: const NeverScrollableScrollPhysics(),
    padding: const EdgeInsets.all(20),
    crossAxisSpacing: 0,
    mainAxisSpacing: 0,
    crossAxisCount: 3,
    shrinkWrap: true,
    children: <Widget>[
      for(int i = 0; i<= 8; i++)
        Container(
          padding: const EdgeInsets.all(8),
          decoration: boderFun(i),
        ),
    ],
  );
}