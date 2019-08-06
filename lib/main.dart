import 'dart:developer';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Send Data App',
      routes: {
        '/bottonSendLast': (context) => BottonSendLast(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Send Data', style: TextStyle(color: Colors.black, fontSize: 24),),
          backgroundColor: Colors.yellow,
        ),
        body: SendData(),
      ),
    );
  }
}


class SendData extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SendDataState();
  }
}


class SendDataState extends State<SendData>{
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        children: <Widget>[
          RaisedButton(

            child: Text('Botton 1'),
            onPressed: (){
              Navigator.pushNamed(context,
                  '/bottonSendLast',
                  arguments: ScreenData(
                      'Botton App Bar',
                      'Da chuyen duoc du lieu'
                  )
              );
            },
          ),
        ],
      ),
    );
  }
}

class BottonSendLast extends StatelessWidget{
  final String title;
  final String messagea;

  const BottonSendLast({Key key, this.title, this.messagea}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenData scd = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(scd.title),
      ),
      body: Center(
        child: Text(scd.messagea),
      ),
    );
  }
}

class ScreenData{
  final String title;
  final String messagea;
  ScreenData(this.title, this.messagea);
}


