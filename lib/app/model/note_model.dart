import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class Note extends HiveObject {
  @HiveField(0)
  String? title;

  @HiveField(1)
  late String body;

  @HiveField(2)
  String? date;

  @HiveField(3)
  int? color;

  Note({this.title, required this.body, this.color, this.date});
}
