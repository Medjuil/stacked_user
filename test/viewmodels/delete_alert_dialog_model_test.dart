import 'package:flutter_test/flutter_test.dart';
import 'package:sky_stacked/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('DeleteAlertDialogModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
