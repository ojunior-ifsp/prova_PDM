import 'package:flutter/material.dart';
import 'package:pdm/register/register_page.dart';
import 'package:pdm/routes.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "you",
                style: TextStyle(color: Color(0xFF090A0A), fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "learn",
                style: TextStyle(color: Color(0xCC6B4EFF), fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Image.network("https://i.imgur.com/cgrV6OE.png"),
          Text(
            'Crie caminhos brilhantes de aprendizagem',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 70),
          InkWell(
            onTap: () => Navigator.of(context).pushNamed(RouteGenerator.registerPage),
            child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 85),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Text(
              "Criar Conta",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
        ],
      ),
    ),)
    ,
    );
  }
}
