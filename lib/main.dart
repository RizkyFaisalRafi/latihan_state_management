import 'package:flutter/material.dart';
import 'package:latihan_state_management/provider/counter_provider.dart';
import 'package:latihan_state_management/view/provider_page.dart';
import 'package:provider/provider.dart';
import 'view/set_state_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ProviderPage(),
      ),
    );
  }
}
