import 'package:hive/hive.dart';

part 'relationships.g.dart';

@HiveType(typeId: 1)
enum Relationship {
  @HiveField(0)
  Family,
  @HiveField(1)
  Friend,
}
