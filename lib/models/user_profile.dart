/// User profile model for the Neighbor app
/// Contains data structure for user profile information
import 'package:flutter/material.dart';
class UserProfile {
  final String name;
  final String gender;
  final String age;
  final String address;
  final String avatarUrl;
  final List<ProfileItem> diseases;
  final List<ProfileItem> livingSituation;

  const UserProfile({
    required this.name,
    required this.gender,
    required this.age,
    required this.address,
    required this.avatarUrl,
    required this.diseases,
    required this.livingSituation,
  });
}

/// Profile item with icon and text
class ProfileItem {
  final String text;
  final IconData icon;

  const ProfileItem({
    required this.text,
    required this.icon,
  });
}
