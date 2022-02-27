import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function()? _selectHandler;
    final String answerText;
  const Answer(
    this._selectHandler,this.answerText, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        child: Text(answerText),
        style:
            ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black),),
        onPressed: _selectHandler,
      ),
    );
  }
}
