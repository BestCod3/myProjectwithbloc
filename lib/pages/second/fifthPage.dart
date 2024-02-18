import 'dart:math';

import 'package:counter1/pages/second/cubit/fifthCubit.dart';
import 'package:counter1/pages/second/cubit/fifthState.dart';
import 'package:counter1/pages/sixthPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 233, 59, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 233, 59, 1),
        title: const SizedBox(
          width: 250,
          child: Center(
            child: Text(
              'Задание №5',
              style:
                  TextStyle(color: Colors.white, fontFamily: 'Roboto-Regular'),
            ),
          ),
        ),
      ),
      body: Center(
        child: BlocBuilder<FifthCubit, FifthState>(
          builder: (context, state) {
            return Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      child: Image.asset(
                        'assets/image/dice${state.diceTapone}.png',
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        context.read<FifthCubit>().changeDiceone();
                      },
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    child: Image.asset(
                      'assets/image/dice${state.diceTaptwo}.png',
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      context.read<FifthCubit>().changeDiceone();
                    },
                  ),
                )),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(255, 233, 59, 1),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SixthPage(),
            ),
          );
        },
        child: const Text(
          "Next",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

// int dice = 1;
  //void update() {
  //  setState(() {});
 // }
 //pubdev
 //google fonts.lato()
//image.net из интернета фото
//rotateanimatedtext анимация текста