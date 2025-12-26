import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({Key? key}) : super(key: key);

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 80, horizontal: 32),
      child: Column(
        children: [
          Text(
            'Professional Experience & Projects',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 50),

          // Shrouk Academy Project
          _ExperienceCard(
            company: 'Shrouk Academy',
            role: 'Junior Flutter Developer',
            period: '2023 - Present',
            projectName: 'EIShorouk Academy App',
            description: 'Cross-platform mobile application serving 10,000+ students and 3,000+ faculty members',
            achievements: [
              '10,000+ total downloads across iOS, Android, and Huawei',
              'Real-time bus tracking system serving 1,000+ students daily',
              'Azure AD authentication with QR-based attendance',
              'Reduced code complexity by 50% using Clean Architecture',
              'Improved crash rate by 45%, app rating to 4.2 stars',
              'Increased code coverage from 20% to 75%',
            ],
            technologies: [
              'Flutter',
              'BLoC',
              'Firebase',
              'Azure AD',
              'Google Maps',
              'CI/CD',
              'Clean Architecture',
            ],
            storeLinks: {
              'App Store': 'https://apps.apple.com/eg/app/el-shorouk-academy-students/id1661759970',
              'Play Store': 'https://play.google.com/store/apps/details?id=eg.edu.sha.shaApp&hl=ar',
              'Huawei': 'https://appgallery.huawei.com/app/C107297557',
            },
          ),

          SizedBox(height: 40),

          // Naguib Selim Project
          _ExperienceCard(
            company: 'Naguib Selim',
            role: 'Junior Flutter Developer',
            period: '2024',
            projectName: 'Naguib Selim E-Commerce App',
            description: 'Full-featured e-commerce mobile application with 4.5+ star rating',
            achievements: [
              'Paymob payment gateway handling 500+ monthly transactions',
              'Multi-authentication (Facebook, Gmail, Email)',
              'Dual registration system for companies and workshops',
              'Improved user engagement by 35% with UI redesign',
              'Bilingual support (Arabic/English) with RTL optimization',
              'Achieved 70% code coverage, reduced bugs by 40%',
            ],
            technologies: [
              'Flutter',
              'Paymob Gateway',
              'Firebase Auth',
              'Material Design',
              'Unit Testing',
              'Localization',
            ],
            storeLinks: {
              'App Store': 'https://apps.apple.com/us/app/naguib-selim/id6477354338',
            },
          ),
        ],
      ),
    );
  }

  Widget _ExperienceCard({
    required String company,
    required String role,
    required String period,
    required String projectName,
    required String description,
    required List<String> achievements,
    required List<String> technologies,
    required Map<String, String> storeLinks,
  }) {
    return Container(
      constraints: BoxConstraints(maxWidth: 900),
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.deepPurple.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      company,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple[300],
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      role,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                period,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            projectName,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(
              fontSize: 17,
              color: Colors.white70,
              height: 1.5,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Key Achievements:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          ...achievements.map((achievement) => Padding(
            padding: EdgeInsets.only(bottom: 8, left: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• ', style: TextStyle(color: Colors.deepPurple[300], fontSize: 20)),
                Expanded(
                  child: Text(
                    achievement,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      height: 1.4,
                    ),
                  ),
                ),
              ],
            ),
          )),
          SizedBox(height: 20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: technologies
                .map((tech) => Chip(
              label: Text(tech, style: TextStyle(fontSize: 13)),
              backgroundColor: Colors.deepPurple.withOpacity(0.3),
              labelStyle: TextStyle(color: Colors.deepPurple[200]),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            ))
                .toList(),
          ),
          SizedBox(height: 20),
          Wrap(
            spacing: 15,
            runSpacing: 10,
            children: storeLinks.entries
                .map((entry) => OutlinedButton.icon(
              onPressed: () => _launchUrl(entry.value),
              icon: Icon(Icons.store, size: 18),
              label: Text(entry.key),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.deepPurple[300],
                side: BorderSide(color: Colors.deepPurple.withOpacity(0.5)),
              ),
            ))
                .toList(),
          ),
        ],
      ),
    );
  }
}