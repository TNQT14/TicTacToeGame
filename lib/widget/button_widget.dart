import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/bloc/game_bloc.dart';

OutlinedButton buttonWidget(BuildContext context){
  return OutlinedButton.icon(onPressed: (){
    context.read<GameBloc>().add(ClearGame());
  },
      icon: const Icon(Icons.replay),
      label: Text("Reset",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.red,
      side: const BorderSide(width: 2.0, color: Colors.red),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      )
    ),
  );
}