import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final String text;
  final void Function(bool value) onChange;
  final bool groupValue;

  const QuestionWidget({
    Key key,
    this.text,
    this.onChange,
    this.groupValue,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(text),
          flex: 12,
        ),
        Expanded(
          child: Radio<bool>(
            value: true,
            groupValue: groupValue,
            onChanged: onChange,
            activeColor: Colors.red,
          ),
          flex: 2,
        ),
        Expanded(
          child: Text("SIM"),
          flex: 2,
        ),
        Expanded(
          child: Radio<bool>(
            value: false,
            groupValue: groupValue,
            onChanged: onChange,
            activeColor: Colors.red,
          ),
          flex: 2,
        ),
        Expanded(
          child: Text("NÃO"),
          flex: 2,
        ),
      ],
    );
  }
}
