import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class ISlider {
  Widget build(double value, ValueSetter<double> onChanged);
}

class AndroidSlider implements ISlider {
  @override
  Widget build(double value, ValueSetter<double> onChanged) {
    return Slider(
      activeColor: Colors.black,
      inactiveColor: Colors.grey,
      max: 100.0,
      value: value,
      onChanged: onChanged,
    );
  }
}

class IosSlider implements ISlider {
  @override
  Widget build(double value, ValueSetter<double> onChanged) {
    return CupertinoSlider(
      max: 100.0,
      value: value,
      onChanged: onChanged,
    );
  }
}
