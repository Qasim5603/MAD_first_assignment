import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BIDDING APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false, // This line removes the debug banner
      home: const MaximumBid(title: 'FLUTTER BIDDING APP'),
    );
  }
}

class MaximumBid extends StatefulWidget {
  const MaximumBid({super.key, required this.title});

  final String title;

  @override
  State<MaximumBid> createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  int _increaseBid = 100;

  void _incrementBid() {
    setState(() {
      _increaseBid += 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent, // Orange color for the AppBar
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Card(
            color: Colors.orangeAccent, // Orange color for the Card
            margin: const EdgeInsets.all(16.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    const Text(
                      'Your current maximum bid is:',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      '\$$_increaseBid',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: FloatingActionButton.extended(
              onPressed: _incrementBid,
              tooltip: 'Increase Bid',
              label: const Text('Increase Bid by \$50'),
              icon: const Icon(Icons.add),
              backgroundColor: Colors.orangeAccent, // Orange color for the FAB
            ),
          ),
        ],
      ),
    );
  }
}
