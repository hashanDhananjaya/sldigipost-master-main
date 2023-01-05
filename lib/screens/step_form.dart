import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sldigipost/screens/signup_page.dart';

import '../model/checkbox_state.dart';

class StepForm extends StatefulWidget {
  const StepForm({Key? key}) : super(key: key);

  @override
  State<StepForm> createState() => _StepFormState();
}

class _StepFormState extends State<StepForm> {
  bool isCompleted = false;
  int currentStep = 0;
  final allTelco = CheckBoxState(title: 'Select all');
  final allBank = CheckBoxState(title: 'Select all');
  final electricity = CheckBoxState(title: 'Electricity');
  final water = CheckBoxState(title: 'Water');
  final allFinance = CheckBoxState(title: 'Select all');
  final allInsurance = CheckBoxState(title: 'Select all');

  final telco =  [
    CheckBoxState(title: 'Dialog'),
    CheckBoxState(title: 'SLTMobitel'),
    CheckBoxState(title: 'Lankabell'),
    CheckBoxState(title: 'Hutch'),
    CheckBoxState(title: 'Airtel'),
    CheckBoxState(title: 'Mobitel'),
  ];

  final bank =  [
    CheckBoxState(title: 'Commercial Bank'),
    CheckBoxState(title: 'Sampath Bank'),
    CheckBoxState(title: 'NSB'),
    CheckBoxState(title: 'BOC'),
    CheckBoxState(title: 'Peoples Bank'),
  ];

  final finance =  [
    CheckBoxState(title: 'Orient Finance'),
    CheckBoxState(title: 'LOLC Finance'),
    CheckBoxState(title: 'CDB'),
    CheckBoxState(title: 'LB Finance'),
  ];

  final insurance =  [
    CheckBoxState(title: 'Janashakthi'),
    CheckBoxState(title: 'Ceylinco Life'),
    CheckBoxState(title: 'Union Assurance'),
    CheckBoxState(title: 'Peoples Insurance'),
    CheckBoxState(title: 'Allianz'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fill This'),
        centerTitle: true,
      ),
      body: isCompleted
      ? SignUp()
      :Stepper(
          type: StepperType.vertical,
          steps: [
            Step(
              state: currentStep > 0 ? StepState.complete : StepState.indexed,
              isActive: currentStep >= 0,
                title: Text('Telco'),
                content: Column(
                  children: [
                    buildGroupCheckBox(allTelco),
                    Divider(color: Colors.black),
                    ...telco.map(buildSingleCheckBox).toList(),
                  ],
                )
            ),
            Step(
                state: currentStep > 1 ? StepState.complete : StepState.indexed,
                isActive: currentStep >= 1,
                title: Text('Bank'),
                content: Column(
                  children: [
                    buildGroupCheckBox(allBank),
                    Divider(color: Colors.black),
                    ...bank.map(buildSingleCheckBox).toList(),
                  ],
                )
            ),
            Step(
                state: currentStep > 2 ? StepState.complete : StepState.indexed,
                isActive: currentStep >= 2,
                title: Text('Electricity'),
                content:Column(
                  children: [
                    buildGroupCheckBox(electricity),
                  ],
                )
            ),
            Step(
                state: currentStep > 3 ? StepState.complete : StepState.indexed,
                isActive: currentStep >= 3,
                title: Text('Water'),
                content: Column(
                  children: [
                    buildGroupCheckBox(water),
                  ],
                )
            ),
            Step(
                state: currentStep > 4 ? StepState.complete : StepState.indexed,
                isActive: currentStep >= 4,
                title: Text('Finance'),
                content: Column(
                  children: [
                    buildGroupCheckBox(allFinance),
                    Divider(color: Colors.black),
                    ...finance.map(buildSingleCheckBox).toList(),
                  ],
                )
            ),
            Step(
                isActive: currentStep >= 5,
                title: Text('Insurance'),
                content: Column(
                  children: [
                    buildGroupCheckBox(allInsurance),
                    Divider(color: Colors.black),
                    ...insurance.map(buildSingleCheckBox).toList(),
                  ],
                )
            ),
          ],
        currentStep: currentStep,
        onStepContinue: (){
            final isLastStep = currentStep == 5;
            if(isLastStep){
              setState(() {
                isCompleted = true;
              });
              print('Completed!');

            }else{
              setState(() {
                currentStep += 1;
              });
            }
        },
        onStepCancel: (){
             // currentStep == 0 ? null : () => setState( () => currentStep -= 1);
          log("ON CANCEL");
          print(currentStep);
          if(currentStep != 0){
            setState( () => currentStep -= 1);
            print(currentStep);
          }
        },
        controlsBuilder: (context, ControlsDetails controls){
            return Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: controls.onStepContinue,
                    child:  Text(currentStep == 5 ? 'CONFIRM' : 'NEXT'),
                      style: ElevatedButton.styleFrom(
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(20)),
                      //side: BorderSide(width: 10,color: Colors.blue),
                      minimumSize: const Size(150, 40),
                      padding: EdgeInsets.all(5),
                      primary: Color.fromARGB(255, 53, 94, 229), //background
                      onPrimary: Colors.white,
                      textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                      )
                  ),

                  SizedBox(width: 20,),
                  if(currentStep != 0)
                  ElevatedButton(
                    onPressed: controls.onStepCancel,
                    child: const Text('BACK'),
                      style: ElevatedButton.styleFrom(
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(20)),
                        //side: BorderSide(width: 10,color: Colors.blue),
                          minimumSize: const Size(150, 40),
                          padding: EdgeInsets.all(5),
                          primary: Color.fromARGB(255, 53, 94, 229), //background
                          onPrimary: Colors.white,
                          textStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                      )
                  ),
                ],
              ),
            );
        },
      ),
    );

  }

  Widget buildSingleCheckBox(CheckBoxState checkBoxState) => CheckboxListTile(
    controlAffinity: ListTileControlAffinity.leading,
    activeColor: Colors.blue,
    value: checkBoxState.value,
    title: Text(checkBoxState.title,
      style: TextStyle(fontSize: 20),),
    onChanged: (value) => setState(() {
      checkBoxState.value = value!;
      allTelco.value = telco.every((telco) => telco.value);
      allBank.value = bank.every((bank) => bank.value);
      allFinance.value = finance.every((finance) => finance.value);
      allInsurance.value = insurance.every((insurance) => insurance.value);
    }),
  );

  Widget buildGroupCheckBox(CheckBoxState allBank) => CheckboxListTile(
    controlAffinity: ListTileControlAffinity.leading,
    activeColor: Colors.blue,
    value: allBank.value,
    title: Text(allBank.title,
      style: TextStyle(fontSize: 20),),
    onChanged: toggleGroupCheckbox,
  );



  void toggleGroupCheckbox(bool? value){
    if(value == null) return;

    setState(() {
      allTelco.value = value;
      allBank.value = value;
      allInsurance.value = value;
      allFinance.value = value;
      electricity.value = value;
      water.value = value;
      telco.forEach((telco) => telco.value = value);
      bank.forEach((bank) => bank.value = value);
      finance.forEach((finance) => finance.value = value);
      insurance.forEach((insurance) => insurance.value = value);
    });

  }

}
