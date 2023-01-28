import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class ISwitch {
  Widget build({required bool value, required ValueSetter<bool> onChanged});
}

class AndroidSwitch implements ISwitch {
  @override
  Widget build({required bool value, required ValueSetter<bool> onChanged}) {
    return Switch(
      activeColor: Colors.black,
      value: value,
      onChanged: onChanged,
    );
  }
}

class IosSwitch implements ISwitch {
  @override
  Widget build({required bool value, required ValueSetter<bool> onChanged}) {
    return CupertinoSwitch(
      value: value,
      onChanged: onChanged,
    );
  }
}
