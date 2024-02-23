

abstract class LoginEvent {}

class LoginEventTogglePassword extends LoginEvent {}

class LoginEventSubmit extends LoginEvent {}

class LoginEventInitial extends LoginEvent {
  final String? userName;
  LoginEventInitial({this.userName});
}
