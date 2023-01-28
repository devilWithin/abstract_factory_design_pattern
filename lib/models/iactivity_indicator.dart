import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class IActivityIndicator {
  Widget build();
}

class AndroidActivityIndicator implements IActivityIndicator {
  @override
  Widget build() {
    return CircularProgressIndicator(
      backgroundColor: const Color(0xFFECECEC),
      valueColor: AlwaysStoppedAnimation<Color>(
        Colors.black.withOpacity(0.65),
      ),
    );
  }
}

class IosActivityIndicator implements IActivityIndicator {
  @override
  Widget build() {
    return const CupertinoActivityIndicator();
  }
}