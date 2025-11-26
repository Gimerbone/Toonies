import 'package:toonies/features/auth/presentation/utils/export.dart';

abstract class FormScreenEvent extends Equatable {
  const FormScreenEvent();

  @override
  List<Object> get props => [];
}

class FormSubmitEvent extends FormScreenEvent {
  const FormSubmitEvent();
}

class InitEvent extends FormScreenEvent {
  const InitEvent();
}

class EmailChanged extends FormScreenEvent {
  const EmailChanged({required this.email});
  final BlocFormItem email;
  @override
  List<Object> get props => [email];
}

class PasswordChanged extends FormScreenEvent {
  const PasswordChanged({required this.password});
  final BlocFormItem password;
  @override
  List<Object> get props => [password];
}
