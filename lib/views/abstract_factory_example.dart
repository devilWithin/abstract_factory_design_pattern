import 'package:flutter/material.dart';

import '../models/cupertino_widgets_factory.dart';
import '../models/iactivity_indicator.dart';
import '../models/islider.dart';
import '../models/iswitch.dart';
import '../models/material_widgets_factory.dart';
import '../models/widgets_factory.dart';
import '../widgets/factory_selection.dart';

class AbstractFactoryExample extends StatefulWidget {
  const AbstractFactoryExample();

  @override
  _AbstractFactoryExampleState createState() => _AbstractFactoryExampleState();
}

class _AbstractFactoryExampleState extends State<AbstractFactoryExample> {
  final List<IWidgetsFactory> widgetsFactoryList = [
    MaterialWidgetsFactory(),
    CupertinoWidgetsFactory(),
  ];

  int _selectedFactoryIndex = 0;

  late IActivityIndicator _activityIndicator;

  late ISlider _slider;
  double _sliderValue = 50.0;
  String get _sliderValueString => _sliderValue.toStringAsFixed(0);

  late ISwitch _switch;
  bool _switchValue = false;
  String get _switchValueString => _switchValue ? 'ON' : 'OFF';

  @override
  void initState() {
    super.initState();
    _createWidgets();
  }

  void _createWidgets() {
    _activityIndicator =
        widgetsFactoryList[_selectedFactoryIndex].createActivityIndicator();
    _slider = widgetsFactoryList[_selectedFactoryIndex].createSlider();
    _switch = widgetsFactoryList[_selectedFactoryIndex].createSwitch();
  }

  void _setSelectedFactoryIndex(int? index) {
    setState(() {
      _selectedFactoryIndex = index!;
      _createWidgets();
    });
  }

  void _setSliderValue(double value) {
    setState(() {
      _sliderValue = value;
    });
  }

  void _setSwitchValue(bool value) {
    setState(() {
      _switchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FactorySelection(
            widgetsFactoryList: widgetsFactoryList,
            selectedIndex: _selectedFactoryIndex,
            onChanged: _setSelectedFactoryIndex,
          ),
          const SizedBox(height: 8),
          Text(
            'Widgets showcase',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 8),
          Text(
            'Process indicator',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const SizedBox(height: 8),
          _activityIndicator.build(),
          const SizedBox(height: 16),
          Text(
            'Slider ($_sliderValueString%)',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const SizedBox(height: 8),
          _slider.build(_sliderValue, _setSliderValue),
          const SizedBox(height: 16),
          Text(
            'Switch ($_switchValueString)',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const SizedBox(height: 8),
          _switch.build(
            value: _switchValue,
            onChanged: _setSwitchValue,
          ),
        ],
      ),
    );
  }
}