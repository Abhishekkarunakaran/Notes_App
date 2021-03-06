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

  Note({this.title, required this.body, this.date});
}
