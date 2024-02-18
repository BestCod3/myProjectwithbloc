import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'first_state.dart';

class FirstCubit extends Cubit<FirstState> {
  FirstCubit() : super(FirstState(num: 0));

  void Plus() {
    emit(FirstState(num: state.num! + 1));
  }

  void minus() {
    emit(FirstState(num: state.num! - 1));
  }
}
