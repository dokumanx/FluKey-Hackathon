import 'package:flukey_hackathon/bloc/login/login_bloc.dart';
import 'package:flukey_hackathon/common/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomSheet: Container(
          height: SizeExtension(context).dynamicHeight(0.05),
          width: SizeExtension(context).dynamicWidth(1),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Text(
                  'Return to the login page',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  debugPrint('geri dönüldü');
                },
              ),
            ],
          ),
        ),
        resizeToAvoidBottomInset: true,
        body: Container(
          color: Color.fromRGBO(238, 238, 238, 1),
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: SingleChildScrollView(
                  child: SignUpFormWidget(),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpFormWidget extends StatefulWidget {
  @override
  _SignUpFormWidgetState createState() => _SignUpFormWidgetState();
}

class _SignUpFormWidgetState extends State<SignUpFormWidget> {
  TextEditingController _emailController;
  TextEditingController _passwordController;
  TextEditingController _nameController;
  TextEditingController _surnameController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _nameController = TextEditingController();
    _surnameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _surnameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 32, bottom: 25),
          child: Text(
            'FluKey',
            style: TextStyle(
                fontWeight: FontWeight.w900, color: Colors.black, fontSize: 48),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 32),
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 32, bottom: 16),
          child: NeuCard(
            alignment: Alignment.center,
            height: SizeExtension(context).dynamicHeight(0.05),
            width: SizeExtension(context).dynamicWidth(0.9),
            curveType: CurveType.flat,
            color: Colors.white,
            decoration: NeumorphicDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color.fromRGBO(238, 238, 238, 1)),
            child: TextFormField(
              controller: _nameController,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'name',
                  focusColor: Colors.black,
                  border: InputBorder.none),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 32, bottom: 16),
          child: NeuCard(
            alignment: Alignment.center,
            height: SizeExtension(context).dynamicHeight(0.05),
            width: SizeExtension(context).dynamicWidth(0.9),
            curveType: CurveType.flat,
            color: Colors.white,
            decoration: NeumorphicDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color.fromRGBO(238, 238, 238, 1)),
            child: TextFormField(
              controller: _surnameController,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'surname',
                  focusColor: Colors.black,
                  border: InputBorder.none),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 32, bottom: 16),
          child: NeuCard(
            alignment: Alignment.center,
            height: SizeExtension(context).dynamicHeight(0.05),
            width: SizeExtension(context).dynamicWidth(0.9),
            curveType: CurveType.flat,
            color: Colors.white,
            decoration: NeumorphicDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color.fromRGBO(238, 238, 238, 1)),
            child: TextFormField(
              controller: _emailController,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'email',
                  focusColor: Colors.black,
                  border: InputBorder.none),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: NeuCard(
            alignment: Alignment.center,
            height: SizeExtension(context).dynamicHeight(0.05),
            width: SizeExtension(context).dynamicWidth(0.9),
            curveType: CurveType.flat,
            color: Colors.white,
            decoration: NeumorphicDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color.fromRGBO(238, 238, 238, 1)),
            child: TextFormField(
              controller: _passwordController,
              textAlign: TextAlign.center,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'password',
                  focusColor: Colors.black,
                  border: InputBorder.none),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 32, top: 16),
          child: InkWell(
            child: NeuCard(
              alignment: Alignment.center,
              height: SizeExtension(context).dynamicHeight(0.05),
              width: SizeExtension(context).dynamicWidth(0.3),
              curveType: CurveType.flat,
              color: Colors.white,
              decoration: NeumorphicDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.grey.shade200),
              child: Text(
                'Submit',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onTap: () {
              debugPrint('Kayıt başarılı!'); //TODO
              context.read<LoginBloc>().add(SignupButtonPressed(
                    email: _emailController.text,
                    firstName: _nameController.text,
                    lastName: _surnameController.text,
                    password: _passwordController.text,
                  ));
            },
          ),
        ),
      ],
    ));
  }
}
