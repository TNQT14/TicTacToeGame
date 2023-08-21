import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/pages/web_view/web.dart';

import 'mobile_view/mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints)
    {
      if(constraints.maxWidth<600){
        return MobileScreen(
          height: constraints.minHeight,
          wight: constraints.maxWidth,
          mgs: "abs",
          isMe: true,
        );
      }
      return WebScreen(
        height: constraints.minHeight,
        wight: constraints.maxWidth,
        mgs: "abs",
        isMe: true,
      );
    }
    );
  }
}
