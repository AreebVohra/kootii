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
                Material(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF7e7e7e)),
                        ),
                        hintText: 'Debit Card Number (12 digits)'),
                    maxLength: 12,
                    keyboardType: TextInputType.phone,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly], // Only n
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
