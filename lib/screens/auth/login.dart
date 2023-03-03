import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  double _deviceWidth = 0;
  double _deviceHeight = 0;

  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(child: _loginPageUi(context)));
  }

  Widget _loginPageUi(context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.10),
      child: Column(children: [
        Container(
          height: 30,
        ),
        _headingAuth(),
        Container(
          height: 20,
        ),
        _formLogin(context),
        Container(
          height: 15,
        ),
        _loginButton(context),
        Container(
          height: 30,
        ),
        _textRegister(context),
      ]),
    );
  }

  Widget _headingAuth() {
    return Container(
      height: 130,
      width: 130,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/IconeFlutterFood.png'),
              fit: BoxFit.fill)),
    );
  }

  Widget _formLogin(context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(143, 148, 151, 60),
                blurRadius: 20,
                offset: Offset(0, 10))
          ]),
      child: Column(
        children: [_emailTextField(context), _passwordTextField(context)],
      ),
    );
  }

  Widget _emailTextField(context) {
    return TextFormField(
      autocorrect: false,
      autofocus: true,
      style: TextStyle(color: Theme.of(context).primaryColor),
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        labelStyle: TextStyle(color: Theme.of(context).primaryColor),
        labelText: 'E-mail',
        border: UnderlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.primary)),
        enabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.primary)),
        focusedBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.primary)),
      ),
    );
  }

  Widget _passwordTextField(context) {
    return TextFormField(
      autocorrect: false,
      autofocus: true,
      obscureText: true,
      style: TextStyle(color: Theme.of(context).primaryColor),
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        labelStyle: TextStyle(color: Theme.of(context).primaryColor),
        labelText: 'Senha',
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
    );
  }

  Widget _loginButton(context) {
    return Container(
      width: _deviceWidth,
      child: MaterialButton(
        onPressed: () {
          print("Texto login1");
        },
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Text("Login"),
      ),
    );
  }
}

Widget _textRegister(context) {
  return Text("oi");
}
