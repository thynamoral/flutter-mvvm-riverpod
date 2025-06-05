import 'package:client/core/theme/app_color_pallete.dart';
import 'package:client/widgets/app_tap_effect.dart';
import 'package:client/widgets/ui/app_text_field.dart';
import 'package:client/widgets/ui/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:client/views/sign_up/sign_up_view.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    formKey.currentState?.validate();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              Column(
                spacing: 16,
                children: [
                  AppTextField(hintText: 'Email', controller: emailController),
                  AppTextField(
                    hintText: 'Password',
                    controller: passwordController,
                    isObscureText: true,
                  ),
                  AuthButton(text: 'Sign In', onPressed: () {}),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 4,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      AppTapEffect(
                        onTap:
                            () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpView(),
                              ),
                            ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: AppColor.gradient2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
