import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent.shade700,
      appBar: new AppBar(
        backgroundColor: Colors.orangeAccent.shade700,
        centerTitle: true,
        title: new Text(
          'Dovers Deliveries',
          style: TextStyle(
              fontSize: 28.9, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      body: new Container(
        alignment: Alignment.topCenter,
        child: new Column(
          children: <Widget>[
            //image profile
            new Image.asset(
              'images/logo.png',
              width: 150.0,
              height: 160.0,
              color: Colors.white,
            ),
            new Padding(
              padding: EdgeInsets.all(20.0),
            ),
            // login Form
            new Container(
              height: 200.0,
              width: 380.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                      hintText: 'Username',
                      icon: new Icon(Icons.person),
                    ),
                  ),
                  new TextField(
                    controller: _passwordController,
                    decoration: new InputDecoration(
                      hintText: 'Password',
                      icon: new Icon(Icons.lock),
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(15.0),
                  ),
                  new Center(
                    child: new Row(
                      children: <Widget>[
                        new Container(
                          margin: const EdgeInsets.only(left: 38.0),
                          child: new RaisedButton(
                            color: Colors.orangeAccent.shade700,
                            child: new Text(
                              'LOG IN',
                              style: TextStyle(
                                fontSize: 18.9,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () => debugPrint('Logging In'),
                          ),
                        ),
                        new Container(
                          margin: const EdgeInsets.only(left: 125.0),
                          child: new RaisedButton(
                            color: Colors.redAccent.shade700,
                            child: new Text(
                              'CLEAR',
                              style: TextStyle(
                                fontSize: 18.9,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () => debugPrint('Logging In'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Padding(padding: EdgeInsets.all(20.0)),
            new Image.asset(
              'images/cars.png',
              color: Colors.white,
            ),
            new Text(
              'We Always Deliver On Time',
              style: TextStyle(
                fontSize: 18.9,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
