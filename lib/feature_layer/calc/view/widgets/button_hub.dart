import 'package:flutter/material.dart';

class ButtonHub extends StatelessWidget {
  const ButtonHub({
    super.key,
    required this.onClearEntryButtonClicked,
    required this.onClearButtonClicked,
    required this.onEqualsButtonClicked,
    required this.onCommonButtonClicked,
  });

  final void Function() onClearEntryButtonClicked;

  final void Function() onClearButtonClicked;

  final void Function() onEqualsButtonClicked;

  final void Function(String value) onCommonButtonClicked;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: <Widget>[
        Button(
          value: '%',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onCommonButtonClicked(value),
        ),
        Button(
          value: 'CE',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onClearEntryButtonClicked(),
        ),
        Button(
          value: 'C',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onClearButtonClicked(),
        ),
        Button(value: '', color: Theme.of(context).colorScheme.primary),
        Button(
          value: '7',
          onTap: (value) => onCommonButtonClicked(value),
        ),
        Button(
          value: '8',
          onTap: (value) => onCommonButtonClicked(value),
        ),
        Button(
          value: '9',
          onTap: (value) => onCommonButtonClicked(value),
        ),
        Button(
          value: '/',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onCommonButtonClicked(value),
        ),
        Button(
          value: '4',
          onTap: (value) => onCommonButtonClicked(value),
        ),
        Button(
          value: '5',
          onTap: (value) => onCommonButtonClicked(value),
        ),
        Button(
          value: '6',
          onTap: (value) => onCommonButtonClicked(value),
        ),
        Button(
          value: '*',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onCommonButtonClicked(value),
        ),
        Button(
          value: '1',
          onTap: (value) => onCommonButtonClicked(value),
        ),
        Button(
          value: '2',
          onTap: (value) => onCommonButtonClicked(value),
        ),
        Button(
          value: '3',
          onTap: (value) => onCommonButtonClicked(value),
        ),
        Button(
          value: '+',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onCommonButtonClicked(value),
        ),
        Button(
          value: '-',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onCommonButtonClicked(value),
        ),
        Button(
          value: '0',
          onTap: (value) => onCommonButtonClicked(value),
        ),
        Button(
          value: '.',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onCommonButtonClicked(value),
        ),
        Button(
          value: '=',
          color: Theme.of(context).colorScheme.onTertiary,
          onTap: (value) => onEqualsButtonClicked(),
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final String value;
  final Color? color;
  final void Function(String value)? onTap;
  const Button({super.key, required this.value, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).colorScheme.primaryContainer;
    return Material(
      color: color,
      child: InkWell(
        onTap: onTap == null ? null : () => onTap!(value),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Text(
              value,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ),
      ),
    );
  }
}
