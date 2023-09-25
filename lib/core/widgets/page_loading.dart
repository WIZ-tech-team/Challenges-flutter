import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PageLoading extends StatelessWidget {
  const PageLoading({
    Key? key,
    this.color = Colors.white,
    this.size = 60,
  }) : super(key: key);
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Container(
        height: Get.height / 2,
        width: Get.width / 2,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
