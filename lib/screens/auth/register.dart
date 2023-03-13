import 'package:flutter/material.dart';
import './widgets/header_widget.dart';
import './login.dart';

class RegisterPage extends StatelessWidget {
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
        HeaderWidget(),
        Container(
          height: 20,
        ),
        _formRegister(context),
        Container(
          height: 15,
        ),
        _registerButton(context),
        Container(
          height: 30,
        ),
        _textRegister(context),
      ]),
    );
  }

  Widget _formRegister(context) {
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
        children: [
          _nameTextField(context),
          _emailTextField(context),
          _passwordTextField(context)
        ],
      ),
    );
  }

  Widget _nameTextField(context) {
    return TextFormField(
      autocorrect: false,
      autofocus: true,
      style: TextStyle(color: Theme.of(context).primaryColor),
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        labelStyle: TextStyle(color: Theme.of(context).primaryColor),
        labelText: 'Nome',
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

  Widget _emailTextField(context) {
    return TextFormField(
      autocorrect: false,
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

  Widget _registerButton(context) {
    return Container(
      width: _deviceWidth,
      child: MaterialButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/restaurants');
        },
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Text("Cadastrar"),
      ),
    );
  }

  Widget _textRegister(context) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
        Navigator.pushReplacementNamed(context, '/login');
      },
      child: Text("Já cadastrou? Faça login",
          style:
              TextStyle(color: Theme.of(context).primaryColor, fontSize: 18.2)),
    );
  }
}
