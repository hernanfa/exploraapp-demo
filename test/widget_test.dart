import 'package:flutter_test/flutter_test.dart';

import 'package:exploraec/main.dart';

void main() {
  testWidgets('BienvenidaScreen smoke test', (WidgetTester tester) async {
    // Renderizamos la aplicación ExploraEcApp
    await tester.pumpWidget(const ExploraEcApp());

    // Verificamos la presencia de los elementos principales de bienvenida
    expect(find.text('ExploraEC'), findsOneWidget);
    expect(find.text('Descubre y guarda lugares cerca de ti'), findsOneWidget);
    expect(find.text('Empezar'), findsOneWidget);
  });
}
