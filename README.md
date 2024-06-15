# minimal_notes_app

Isar is a Local Database package.

## Usage of Isar

1. Install dependencies
```
flutter pub add isar isar_flutter_libs path_provider provider 
```

2. Create a model class.
```
import 'package:isar/isar.dart';

part 'note.g.dart';

@Collection()
class Note {
  Id id = Isar.autoIncrement;
  late String text;
}
```

3. Create a collection class.
run the following command, create `note.g.dart` file.
```
flutter pub run build_runner build
```



