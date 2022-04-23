//flutter pub run build_runner build
import 'dart:io';

import 'package:moor/moor.dart';
// These imports are only needed to open the database
import 'package:moor/ffi.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

@UseMoor(
  // relative import for the moor file. Moor also supports `package:`
  // imports
  include: {'table.moor'},
)
class AppDb extends _$AppDb {
  AppDb() : super(_openConnection());

  @override
  int get schemaVersion => 2;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    print(dbFolder);
    final file = File(p.join(dbFolder.path, "Ayurvedic_Database.sqlite"));
    print(file);
    return VmDatabase(file);
  });
}
