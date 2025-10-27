import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotreload/features/themeSchema/presentation/widgets/card_schema.dart';

import '../../../../core/router/app_routes.dart';

class ThemeScreen extends StatelessWidget {
  final String msn;
  const ThemeScreen({super.key, required this.msn});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text('Param: $msn'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home, (route) => false);
          }, icon: Icon(Icons.alarm))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    Theme.of(context).colorScheme.primary,
                  ),
                  foregroundColor: WidgetStateProperty.all(
                    Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                child: Text("Iniciar Sesion"),
              ),
            ),
            Text("Display large", style: Theme.of(context).textTheme.displayLarge,),
            Text("Headline Medium", style: Theme.of(context).textTheme.headlineMedium,),
            Text("Title small", style: Theme.of(context).textTheme.titleSmall,),
            Text("Body Large", style: Theme.of(context).textTheme.bodyLarge,),
            Text("Label Medium", style: Theme.of(context).textTheme.labelMedium,),
          ],
        ),
      ),
    ));
  }
}
