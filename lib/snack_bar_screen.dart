import 'package:flutter/material.dart';

import 'main.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    padding: const EdgeInsets.only(top: 10),
                    margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height - 77,
                    ),
                    backgroundColor: Colors.red,
                    behavior: SnackBarBehavior.floating,
                    content: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text('データの取得に失敗しました。'),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Text('dsadadd'),
            ),
          ],
        ),
      ),
    );
  }
}
