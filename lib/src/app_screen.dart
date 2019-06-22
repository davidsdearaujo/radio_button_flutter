import 'package:flutter/material.dart';

import 'question_enum.dart';
import 'question_widget.dart';

class AppScreen extends StatefulWidget {
  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  Map<QuestionEnum, bool> groupValues = {
    QuestionEnum.alergia: false,
    QuestionEnum.aspirina: false,
    QuestionEnum.cardiopatias: false,
    QuestionEnum.circulatorio: false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        physics: ClampingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Center(
              child: Text(
                "Cadasto Ficha Micropigmentação",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          _buildQuestion(QuestionEnum.alergia),
          _buildQuestion(QuestionEnum.aspirina),
          _buildQuestion(QuestionEnum.cardiopatias),
          _buildQuestion(QuestionEnum.circulatorio),
        ],
      ),
    );
  }

  Widget _buildQuestion(QuestionEnum item) {
    return QuestionWidget(
      text: QuestionEnumLabel[item].toUpperCase(),
      groupValue: groupValues[item],
      onChange: (val) {
        setState(() {
          groupValues[item] = val;
        });
      },
    );
  }

  _appBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.red),
      backgroundColor: Colors.white,
      title: Row(
        children: <Widget>[
          Expanded(
            child: Stack(children: <Widget>[
              Positioned(
                child: Image.network(
                  'https://flutterando.com.br/wp-content/uploads/2019/06/logo-color.png',
                  fit: BoxFit.contain,
                  height: 40,
                ),
              ),
            ]),
            flex: 8,
          ),
          Expanded(
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.red,
              child: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
            ),
            flex: 1,
          )
        ],
      ),
    );
  }
}
