import 'package:flutter/material.dart';
import 'package:demo_integration_test/custom_text_field.dart';
import 'package:demo_integration_test/dashboard.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: _formKey,
            child: ListView(
              // padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                const SizedBox(height: 60),
                const FlutterLogo(size: 80),
                const SizedBox(height: 20),
                Center(
                  child: Text('Login',
                      style: Theme.of(context).textTheme.headline1),
                ),
                const SizedBox(height: 20),
                const CustomTextFormField(
                  key: Key("Email"),
                  label: "Email",
                ),
                const SizedBox(height: 20),
                const CustomTextFormField(
                  key: Key("Password"),
                  label: "Password",
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    key: const Key("Login"),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Dashboard(),
                          ),
                        );
                      }
                    },
                    child: const Text("Login"),
                  ),
                ),
                // const SizedBox(height: 20),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: const Text("Registration"),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
