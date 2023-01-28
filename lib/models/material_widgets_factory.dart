import 'package:abstract_factory_design_pattern/models/iactivity_indicator.dart';
import 'package:abstract_factory_design_pattern/models/islider.dart';
import 'package:abstract_factory_design_pattern/models/iswitch.dart';
import 'package:abstract_factory_design_pattern/models/widgets_factory.dart';

class MaterialWidgetsFactory implements IWidgetsFactory {
  @override
  IActivityIndicator createActivityIndicator() {
    return AndroidActivityIndicator();
  }

  @override
  ISlider createSlider() {
    return AndroidSlider();
  }

  @override
  ISwitch createSwitch() {
    return AndroidSwitch();
  }

  @override
  String getTitle() {
    return 'Android Widgets';
  }
}
