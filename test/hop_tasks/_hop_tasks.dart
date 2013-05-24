library test_hop_tasks;

import 'dart:async';
import 'dart:io';
import 'package:pathos/path.dart' as pathos;
import 'package:unittest/unittest.dart';
import 'package:bot/bot.dart';
import 'package:bot_io/bot_git.dart';
import 'package:bot_io/bot_io.dart';
import 'package:bot/bot_test.dart';
import 'package:hop/hop.dart';
import 'package:hop/hop_tasks.dart';
import '../hop/_hop.dart';

part 'process_tests.dart';
part 'git_tests.dart';
part 'dartanalyzer_tests.dart';
part 'dart_analyzer_tests.dart';
part 'compiler_tests.dart';

void main() {
  group('hop_tasks', () {
    ProcessTests.run();
    GitTests.register();
    DartAnalyzerTests.register();
    Dart_AnalyzerTests.register();
    CompilerTests.register();
  });
}
