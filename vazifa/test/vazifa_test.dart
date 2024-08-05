import 'package:test/test.dart';
import 'package:vazifa/src/vazifa_base.dart';

void main() {
  group('A group of tests', () {
    final vazifaBase = VazifaBase();

    test('linear search', () {
      expect(vazifaBase.linearSearch([1, 2, 3, 4, 5, 6, 7, 8, 9, 9], 5), 4);
    });

    test("triple search", () {
      expect(vazifaBase.search([1, 2, 3, 4, 5, 6, 7, 8, 9], 8), [7, 7, 7]);
    });
  });
}
