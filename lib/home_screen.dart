import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const methodChannel = MethodChannel('toast');
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Platfrom Channel')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: _controller,
          ),
          ElevatedButton(
            child: const Text('Show Toast'),
            onPressed: () {
              if (_controller.text.isNotEmpty) {
                showToast(_controller.text);
              } else {
                showToast('Please Add Some Text To Toast');
              }
            },
          ),
        ],
      )),
    );
  }

  void showToast(String msg) async {
    await methodChannel.invokeMethod('showToast', msg);
  }
}
