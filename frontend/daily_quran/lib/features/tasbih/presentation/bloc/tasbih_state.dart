import 'package:equatable/equatable.dart';

class TasbihState extends Equatable {
  final int count;
  final int dzikrIndex;
  const TasbihState({required this.count, required this.dzikrIndex});


  @override
  List<Object?> get props => [count];

  TasbihState copyWith({int? count, int? dzikrIndex}) {
    return TasbihState(
      count: count ?? this.count,
      dzikrIndex: dzikrIndex ?? this.dzikrIndex,
    );
  }
}