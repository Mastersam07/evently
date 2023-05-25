import 'package:evently/evently.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('test page transition', (WidgetTester tester) async {
    await tester.pumpWidget(
      EventApp(
        home: const Text('Page 1'),
        theme: const EventlyThemeData(),
        routes: <String, WidgetBuilder>{
          '/next': (BuildContext context) {
            return const Text('Page 2');
          },
        },
      ),
    );

    tester.state<NavigatorState>(find.byType(Navigator)).pushNamed('/next');
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 1));

    await tester.pump(const Duration(milliseconds: 300));

    // Page 2 covers page 1.
    expect(find.text('Page 1'), findsNothing);
    expect(find.text('Page 2'), isOnstage);

    tester.state<NavigatorState>(find.byType(Navigator)).pop();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 1));

    await tester.pump(const Duration(milliseconds: 300));

    expect(find.text('Page 1'), isOnstage);
    expect(find.text('Page 2'), findsNothing);
  }, variant: TargetPlatformVariant.only(TargetPlatform.android));
}
