import 'package:flutter/material.dart';

import 'theme.dart';

/// Vue de chargement centree, style noir et blanc.
class LeClochardLoadingView extends StatelessWidget {
  const LeClochardLoadingView({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator(color: LeClochardColors.black),
          if (message != null) ...[
            const SizedBox(height: 16),
            Text(
              message!,
              style: const TextStyle(color: LeClochardColors.grey),
            ),
          ],
        ],
      ),
    );
  }
}

/// Emplacement vide avec un message lorsque le contenu est absent.
class LeClochardEmptyView extends StatelessWidget {
  const LeClochardEmptyView({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(color: LeClochardColors.grey, fontSize: 16),
        ),
      ),
    );
  }
}

/// Barre d'erreur affichee en haut de l'ecran.
class LeClochardErrorBanner extends StatelessWidget {
  const LeClochardErrorBanner({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: LeClochardColors.black,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              const Icon(Icons.error_outline,
                  color: LeClochardColors.white, size: 20),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  message,
                  style: const TextStyle(color: LeClochardColors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}