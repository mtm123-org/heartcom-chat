import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HeartCom Chat'),
      ),
      body: Center(
        child: Text('Loading...'),
      ),
    );
  }
}
