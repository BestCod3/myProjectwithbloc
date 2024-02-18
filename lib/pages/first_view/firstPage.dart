import 'dart:developer';
import 'package:counter1/pages/first_view/cubit/first_cubit.dart';
import 'package:counter1/pages/first_view/secondPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //весь интерфейс
      backgroundColor: Colors.white,

      appBar: AppBar(
        //шапка
        /* leading: IconButton(
          icon: Image.asset('assets/flutter-logo-768x768.png'),
          onPressed: () {},
        ),*/
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'Задание №1',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: 'Roboto-Regular',
            ),
          ),
        ),
      ),
      body: Center(
        //тело идет в центр интерфейса $-приглашение
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //kollona брем в еще один контейнер!
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: const BoxDecoration(
                //декорация за радиус цвет итд.
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              height: 44,
              child: Center(
                child: BlocBuilder<FirstCubit, FirstState>(
                  builder: (context, state) {
                    return Text(
                      'Сан: ${state.num}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<FirstCubit, FirstState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  //{управление функцией} setstate-менять состояние
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<FirstCubit>().Plus();
                        log('rabotaet');
                      },
                      child: Container(
                        height: 50,
                        width: 80,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<FirstCubit>().minus();
                      },
                      child: Container(
                        height: 50,
                        width: 80,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: BlocBuilder<FirstCubit, FirstState>(
        builder: (context, state) {
          return FloatingActionButton(
            onPressed: () async {
              await Navigator.push(
                // nаvigator.push - вход вперед
                context, //navigator.pop - назад
                MaterialPageRoute(
                  builder: (context) => SecondPage(),
                ),
              );
            },
            elevation: 0,
            child: const Text(
              'Next',
              style: TextStyle(color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
