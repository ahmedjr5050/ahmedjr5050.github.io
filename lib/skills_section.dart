import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 80, horizontal: 32),
      color: Color(0xFF1E293B),
      child: Column(
        children: [
          Text(
            'Technical Skills',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 50),
          _SkillCategory(
            'Mobile Development',
            [
              'Flutter Framework',
              'Dart',
              'Android Development',
              'iOS Development',
              'Huawei AppGallery',
              'Cross-Platform',
            ],
          ),
          SizedBox(height: 30),
          _SkillCategory(
            'State Management',
            [
              'BLoC Pattern',
              'Cubit',
              'Provider',
              'GetX',
            ],
          ),
          SizedBox(height: 30),
          _SkillCategory(
            'Backend & APIs',
            [
              'Firebase Auth',
              'Firebase Realtime DB',
              'Cloud Functions',
              'Azure AD',
              'RESTful APIs',
              'Paymob Gateway',
            ],
          ),
          SizedBox(height: 30),
          _SkillCategory(
            'Architecture & Testing',
            [
              'Clean Architecture',
              'SOLID Principles',
              'Test-Driven Development',
              'Unit Testing',
              'Code Coverage',
            ],
          ),
          SizedBox(height: 30),
          _SkillCategory(
            'DevOps & Tools',
            [
              'CI/CD Pipelines',
              'Fastlane',
              'CircleCI',
              'GitHub Actions',
              'Git & GitHub',
              'Agile Scrum',
            ],
          ),
          SizedBox(height: 30),
          _SkillCategory(
            'Additional Features',
            [
              'Google Maps API',
              'Huawei Maps',
              'QR Code Integration',
              'Real-Time Tracking',
              'Multi-Authentication',
              'Localization (AR/EN)',
            ],
          ),
        ],
      ),
    );
  }

  Widget _SkillCategory(String category, List<String> skills) {
    return Column(
      children: [
        Text(
          category,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple[300],
          ),
        ),
        SizedBox(height: 20),
        Wrap(
          spacing: 15,
          runSpacing: 15,
          alignment: WrapAlignment.center,
          children: skills.map((skill) => _SkillChip(skill)).toList(),
        ),
      ],
    );
  }

  Widget _SkillChip(String skill) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Color(0xFF0F172A),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.deepPurple.withOpacity(0.3)),
      ),
      child: Text(
        skill,
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    );
  }
}