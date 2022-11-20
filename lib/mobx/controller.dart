import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  bool isVisible = false;

  @action
  setVisibility() {
    isVisible = !isVisible;
  }
}
