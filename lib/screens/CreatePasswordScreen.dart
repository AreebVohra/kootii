import 'package:flutter/material.dart';
import 'package:kootii/utils/sizes_helpers.dart';

class CreatePasswordScreen extends StatefulWidget {
  CreatePasswordScreen({Key key}) : super(key: key);

  @override
  _CreatePasswordScreenState createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: displayHeight(context),
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            width: displayWidth(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Koodii',
                    style: TextStyle(
                      fontSize: 35,
                      color: Color(0xFFe9591d),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Create a password',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF7e7e7e),
                    ),
                  ),
                ),
                Container(height: displayHeight(context) * 0.1),
                Container(
                    padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF7e7e7e),
                            ),
                          ),
                        ),
                        Material(
                          elevation: 6,
                          shadowColor: Colors.grey,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Color(0xFFffc17e),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Text(
                            'Confirm Password',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF7e7e7e),
                            ),
                          ),
                        ),
                        Material(
                          elevation: 6,
                          shadowColor: Colors.grey,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Color(0xFFffc17e),
                            ),
                          ),
                        ),
                        Container(height: displayHeight(context) * 0.1)
                      ],
                    )),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: displayWidth(context) * 0.90, height: displayHeight(context) * 0.07),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFeb8310),
                    ),
                    onPressed: () {
                      /*...*/
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                  child: Text('By clicking next you agree to the'),
                ),
                Text(
                  'Terms and Conditions.',
                  style: TextStyle(
                    color: Color(0xFFeb8310),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
