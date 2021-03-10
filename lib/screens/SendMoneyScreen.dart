import 'package:flutter/material.dart';
import 'package:kootii/utils/sizes_helpers.dart';

class SendMoneyScreen extends StatefulWidget {
  SendMoneyScreen({Key key}) : super(key: key);

  @override
  _SendMoneyScreenState createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
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
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 50.0),
                  child: Text(
                    'Send Money',
                    style: TextStyle(fontSize: 25, color: Color(0xFF7f7f7f), fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  constraints: BoxConstraints.tightFor(width: displayWidth(context) * 0.90, height: displayHeight(context) * 0.15),
                  decoration: BoxDecoration(color: Color(0xFFffc17e)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text(
                              'SEND',
                              style: TextStyle(color: Color(0xFF7f6a59), fontSize: 18),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text(
                              '0.00',
                              style: TextStyle(color: Color(0xFFb49167), fontSize: 24),
                            ),
                          )
                        ],
                      ),
                      VerticalDivider(
                        thickness: 2,
                        indent: 20,
                        endIndent: 20,
                        color: Color(0xFF646464),
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text(
                              'RECIEVE',
                              style: TextStyle(color: Color(0xFF7f6a59), fontSize: 18),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text(
                              '0.00',
                              style: TextStyle(color: Color(0xFFb49167), fontSize: 24),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                  child: Text(
                    '1 CAD = 427 XOF',
                    style: TextStyle(fontSize: 20, color: Color(0xFF7f7f7f)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                      child: Text(
                        'Recipient Name',
                        textAlign: TextAlign.left,
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
                      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                      child: Text(
                        'Recipient Mobile Number',
                        textAlign: TextAlign.left,
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
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                  child: Text(
                    'No transfer fee, fast and secure',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15, color: Color(0xFF7e7e7e), fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
                  child: Image.asset(
                    './lib/assets/images/ads.jpg',
                    width: displayWidth(context) * 0.5,
                  ),
                ),
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
                      "Send",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
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
