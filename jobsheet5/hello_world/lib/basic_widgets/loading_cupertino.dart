import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoadingCupertinoPage extends StatelessWidget {
  const LoadingCupertinoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      color: Colors.white,
      child: Column(
        children: const <Widget>[
          CupertinoButton(
            child: Text('Contoh button'),
            onPressed: null,
          ),
          CupertinoActivityIndicator(),
        ],
      ),
    );
  }
}
