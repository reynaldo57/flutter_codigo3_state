

part of 'superheroe_bloc.dart';

@immutable
abstract class SuperuserEvent{}

class SuperheroeLoad extends SuperuserEvent{
  final Superheroe sup;
  SuperheroeLoad({required this.sup});
}

class SuperheroeChangeExperience extends SuperuserEvent{
  int newExperience;
  SuperheroeChangeExperience({required this.newExperience});
}

class SuperheroeAddPowers extends SuperuserEvent{
  final String power;
  SuperheroeAddPowers({required this.power});
}

class SuperheroeDelete extends SuperuserEvent{}