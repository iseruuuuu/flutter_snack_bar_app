import 'dart:io';
import 'package:flutter/material.dart';

class Sample extends StatelessWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Sample2(),
                  ),
                );
              },
              child: const Text('aaa'),
            ),
          ),
        ],
      ),
    );
  }
}

class Sample2 extends StatelessWidget {
  const Sample2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (Platform.isAndroid) {
          // Navigator.pop(context);
          return false;
        } else {
          // Navigator.pop(context);
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}

class SamplePage extends StatelessWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WillPopScope(
        onWillPop: () async {
          // 戻るボタンが押されたときに実行される処理を定義する
          return false;
        },
        child: const Center(
          child: Text("Hello, world!"),
        ),
      ),
    );
  }
}
