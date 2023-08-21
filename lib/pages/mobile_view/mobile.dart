import 'package:flutter/material.dart';
import 'package:tictactoe/constants/asset_constants.dart';

import '../../widget/button_widget.dart';
import '../../widget/grid_widget.dart';
class MobileScreen extends StatelessWidget {
  final List<int>? tiles;
  final double height;
  final double wight;
  final String mgs;
  final bool isMe;
  const MobileScreen({
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
      child: Row(
        children: [
          Flexible(
            child: gridWidget(),
            flex: 2,
          ),
          Flexible(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Spacer(),
                const Spacer(),
                Text("Tic Tac Toe Game"),
                const Spacer(),
                Text(mgs),
                const Spacer(),
                buttonWidget(context),
                const Spacer(),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

