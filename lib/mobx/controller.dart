import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  bool isPressed = false;

  @action
  getPress() {
    isPressed = !isPressed;
  }
}
