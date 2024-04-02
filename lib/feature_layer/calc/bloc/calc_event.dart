part of 'calc_bloc.dart';

sealed class ButtonClickEvent extends Equatable {
  const ButtonClickEvent();
}

final class CommonButtonClicked extends ButtonClickEvent {
  const CommonButtonClicked(this.value);
  final String value;

  @override
  List<Object> get props => [value];
}

final class EqualsButtonClicked extends ButtonClickEvent {
  const EqualsButtonClicked();
  @override
  List<Object> get props => [];
}

final class ClearButtonClicked extends ButtonClickEvent {
  const ClearButtonClicked();
  @override
  List<Object> get props => [];
}

final class ClearEntryButtonClicked extends ButtonClickEvent {
  const ClearEntryButtonClicked();
  @override
  List<Object> get props => [];
}
