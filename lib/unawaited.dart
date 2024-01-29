import 'dart:async';
import 'package:flutter/material.dart';

class SampleScreen extends StatefulWidget {
  const SampleScreen({super.key});

  @override
  SampleScreenState createState() => SampleScreenState();
}

class SampleScreenState extends State<SampleScreen> {
  bool _isLoading = false;
  String _data = '';

  Future<String> _downloadData() async {
    // 非同期でデータをダウンロードする処理
    await Future.delayed(const Duration(seconds: 2));
    return 'Downloaded data';
  }

  void _onButtonPressed() {
    setState(() {
      _isLoading = true;
    });

    // 非同期でデータをダウンロードする処理を開始する
    unawaited(_downloadData().then((data) {
      setState(() {
        _isLoading = false;
        _data = data;
      });
    }));

    // ボタンのテキストを変更する
    setState(() {
      _isLoading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: _isLoading
            ? const CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _onButtonPressed,
                    child: const Text('Download data'),
                  ),
                  const SizedBox(height: 20),
                  Text(_data),
                ],
              ),
      ),
    );
  }
}
