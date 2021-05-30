import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sunao_nako/application/example_provider.dart';
import 'package:sunao_nako/router/router.gr.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    //wrap consumer sebagai helper untuk memilih provider
    return Consumer<ExampleProvider>(
      builder: (context, exampleProvider, _) => Scaffold(
        appBar: AppBar(
          title: Text("First Page"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                exampleProvider.getDataString == null
                    ? "Empty"
                    : exampleProvider.getDataString.toString(),
                style: TextStyle(fontSize: 30)),
            Center(
              child: ElevatedButton(
                onPressed: () => onButtonClicked(exampleProvider),
                child: Text("Go To Second Page"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onButtonClicked(ExampleProvider exampleProvider) {
    // context.read<ExampleProvider>().setDataString("kano");
    exampleProvider.setDataString("0");
    ExtendedNavigator.root.push(Routes.secondPage,
        arguments: SecondPageArguments(nama: "kano", umur: 25));
  }
}
