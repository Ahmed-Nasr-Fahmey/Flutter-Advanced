import 'package:flutter_advanced/core/routing/app_router.dart';
import 'package:flutter_advanced/doc_app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Test DocApp", (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(DocApp(appRouter: AppRouter()));

    Finder docAppFinder = find.byType(DocApp);
    expect(docAppFinder, findsOneWidget);
  });
}
