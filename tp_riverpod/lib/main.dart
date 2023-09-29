import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tp_riverpod/show1.dart';
import 'package:tp_riverpod/show2.dart';

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    print('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''');
  }
}

final counterProvider = StateProvider((ref) => 0, name: 'counter');

void main01() => runApp(const ProviderScope(child: MainApp()));

void main() {
  runApp(
    // L'ajout de ProviderScope active Riverpod pour l'ensemble du projet.
    // L'ajout de notre Logger à la liste des observateurs
    ProviderScope(observers: [Logger()], child: const MainApp()),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [Text('Compteur: $count'), const Show1(), const Show2()],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => ref.read(counterProvider.notifier).state++,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
