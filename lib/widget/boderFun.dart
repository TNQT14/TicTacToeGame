import 'package:flutter/material.dart';

boderFun(int i){
  switch(i){
    case 0:
      return const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(12)),
        border: Border(
          bottom: BorderSide(),
        ),
      );
    case 1:
      return const BoxDecoration(
        color: Colors.white,
        border: Border(
          left: BorderSide(),
          right: BorderSide(),
        ),
      );
    case 2:
      return const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topRight: Radius.circular(12)),
        border: Border(
          bottom: BorderSide(),
        ),
      );
    case 3:
      return const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(),
          bottom: BorderSide(),
        ),
      );
    case 4:
      return const BoxDecoration(
        color: Colors.white,
        border: Border(
          right: BorderSide(),
          left: BorderSide(),
          top: BorderSide(),
          bottom: BorderSide(),
        ),
      );
    case 5:
      return const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(),
          bottom: BorderSide(),
        ),
      );
    case 6:
      return const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12)),
        border: Border(
          top: BorderSide(),
          left: BorderSide(),
        ),
      );
    case 7:
      return const BoxDecoration(
        color: Colors.white,
        border: Border(
          right: BorderSide(),
          left: BorderSide(),
        ),
      );
    case 8:
      return const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(12)),
        border: Border(
          top: BorderSide(),
          left: BorderSide(),
        ),
      );
  }
}