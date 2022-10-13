import 'package:flutter/material.dart';

const KButtonStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);
class Refactor extends StatefulWidget {
  const Refactor({Key? key}) : super(key: key);

  @override
  State<Refactor> createState() => _RefactorState();
}

class _RefactorState extends State<Refactor> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    color: Colors.green,
                    height: 150,
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CalcButton(7),
                            CalcButton(8),
                            CalcButton(9),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CalcButton(4),
                            CalcButton(5),
                            CalcButton(6),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CalcButton(1),
                            CalcButton(2),
                            CalcButton(3),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}

class CalcButton extends StatelessWidget {
  final int num;

  CalcButton(this.num);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          '$num',
          style: KButtonStyle,
        ));
  }
}
