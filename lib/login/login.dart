import 'package:Quizzo/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),

      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch ,
          children:  [
              const FlutterLogo( size: 150,),
              Flexible(
                child: LoginButton(
                  color: Colors.blueAccent,
                  icon: FontAwesomeIcons.userNinja,
                  text: 'Anonymous Login',
                  loginMethod: () => AuthService().anonLogin(),
                )
              ),
              LoginButton(
                  color: Colors.cyanAccent,
                  icon: FontAwesomeIcons.google,
                  text: 'Login with google',
                  loginMethod: () => AuthService().googleLogin(),
                ),
            ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final Color? color;
  final IconData? icon;
  final String? text;
  final Function? loginMethod;

  LoginButton({
    super.key,
    this.color,
    this.icon,
    this.text,
    this.loginMethod,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: ElevatedButton.icon(
        icon: Icon(
          icon, color: Colors.white, size: 20, 
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(24),
          backgroundColor: color,
        ),
        onPressed: () => loginMethod!(),
        label: const Text("Login"),
      ),
    );
  }
}