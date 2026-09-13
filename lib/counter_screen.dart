import 'package:counter_app/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Consumer<CounterProvider>(
        builder: (context, counterProvider, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "value will be displayed below",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        counterProvider.decrement();
                        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("plus button pressed")));
                      },
                      child: Text(
                        "-",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
                      )),
                  SizedBox(
                    width: 30,
                  ),
                  Text(counterProvider.count.toString()),
                  SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        counterProvider.increment();
                        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("minus button pressed")));
                      },
                      child: Text(
                        "+",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
                      ))
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
