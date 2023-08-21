import 'package:flutter/material.dart';
import 'package:tictactoe/constants/asset_constants.dart';

import '../../widget/button_widget.dart';
import '../../widget/grid_widget.dart';
class WebScreen extends StatelessWidget {
  final List<int>? tiles;
  final double height;
  final double wight;
  final String mgs;
  final bool isMe;
  const WebScreen({
    super.key,
    this.tiles,
    required this.height,
    required this.wight,
    required this.mgs,
    required this.isMe
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wight,
      height: height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(backGround),
              fit: BoxFit.cover
          )
      ),
      child:
      Column(
        children: <Widget>[
          Text("Tic Tac Toe Game"),
          const Spacer(),
          Text(mgs),
          const Spacer(),
          gridWidget(),
          const Spacer(),
          buttonWidget(context),
        ],
      ),
    );
  }
}