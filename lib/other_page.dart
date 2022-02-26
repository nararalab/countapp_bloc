import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('다른페이지'),
      ),
      body: const Center(
        child: Text(
          '다른페이지',
          style: TextStyle(fontSize: 52.0),
        ),
      ),
    );
  }
}
