import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    TextStyle textStyle = const TextStyle(fontSize: 16, color: Colors.black);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 25),
          Text(
              style: textStyle,
              textAlign: TextAlign.justify,
              'bla-bla-bla-bla-bla-bla-bla-bla-bla-bla-'
              'bla-bla-bla-bla-bla-bla-bla-bla-bla-'
              'bla-bla-bla-bla-bla-bla-bla-bla-bla-'
              'bla-bla-bla-bla-bla-bla-bla-bla-bla-'
              'bla-bla-bla-bla-bla-bla-bla-bla-bla-'
              'bla-bla-bla-bla-bla-bla-bla-bla-bla-'
              'bla-bla-bla-bla-bla-bla-bla-bla-'),
          Text(
              style: textStyle,
              'bla-bla-bla-bla-bla-bla-bla-bla-'
              'bla-bla-bla-bla-bla-bla-bla-bla-'
              'bla-bla-bla-bla-bla-bla-bla-bla-'),
          const SizedBox(height: 25),
          const _FormWidget(),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(fontSize: 16, color: Colors.black);

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
        Text(style: textStyle, "Username"),
        const SizedBox(height: 5),
        TextField(
          decoration: textFieldDecorator,
        ),
        const SizedBox(height: 15),
        Text(style: textStyle, "Password"),
        const SizedBox(height: 5),
        TextField(
          decoration: textFieldDecorator,
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            FilledButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                onPressed: () {},
                child: Text("Login")),
            const SizedBox(width: 15),
            OutlinedButton(onPressed: () {}, child: Text("Reset password")),
          ],
        )
      ],
    );
  }
}
