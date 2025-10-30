
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotreload/features/auth/presentation/widgets/login_form.dart';
import 'package:provider/provider.dart';

import '../providers/auth_notifier.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final authNotifier = context.watch<AuthNotifier>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Iniciar sesión'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock_outline,
                size: 80,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(height: 32),
              Text(
                'Bienvenido de nuevo',
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32),
              const LoginForm(),
              const SizedBox(height: 24),
              if (authNotifier.isLoading)
                const CircularProgressIndicator()
              else
                ElevatedButton.icon(
                  onPressed: () {
                    authNotifier.login();
                  },
                  icon: const Icon(Icons.login),
                  label: const Text('Ingresar'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}