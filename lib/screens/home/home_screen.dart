import 'package:flutter/material.dart';
import '../../widgets/common/section_header.dart';
import '../../widgets/common/app_banner_carousel.dart';
import '../../widgets/common/menu_grid.dart';
import '../../widgets/common/automation_grid.dart';
import '../../theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Neighbor (隣人)',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1A1A1A),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              size: 24,
              color: Color(0xFF1A1A1A),
            ),
            onPressed: () {
              debugPrint('Menu pressed');
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Menu pressed'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Section
            const SectionHeader(title: 'WELCOME'),
            const SizedBox(height: 8),
            Text(
              'Welcome to your community hub',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF1A1A1A),
              ),
            ),
            const SizedBox(height: 24),
            
            // App Banner Carousel
            const AppBannerCarousel(),
            const SizedBox(height: 32),
            
            // Menu Section
            const SectionHeader(title: 'MENU'),
            const SizedBox(height: 8),
            const MenuGrid(),
            const SizedBox(height: 32),
            
            // Home Automation Section
            const SectionHeader(title: 'HOME AUTOMATION'),
            const SizedBox(height: 8),
            const AutomationGrid(),
            const SizedBox(height: 32),
          ],
        ),
      ),

    );
  }
}