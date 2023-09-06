import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:embrace/embrace.dart';

void main() async {


  WidgetsFlutterBinding.ensureInitialized();

  await Embrace.instance.start(() =>  runApp(ProviderScope(
    child: App(),
  )));

}

class App extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
       home: Scaffold(
      body: Center(child: ElevatedButton(onPressed: () {
      },
      child: Text("woof")),),
    ));
  }
}
