import 'package:equatable/equatable.dart';

class TasbihState extends Equatable {
  final int count;
  const TasbihState({required this.count});

  @override
  List<Object?> get props => [count];

  TasbihState copyWith({int? count}) {
    return TasbihState(count: count ?? this.count);
  }
}