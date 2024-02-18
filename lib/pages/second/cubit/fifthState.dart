class FifthState {
  final int? diceTapone;
  final int? diceTaptwo;
  FifthState({this.diceTapone, this.diceTaptwo});
  FifthState copyWith({int? diceTapone, int? diceTaptwo}) {
    return FifthState(
      diceTapone: diceTapone ?? this.diceTaptwo,
      diceTaptwo: diceTaptwo ?? this.diceTapone,
    );
  }
}
