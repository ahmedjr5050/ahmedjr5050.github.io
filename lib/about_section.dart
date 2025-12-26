import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 100, horizontal: 32),
      child: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.deepPurple,
              child: Text(
                'AS',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Ahmed Sabry',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Software Engineer | Flutter Developer',
              style: TextStyle(
                fontSize: 24,
                color: Colors.deepPurple[300],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, color: Colors.white70, size: 20),
                SizedBox(width: 5),
                Text(
                  'Cairo, Egypt',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              constraints: BoxConstraints(maxWidth: 700),
              child: Text(
                'Results-driven Flutter Developer with 2+ years of experience building scalable cross-platform mobile applications for Android, iOS, and Huawei platforms. Delivered production apps with 10,000+ downloads across multiple app stores. Expert in implementing clean architecture, real-time systems, authentication protocols, and payment integration with modern state management patterns.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                  height: 1.6,
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _SocialButton(
                  Icons.code,
                  'GitHub',
                      () => _launchUrl('https://github.com/ahmedjr5050'),
                ),
                SizedBox(width: 20),
                _SocialButton(
                  Icons.work,
                  'LinkedIn',
                      () => _launchUrl('https://linkedin.com/in/ahmed-sabry-985730222'),
                ),
                SizedBox(width: 20),
                _SocialButton(
                  Icons.email,
                  'Email',
                      () => _launchUrl('mailto:ahmedsabry7333@gmail.com'),
                ),
                SizedBox(width: 20),
                _SocialButton(
                  Icons.phone,
                  'Phone',
                      () => _launchUrl('tel:+201020754179'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _SocialButton(IconData icon, String tooltip, VoidCallback onTap) {
    return Tooltip(
      message: tooltip,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(icon, color: Colors.white),
        ),
      ),
    );
  }
}