import 'package:equatable/equatable.dart';

abstract class TasbihEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class TasbihStarted extends TasbihEvent {}

class TasbihIncrementPressed extends TasbihEvent {}

class TasbihResetPressed extends TasbihEvent {}