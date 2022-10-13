import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  int _currentStep = 0 ;
  int currentStep =0;
  Widget build(BuildContext context) {
    return
      SafeArea(
          child: Scaffold(
            backgroundColor: Colors.purpleAccent,
            body: Center(
              child:
              Stepper(steps: const[
                Step(title: Text('1'), content: Text('Step 1')),
                Step(title: Text('2'), content: Text('Step 2')),
                Step(title: Text('3'), content: Text('Step 3')),
                Step(title: Text('4'), content: Text('Step 5')),
              ],
              onStepTapped: (int newIndex){
              setState(() {
                _currentStep = newIndex;
              });




            },
              ),
            ),
          ));
  }
}
