import 'package:abstract_factory_design_pattern/models/iactivity_indicator.dart';
import 'package:abstract_factory_design_pattern/models/islider.dart';
import 'package:abstract_factory_design_pattern/models/iswitch.dart';
import 'package:abstract_factory_design_pattern/models/widgets_factory.dart';

class CupertinoWidgetsFactory implements IWidgetsFactory {
  @override
  IActivityIndicator createActivityIndicator() {
    return IosActivityIndicator();
  }

  @override
  ISlider createSlider() {
    return IosSlider();
  }

  @override
  ISwitch createSwitch() {
    return IosSwitch();
  }

  @override
  String getTitle() {
    return 'Cupertino Widgets';
  }

}