import 'package:build_runner/build_runner.dart' as _i1;
import 'package:built_value_generator/builder.dart' as _i2;
import 'dart:isolate' as _i3;

final _builders = [
  _i1.apply('built_value_generator|built_value', [_i2.builtValue],
      _i1.toDependentsOf('built_value_generator'),
      hideOutput: false)
];
main(List<String> args, [_i3.SendPort sendPort]) async {
  var result = await _i1.run(args, _builders);
  sendPort?.send(result);
}
