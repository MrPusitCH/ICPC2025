import 'package:flutter/material.dart';
import '../../widgets/profile/profile_header.dart';
import '../../widgets/profile/profile_section_card.dart';
import '../../services/mock_data_service.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1A1A1A),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        actions: [
          // Settings icon
          IconButton(
            icon: const Icon(
              Icons.settings_outlined,
              color: Color(0xFF1E88E5),
              size: 24,
            ),
            onPressed: () {
              // Navigate to settings screen if it exists
              try {
                Navigator.pushNamed(context, '/settings');
              } catch (e) {
                // Show placeholder message if route doesn't exist
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Settings screen coming soon!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              }
            },
          ),
          // Edit icon
          IconButton(
            icon: const Icon(
              Icons.edit_outlined,
              color: Color(0xFF1E88E5),
              size: 24,
            ),
            onPressed: () {
              // Navigate to profile edit screen if it exists
              try {
                Navigator.pushNamed(context, '/profile/edit');
              } catch (e) {
                // Show placeholder message if route doesn't exist
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Profile edit screen coming soon!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header
            ProfileHeader(
              avatar: MockDataService.getUserProfile().avatarUrl,
              name: MockDataService.getUserProfile().name,
              gender: MockDataService.getUserProfile().gender,
              age: MockDataService.getUserProfile().age,
              address: MockDataService.getUserProfile().address,
            ),
            const SizedBox(height: 16),
            
                         // Section Header
             const Text(
               'Detailed profile',
               style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.w600,
                 color: Color(0xFF1A1A1A),
                 letterSpacing: 0.5,
               ),
             ),
             const SizedBox(height: 12),
             
                         // Disease Section
            ProfileSectionCard(
              title: 'Disease',
              items: MockDataService.getUserProfile().diseases,
            ),
            const SizedBox(height: 12),
            
            // Living Situation Section
            ProfileSectionCard(
              title: 'Living situation',
              items: MockDataService.getUserProfile().livingSituation,
            ),
            const SizedBox(height: 32), // Bottom padding
          ],
        ),
      ),
    );
  }
}
