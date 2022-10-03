part of 'superheroe_cubit.dart';

@immutable
abstract class SuperheroeState{}


class SuperheroeInit extends SuperheroeState{
  final bool superheroeExist = false;

}

class SuperheroeCreate extends SuperheroeState{
  final bool superheroeExist = true;
  final Superheroe superheroe;

  SuperheroeCreate({
    required this.superheroe
  });

}

