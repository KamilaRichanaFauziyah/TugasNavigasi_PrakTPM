import 'list_tourism.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _splashField(),
                  _textField(),
                  _buttonField(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _splashField() {
    return Container(
      padding:EdgeInsets.only(top: 60),
      child: Image.asset(
        "image/travel.png",
        width: 250,
        height: 250,
      ),
    );
  }

  Widget _textField(){
    return Container(
      padding: EdgeInsets.all(20),
      child: Text("Mari Menjelajah Bersama Kami\nBahagiakan Hatimu",
        style: TextStyle(fontSize: 14),
        textAlign: TextAlign.center,)
    );
  }
  Widget _buttonField(BuildContext context){
    return Container(

      child: ElevatedButton(
    child: Text('Mulai'),
        onPressed: (){
        Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context){
            return MenuScreen();
        }
        ));
      },
    style: ElevatedButton.styleFrom(
    padding: EdgeInsets.symmetric(
    horizontal: 29,
    vertical: 18,
    ),
      ),
      ),
    );
  }
}
