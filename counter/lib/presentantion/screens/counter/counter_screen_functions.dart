import 'package:flutter/material.dart';


class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        // * EL LEADING UNICAMENTE PERMITE UN WIDGET
        // leading: IconButton(
        //   icon: const Icon(Icons.refresh_rounded),
        //   onPressed: () {  },
        // ),
        actions: [
          IconButton(
          icon: const Icon(Icons.refresh_rounded),
          onPressed: () {
            setState(() {
              clickCounter = 0;
            });
           },
        ),
        ],
        title: const Text(('Counter functions')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('$clickCounter', style: const TextStyle(
              fontSize: 160,
              fontWeight: FontWeight.w100
            ),),
            Text('Click${clickCounter == 1 ? '':'s'}', style: const TextStyle(
              fontSize: 25))
          ],
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children:  [
      CustomButton(
        icon: Icons.refresh_outlined,
        onPressed: () {
          clickCounter = 0;
          setState(() {});
        },
      ),
      const SizedBox(
        height: 15,
      ),
      CustomButton(
        icon: Icons.plus_one_outlined,
        onPressed: () {
          clickCounter++;
          setState(() {});
        },
      ),
      const SizedBox(
        height: 15,
      ),
      CustomButton(
        icon: Icons.exposure_minus_1_rounded,
        onPressed: () {
          if(clickCounter == 0) return;
          clickCounter--;
          setState(() {});
        },
      ),
      ],),
    );

  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}