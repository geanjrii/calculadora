import 'package:bloc_test/bloc_test.dart';
import 'package:calculadora/feature_layer/feature_layer.dart';
// import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

void main() {
  CalcBloc buildBloc() => CalcBloc();

  group('CalcBloc', () {
    test('initial state should be empty string', () {
      expect(buildBloc().state, '');
    });

    group('onClearButtonClicked |', () {
      blocTest<CalcBloc, String>(
        'emits [' '] when ClearButtonClicked event is added',
        build: buildBloc,
        act: (bloc) => bloc.add(const ClearButtonClicked()),
        expect: () => [''],
      );
    });

    group('onClearEntryButtonClicked |', () {
      blocTest<CalcBloc, String>(
        'emits [' '] when ClearEntryButtonClicked event is added',
        build: buildBloc,
        act: (bloc) => bloc.add(const ClearEntryButtonClicked()),
        expect: () => [''],
      );
    });

    group('onCommonButtonClicked |', () {
      blocTest<CalcBloc, String>(
        'emits correct value when CommonButtonClicked event is added',
        build: buildBloc,
        act: (bloc) => bloc.add(const CommonButtonClicked('1')),
        expect: () => ['1'],
      );
    });

    group('onEqualsButtonClicked |', () {
      blocTest<CalcBloc, String>(
        'emits correct value when EqualsButtonClicked event is added',
        build: buildBloc,
        act: (bloc) => bloc.add(const EqualsButtonClicked()),
        seed: () => '1+1',
        expect: () => ['2.0'],
      );
    });
  });
}
