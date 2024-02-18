import 'dart:math';

import 'package:counter1/pages/second/cubit/fifthState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FifthCubit extends Cubit<FifthState> {
  FifthCubit() : super(FifthState(diceTapone: 1, diceTaptwo: 5));
  void changeDiceone() {
    final random2 = Random().nextInt(6) + 1;
    final random1 = Random().nextInt(6) + 1;
    emit(state.copyWith(diceTapone: random2, diceTaptwo: random1));
  }

  void changeDicetwo() {
    final random1 = Random().nextInt(6) + 1;
    final random2 = Random().nextInt(6) + 1;
    emit(state.copyWith(diceTaptwo: random1, diceTapone: random2));
  }
}
