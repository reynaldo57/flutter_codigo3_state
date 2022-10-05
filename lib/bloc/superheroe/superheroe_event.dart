

part of 'superheroe_bloc.dart';

@immutable
abstract class SuperuserEvent{}

class SuperheroeLoad extends SuperuserEvent{
  final Superheroe sup;
  SuperheroeLoad({required this.sup});
}

class SuperheroeChangeExperience extends SuperuserEvent{}

class SuperheroeAddPowers extends SuperuserEvent{}

class SuperheroeDelete extends SuperuserEvent{}