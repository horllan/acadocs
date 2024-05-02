import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../bloc/authentication_bloc.dart';
import '../../../../config/routes/app_pages.dart';
import '../../../../constants/app_constants.dart';
import '../../../../screens/home.dart';
import '../../../../screens/sign_up.dart';

class LoginComponent extends StatelessWidget {
  const LoginComponent({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.type,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final String type;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Center(
              child: Text(
                appName,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: Colors.purple,
                ),
              )),
          const SizedBox(height: 20),
          Text(type, style: Theme.of(context).textTheme.displaySmall,),
          const SizedBox(height: 20),
          const Text('Email address'),
          const SizedBox(height: 10),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your email',
            ),
          ),
          const SizedBox(height: 20),
          const Text('Password'),
          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your password',
            ),
            obscureText: false,
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {},
            child: const Text(
              'Forgot password?',
              style: TextStyle(
                color: Colors.deepPurple,
              ),
            ),
          ),
          const SizedBox(height: 20),
          BlocConsumer<AuthenticationBloc, AuthenticationState>(
            listener: (context, state) {
              if (state is AuthenticationSuccessState) {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  HomeScreen.id,
                      (route) => false,
                );
              } else if (state is AuthenticationFailureState) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const AlertDialog(
                        content: Text('error'),
                      );
                    });
              }
            },
            builder: (context, state) {
              return SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<AuthenticationBloc>(context).add(
                      SignUpUser(
                        emailController.text.trim(),
                        passwordController.text.trim(),
                      ),
                    );
                  },
                  child: Text(
                    state is AuthenticationLoadingState ? '.......' : 'Login',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("New to Acadocs? "),
              GestureDetector(
                onTap: () {Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const SignupScreen()));
                },
                child: const Text(
                  'SignUp',
                  style: TextStyle(
                    color: Colors.deepPurple,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Visit as guest ",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(
                width: 5.0,
              ),
              GestureDetector(
                onTap: () {Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                },
                child: const Text(
                  'Guest',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
