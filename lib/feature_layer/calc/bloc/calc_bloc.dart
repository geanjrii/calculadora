import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:function_tree/function_tree.dart';

part  'calc_event.dart';

class CalcBloc extends Bloc<ButtonClickEvent, String> {
  CalcBloc() : super('') {
    on<CommonButtonClicked>(_onCommonButtonClicked);
    on<ClearButtonClicked>(_onClearButtonClicked);
    on<ClearEntryButtonClicked>(_onClearEntryButtonClicked);
    on<EqualsButtonClicked>(_onEqualsButtonClicked);
  }

  void _onClearButtonClicked(ClearButtonClicked event, Emitter<String> emit) {
    emit('');
  }

  void _onClearEntryButtonClicked(
      ClearEntryButtonClicked event, Emitter<String> emit) {
    emit('');
  }

  void _onCommonButtonClicked(CommonButtonClicked event, Emitter<String> emit) {
    emit(state + event.value);
  }

  void _onEqualsButtonClicked(EqualsButtonClicked event, Emitter<String> emit) {
    emit('${state.interpret()}');
  }
}

