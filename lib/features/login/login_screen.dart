import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mendmate_homepage/custom_widgets/custom_alert_dialog.dart';
import 'package:mendmate_homepage/features/home/homepage.dart';
import 'package:mendmate_homepage/features/login/loginbloc/login_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../util/value_validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late bool _isObscure = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(
          milliseconds: 100,
        ), () {
      User? currentUser = Supabase.instance.client.auth.currentUser;
      if (currentUser != null && currentUser.appMetadata['role'] == 'admin') {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const Homepage(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginBloc(),
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccessState) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const Homepage()),
                (route) => false,
              );
            } else if (state is LoginFailureState) {
              showDialog(
                context: context,
                builder: (context) => CustomAlertDialog(
                  title: 'Failed',
                  description: state.message,
                  primaryButton: 'Ok',
                ),
              );
            }
          },
          builder: (context, state) {
            return Row(
              children: [
                Expanded(
                  child: Center(
                    child: SizedBox(
                      width: 350,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              'Welcome back',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 35),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Welcome back Admin!!! please enter the details',
                              style: TextStyle(
                                  fontSize: 15, fontStyle: FontStyle.italic),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                                style: TextStyle(fontWeight: FontWeight.w500),
                                'Email'),
                            TextFormField(
                              controller: _emailController,
                              validator: emailValidator,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter your email',
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                                style: TextStyle(fontWeight: FontWeight.w500),
                                'Password'),
                            TextFormField(
                              controller: _passwordController,
                              validator: notEmptyValidator,
                              obscureText: !_isObscure,
                              decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText: 'Enter the Password',
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {});
                                        _isObscure = !_isObscure;
                                      },
                                      icon: Icon(
                                        _isObscure
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ))),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            if (state is LoginLoadingState)
                              const Center(
                                child: CircularProgressIndicator(),
                              ),
                            if (state is! LoginLoadingState)
                              ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    BlocProvider.of<LoginBloc>(context).add(
                                      LoginEvent(
                                        email: _emailController.text.trim(),
                                        password:
                                            _passwordController.text.trim(),
                                      ),
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 52, 47, 155),
                                ),
                                child: const Text(
                                  'Sign in',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                              )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 238, 234, 252),
                    child: Center(
                        child: SizedBox(
                      width: 200,
                      child: Column(
                        children: [
                          const SizedBox(
                            width: 100,
                            height: 200,
                          ),
                          Image.network(
                              'https://i.postimg.cc/SKxzYY5T/logo-transparent-png.png'),
                          const Text(
                            'Mendmate',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          )
                        ],
                      ),
                    )),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
