import 'package:toonies/features/auth/presentation/utils/export.dart';
import 'package:toonies/features/auth/presentation/widgets/form_field.dart'
    as ff;

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Validation')),
      body: BlocBuilder<FormBloc, AppFormState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(30),
            child: Form(
              key: state.formKey,
              child: Column(
                children: [
                  ff.FormField(
                    hintText: 'Email',
                    onChange: (val) {
                      BlocProvider.of<FormBloc>(
                        context,
                      ).add(EmailChanged(email: BlocFormItem(value: val!)));
                    },
                    validator: (val) {
                      return state.email.error;
                    },
                  ),
                  ff.FormField(
                    hintText: 'Password',
                    onChange: (val) {
                      BlocProvider.of<FormBloc>(context).add(
                        PasswordChanged(password: BlocFormItem(value: val!)),
                      );
                    },
                    validator: (val) {
                      return state.password.error;
                    },
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<FormBloc>(
                        context,
                      ).add(const FormSubmitEvent());
                    },
                    child: const Text('SUBMIT'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
