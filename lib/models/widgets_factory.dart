import 'iactivity_indicator.dart';
import 'islider.dart';
import 'iswitch.dart';

abstract class IWidgetsFactory {
  String getTitle();
  IActivityIndicator createActivityIndicator();
  ISlider createSlider();
  ISwitch createSwitch();
}