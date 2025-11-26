import 'package:toonies/features/auth/presentation/utils/export.dart';

class FormBloc extends Bloc<FormScreenEvent, AppFormState> {
  FormBloc() : super(const AppFormState()) {
    on<InitEvent>(_initState);
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<FormSubmitEvent>(_onFormSubmitted);
  }

  final formKey = GlobalKey<FormState>();

  Future<void> _initState(InitEvent event, Emitter<AppFormState> emit) async {
    emit(state.copyWith(formKey: formKey));
  }

  Future<void> _onEmailChanged(
    EmailChanged event,
    Emitter<AppFormState> emit,
  ) async {
    emit(
      state.copyWith(
        email: BlocFormItem(
          value: event.email.value,
          error: event.email.value.isValidEmail
              ? null
              : 'Please enter a valid email',
        ),
        formKey: formKey,
      ),
    );
  }

  Future<void> _onPasswordChanged(
    PasswordChanged event,
    Emitter<AppFormState> emit,
  ) async {
    emit(
      state.copyWith(
        password: BlocFormItem(
          value: event.password.value,
          error: event.password.value.isValidPassword
              ? null
              : 'Password must be 8-100 characters long',
        ),
        formKey: formKey,
      ),
    );
  }

  Future<void> _onFormSubmitted(
    FormSubmitEvent event,
    Emitter<AppFormState> emit,
  ) async {
    if (state.formKey!.currentState!.validate()) {
      login(state.email.value, state.password.value);
    }
  }
}
