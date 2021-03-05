import 'package:basic_utils/basic_utils.dart';
import 'package:esc_pos_printer/esc_pos_printer.dart';
import 'package:esc_pos_utils/esc_pos_utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pos_printe/printing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final printing = Printing();

  void _incrementCounter() async{
    const PaperSize paper = PaperSize.mm80;
    final profile = await CapabilityProfile.load();
    final printer = NetworkPrinter(paper, profile);

    final PosPrintResult res = await printer.connect('192.168.1.140', port: 9100);



    if (res == PosPrintResult.success) {
      testReceiptDynamic(printer);
    }

    print('Print result: ${res.msg}');
  }

  void testReceiptDynamic(NetworkPrinter printer) {
    printer.text('${printing.makeAlignCenterTitle('123 Star Road City, State 12345 123 Star Road City, State 12345')}\n');
    printer.text("  Date:${printing.curentDate()}              Time:${printing.createTime()}",styles: PosStyles(bold: true));
    printer.text("SALE\n");
    printer.text(printing.makeBorderLine());
    printer.text(printing.makeThreeColumnRow('Name','QTY','Price'));
    for(var i = 0; i < 4; i++){
      printer.text(printing.makeThreeColumnRow('PLAIN T-SHIRT','2pcs','10.99'));
    }
    printer.text(printing.makeTwoColumnRow('Subtotal','156.95'));
    printer.text(printing.makeTwoColumnRow('Tax','0.00'));
    printer.text(printing.makeBorderLine());
    printer.text(printing.makeTwoColumnRow('Total','156.95'));
    printer.text(printing.makeBorderLine());
    printer.text("Charge");
    printer.text("156.95");
    printer.text("Visa XXXX-XXXX-XXXX-0123");
    printer.text("Refunds and Exchanges");
    printer.text("Within 30 days with receipt");
    printer.text(printing.makeAlignRight('And tags attached'));
    printer.text(printing.makeAlignCenter('Thank You'));
    printer.text("01234567890123456789012345678901234567890123456\n\n\n");
    printer.feed(2);
    printer.cut();
    printer.disconnect();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _incrementCounter();
          // print(_makeAlignCenterTitle('123 Star Road City, State 12345 123 Star Road City, State 12345'));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
