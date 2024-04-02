import 'package:calculadora/feature_layer/calc/bloc/calc_bloc.dart';
import 'package:calculadora/feature_layer/calc/view/widgets/button_hub.dart';
import 'package:calculadora/feature_layer/calc/view/widgets/display.dart';
import 'package:calculadora/feature_layer/feature_layer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalcPage extends StatelessWidget {
  const CalcPage({super.key});

  @override
  Widget build(BuildContext context) {
    final calcBloc = context.read<CalcBloc>();
    final state = context.watch<CalcBloc>().state;

    return Material(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Display(value: state),
          ),
          Expanded(
            flex: 3,
            child: ButtonHub(
              onClearButtonClicked: () {
                calcBloc.add(const ClearEntryButtonClicked());
              },
              onClearEntryButtonClicked: () {
                calcBloc.add(const ClearButtonClicked());
              },
              onEqualsButtonClicked: () {
                calcBloc.add(const EqualsButtonClicked());
              },
              onCommonButtonClicked: (value) {
                calcBloc.add(CommonButtonClicked(value));
              },
            ),
          ),
        ],
      ),
    );
  }
}
