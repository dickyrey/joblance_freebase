import 'package:flutter/material.dart';
import 'package:joblance_firebase/src/common/const.dart';

Container buildShimmerContainer({
    double width = 150,
    double height = 5,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Const.radius),
        color: Colors.white,
      ),
    );
  }
