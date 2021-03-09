import 'package:flutter/material.dart';
import 'package:kootii/utils/sizes_helpers.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OTPEnterScreen extends StatefulWidget {
  OTPEnterScreen({Key key}) : super(key: key);

  @override
  _OTPEnterScreenState createState() => _OTPEnterScreenState();
}

class _OTPEnterScreenState extends State<OTPEnterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        width: displayWidth(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0.0, displayHeight(context) * 0.1, 0.0, 10.0),
              child: Text(
                'Koodii',
                style: TextStyle(
                  fontSize: 35,
                  color: Color(0xFFe9591d),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
              child: Text(
                'Check your text messages, we have sent you a varification code, input the code here for validation',
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.3,
                  fontSize: 18,
                  color: Color(0xFF7e7e7e),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                    child: Text(
                      'Enter Code here',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF7e7e7e),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                      displayWidth(context) * 0.2,
                      10,
                      displayWidth(context) * 0.2,
                      20,
                    ),
                    constraints: BoxConstraints.tightFor(
                        width: displayWidth(context) * 0.90,
                        height: displayHeight(context) * 0.08),
                    decoration: BoxDecoration(
                      color: Color(0xFFffc17e),
                    ),
                    child: OTPTextField(
                      length: 6,
                      width: displayWidth(context) * 0.5,
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldWidth: 20,
                      fieldStyle: FieldStyle.underline,
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      onCompleted: (pin) {
                        print("Completed: " + pin);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        0.0, displayHeight(context) * 0.25, 0.0, 0.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints.tightFor(
                          width: displayWidth(context) * 0.90,
                          height: displayHeight(context) * 0.07),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFeb8310),
                        ),
                        onPressed: () {
                          /*...*/
                        },
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
