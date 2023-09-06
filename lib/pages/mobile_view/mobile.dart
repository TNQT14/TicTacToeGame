import 'package:flutter/material.dart';
import 'package:tictactoe/constants/asset_constants.dart';
import 'package:tictactoe/widget/boderFun.dart';

import '../../widget/button_widget.dart';
import '../../widget/grid_widget.dart';
class MobileScreen extends StatelessWidget {
  final List<int>? tiles;
  final double height;
  final double width;
  final String msg;
  final bool isMe;
  const MobileScreen({
    super.key,
    this.tiles,
    required this.height,
    required this.width,
    required this.msg,
    required this.isMe
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backGround),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        children: [
          // Flexible(
          //   // child: gridWidget(),
          //   flex: 2,
          // ),
          Flexible(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Spacer(),
                titleWidget(),
                const Spacer(),
                msgWidget(msg),
                const Spacer(),
                GridViewWidget(tiles: tiles,),
                const Spacer(),
                buttonWidget(context),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

