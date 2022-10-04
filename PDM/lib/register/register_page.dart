import 'package:flutter/material.dart';
import 'package:pdm/home/home_page.dart';
import 'package:pdm/widget/login_form.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    'Voltar',
                    style: TextStyle(fontSize: 18),
                  )),
              SizedBox(height: 25),
              Center(
                child: Text(
                  "Criar Conta",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 25),
              Center(
                  child: Image.network(
                "https://i.imgur.com/g2yY2tL.png",
                fit: BoxFit.cover,
                width: 200,
              )),
              SizedBox(height: 25),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
