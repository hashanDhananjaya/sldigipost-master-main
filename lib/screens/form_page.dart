import 'package:flutter/material.dart';
import 'package:sldigipost/main.dart';
import 'package:sldigipost/model/checkbox_state.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final allTelco = CheckBoxState(title: 'Select all telco networks');
  final allBank = CheckBoxState(title: 'Select all banks');

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

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Fill the Form'),
      backgroundColor: Colors.blue,
      centerTitle: true,
    ),
    body: ListView(
      padding: EdgeInsets.all(12),
      children: [
        buildGroupCheckBox(allTelco),
        Divider(color: Colors.black),
        ...telco.map(buildSingleCheckBox).toList(),
      ],
    ),
  );

  Widget buildSingleCheckBox(CheckBoxState checkBoxState) => CheckboxListTile(
    controlAffinity: ListTileControlAffinity.leading,
    activeColor: Colors.blue,
    value: checkBoxState.value,
    title: Text(checkBoxState.title,
      style: TextStyle(fontSize: 20),),
    onChanged: (value) => setState(() {
      checkBoxState.value = value!;
      allTelco.value = telco.every((telco) => telco.value);
      }),
  );

  Widget buildGroupCheckBox(CheckBoxState allTelco) => CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: Colors.blue,
      value: allTelco.value,
      title: Text(allTelco.title,
        style: TextStyle(fontSize: 20),),
      onChanged: toggleGroupCheckbox,
  );

  void toggleGroupCheckbox(bool? value){
    if(value == null) return;

    setState(() {
      allTelco.value = value;
      telco.forEach((telco) => telco.value = value);
    });

  }
}

