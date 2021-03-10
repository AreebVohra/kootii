import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kootii/utils/sizes_helpers.dart';

class DebitCartScreen extends StatefulWidget {
  DebitCartScreen({Key key}) : super(key: key);

  @override
  _DebitCartScreenState createState() => _DebitCartScreenState();
}

class _DebitCartScreenState extends State<DebitCartScreen> {
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
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Text(
                    'Payment Information',
                    style: TextStyle(
                      fontSize: 35,
                      color: Color(0xFFe9591d),
                    ),
                  ),
                ),
                Container(height: displayHeight(context) * 0.2),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF7e7e7e)),
                      ),
                      hintText: 'Debit Card Number (12 digits)'),
                  maxLength: 12,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly], // Only n
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: displayWidth(context) * 0.44,
                      child: Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFF7e7e7e)),
                              ),
                              hintText: 'Expires (MM / YY)'),
                          maxLength: 5,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                        ),
                      ),
                    ),
                    Container(
                      width: displayWidth(context) * 0.44,
                      child: Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFF7e7e7e)),
                              ),
                              hintText: 'Security code'),

                          maxLength: 3,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly], // Only n
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Security bythird party',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(height: displayHeight(context) * 0.2),
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
                      "Save",
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
