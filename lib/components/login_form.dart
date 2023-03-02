import 'package:doctorapp/utils/config.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  bool obscurePass = true;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        TextFormField(
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          cursorColor: Config.primaryColor,
          decoration: const InputDecoration(
              hintText: 'Email Address',
              labelText: "Email",
              alignLabelWithHint: true,
              prefixIcon: Icon(Icons.email_outlined),
              prefixIconColor: Config.primaryColor),
        ),
        Config.spaceSmall,
        TextFormField(
          controller: _passController,
          keyboardType: TextInputType.visiblePassword,
          cursorColor: Config.primaryColor,
          obscureText: obscurePass,
          decoration: const InputDecoration(
            hintText: 'Your Password',
            labelText: "Password",
            alignLabelWithHint: true,
            prefixIcon: Icon(Icons.lock_outline),
            prefixIconColor: Config.primaryColor,
            // suffixIcon: IconButton(
            //     onPressed: () {},
            //     icon: true
            //         ? Icon(
            //             Icons.visibility_off_outlined,
            //             color: Colors.black,
            //           )
            //         : Icon(
            //             Icons.visibility_outlined,
            //             color: Config.primaryColor,
            //           ))
          ),
        ),
      ],
    ));
  }
}
