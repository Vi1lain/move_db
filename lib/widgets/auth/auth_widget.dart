
import 'package:flutter/material.dart';
import 'package:move_db/Theme/app_buttom_style.dart';

import '../main_screen/main_screen_widget.dart';

class AuthWidget extends StatefulWidget {
  AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text(
                style: TextStyle(color: Colors.white),
                "Login to your account")),
        body: ListView(
          children: [
            _HeaderWidget(),
          ],
        ));
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 25),
          Text(
              style: AppButtomStyle.textStyleBlack,
              textAlign: TextAlign.justify,
              'bla-bla-bla-bla-bla-bla-bla-bla-bla-bla-'
              'bla-bla-bla-bla-bla-bla-bla-bla-bla-'
              'bla-bla-bla-bla-bla-bla-bla-bla-bla-'
              'bla-bla-bla-bla-bla-bla-bla-bla-bla-'
              'bla-bla-bla-bla-bla-bla-bla-bla-bla- '
              'bla-bla-bla-bla-bla-bla-bla-bla-bla-'
              'bla-bla-bla-bla-bla-bla-bla-bla-'),
          TextButton(
              onPressed: () {},
              child:
                  Text(style: AppButtomStyle.textStyleLightBlue, "Register")),
          Text(
              style: AppButtomStyle.textStyleBlack,
              'bla-bla-bla-bla-bla-bla-bla-bla-'
              'bla-bla-bla-bla-bla-bla-bla-bla-'
              'bla-bla-bla-bla-bla-bla-bla-bla-'),
          TextButton(
              onPressed: () {},
              child: Text(
                  style: AppButtomStyle.textStyleLightBlue, "Verify email")),
          const SizedBox(height: 25),
          _FormWidget(),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController();
  final _passwordController = TextEditingController();
  String? errorText = null;
  _auth() {

    //String _loginText = _loginTextController.text;
    //String _resetPassword = _passwordController.text;
    String _loginText = "admin";
    String _resetPassword = "admin";
    if (_loginText == "admin" && _resetPassword == "admin") {

      //Navigator.pushNamed(context,'/main_screen');
      Navigator.pushReplacementNamed(context,'/main_screen');

    } else {
      errorText= "error";
    }
    setState(() {});
  }

  _restPassword() {
    print("reset password!");
  }

  @override
  Widget build(BuildContext context) {


    InputDecoration textFieldDecorator = const InputDecoration(
        fillColor: Colors.red,
        focusColor: Colors.red,
        hoverColor: Colors.red,
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.lightBlue)),
        isCollapsed: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        border: OutlineInputBorder());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(style: AppButtomStyle.textStyleBlack, "Username"),
        const SizedBox(height: 5),
        TextField(
          controller: _loginTextController,
          decoration: textFieldDecorator,
        ),
        const SizedBox(height: 15),
        Text(style: AppButtomStyle.textStyleBlack, "Password"),
        const SizedBox(height: 5),
        TextField(
          controller: _passwordController,
          decoration: textFieldDecorator,
        ),

     Text.rich( errorText!=null?TextSpan(style:TextStyle(color: Colors.red,fontSize: 16),text: errorText):TextSpan(text:"")),
        const SizedBox(height: 15),
        Row(
          children: [
            FilledButton(
                style: AppButtomStyle.linkButtomFilled,
                onPressed: _auth,
                child: Text("Login")),
            const SizedBox(width: 25),
            OutlinedButton(
                style: AppButtomStyle.linkButtomOutlined,
                onPressed: _restPassword,
                child: Text(
                    style: AppButtomStyle.textStyleLightBlue,
                    "Reset password")),
          ],
        )
      ],
    );
  }
}
