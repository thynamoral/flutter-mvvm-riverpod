import 'package:client/core/theme/app_color_pallete.dart';
import 'package:client/views/sign_up/local_widgets/sign_up_button.dart';
import 'package:client/widgets/ui/app_text_field.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
    formKey.currentState?.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 32),
                Column(
                  spacing: 16,
                  children: [
                    AppTextField(controller: nameController, hintText: 'Name'),
                    AppTextField(
                      controller: emailController,
                      hintText: 'Email',
                    ),
                    AppTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      isObscureText: true,
                    ),
                    SignUpButton(),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.titleSmall,
                        text: 'Already have an account? ',
                        children: [
                          TextSpan(
                            text: 'Sign In',
                            style: TextStyle(
                              color: AppColor.gradient2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
