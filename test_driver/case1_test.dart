import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App', () {

    final appBarWidgets = find.byValueKey('appBarWidgets');
    final numberTriviaText = find.byValueKey('numberTriviaText');
    // final messageDisplay = find.byValueKey('messageDisplay');
    final messageText = find.byValueKey('messageText');
    final textField = find.byValueKey('textField');
    final searchButton = find.byValueKey('searchButton');
    final searchText = find.byValueKey('searchText');
    final getRandomTriviaText = find.byValueKey('getRandomTriviaText');
    final getRandomTriviaButton = find.byValueKey('getRandomTriviaButton');




    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('displaying widgets on the home page', () async {

      await driver.waitFor(appBarWidgets);
      expect(await driver.getText(numberTriviaText), "Number Trivia");
      // await driver.waitFor(messageDisplay);
      expect(await driver.getText(messageText), "Start searching!");
      expect(await driver.getText(textField), "");
      await driver.waitFor(searchButton);
      expect(await driver.getText(searchText), "Search");
      await driver.waitFor(getRandomTriviaButton);
      expect(await driver.getText(getRandomTriviaText), "Get random trivia");
    });
  });
}
