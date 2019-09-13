import 'package:flutter/material.dart';
import 'package:call_number/call_number.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  //call function
  _initCall() async {
    await new CallNumber().callNumber('+5511960946690');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Card',
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.red.shade800,
          title: Text('Mi Card'),
          centerTitle: true,
        ),
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/perfildev.jpg'),
              ),
              Text(
                "William S. S.",
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "PROGRAMMING STUDENT",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontFamily: 'Source Sans Pro',
                    letterSpacing: 2.5),
              ),
              SizedBox(
                width: 170.0,
                height: 20.0,
                child: Divider(
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Card(
                    child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.red,
                        ),
                        title: Text(
                          "011 96094-6690",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontFamily: 'Source Sans Pro'),
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Card(
                    child: ListTile(
                        leading: Icon(
                          Icons.mail,
                          color: Colors.red,
                        ),
                        title: Text(
                          "wpaulista_sp@hotmail.com",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontFamily: 'Source Sans Pro'),
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Container(
                  height: 50,
                  width: 343.0,
                  child: RaisedButton(
                    color: Colors.red,
                    child:
                        Text("Call", style: TextStyle(color: Colors.white, fontSize: 20.0)),
                    onPressed: () {
                      _initCall();
                    },
                  ),
                ),
              ),
            ],
          ),
        )
        ),
      ),
    );
  }
}
