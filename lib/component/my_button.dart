import 'package:flutter/material.dart';


//We are going to design our own button

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  const MyButton({super.key,
    required this.text,
    required this.press});

  @override
  Widget build(BuildContext context) {
    //Query width and height of device for being fit or responsive
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: 200,
      height: 55,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(10)
      ),

      child: TextButton(
        onPressed: press,
        child: Text(text,style: const TextStyle(color: Colors.white),),
      ),
    );
  }
}