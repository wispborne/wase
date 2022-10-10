import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wase/appState.dart';
import 'package:wase/loading/loadVanilla.dart';
import 'package:wase/settings.dart';
import 'package:wase/shortcuts.dart';
import 'package:wase/utils.dart';

import 'menu.dart';

void main() {
  Fimber.plantTree(DebugTree());
  Fimber.i("Logging started.");
  runApp(ProviderScope(observers: [SettingSaver()], child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orange = createMaterialColor(const Color.fromARGB(255, 255, 186, 8));
    final pink = createMaterialColor(const Color.fromARGB(255, 222, 13, 146));
    const useCustomDarkTheme = true;

    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: useCustomDarkTheme
          ? ThemeData.from(
              colorScheme: ColorScheme.dark(primary: pink, background: Colors.grey[900]!, surface: Colors.grey[850]!), useMaterial3: true)
          : ThemeData.dark(useMaterial3: true),
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: orange,
      ),
      home: CallbackShortcuts(
          bindings: WaseShortcutBindings.getShortcuts(ref), child: const Focus(autofocus: true, child: MyHomePage(title: 'W.A.S.E'))),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(children: [const Expanded(child: WaseMenu())]),
          Text(ref.watch(AppState.ship)?.toString() ?? "")
        ],
      ),
    );
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      loadGameData(ref);
    });
  }
}
