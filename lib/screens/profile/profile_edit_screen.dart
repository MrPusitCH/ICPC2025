/// Profile edit screen for the Neighbor app
/// Form for editing user profile information
import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../router/app_router.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.lightBackground,
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
          style: AppTheme.titleMedium,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => AppRouter.pop(context),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.edit_outlined,
              size: 64,
              color: AppTheme.primaryBlue,
            ),
            SizedBox(height: AppTheme.spacing16),
            Text(
              'Edit Profile',
              style: AppTheme.titleLarge,
            ),
            SizedBox(height: AppTheme.spacing8),
            Text(
              'Coming Soon',
              style: AppTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
