import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

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
      color: Color(0xFF1E293B),
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 700),
          child: Column(
            children: [
              Text(
                'Get In Touch',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Feel free to reach out for opportunities, collaborations, or just to say hello!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 50),

              // Contact Info Cards
              _ContactInfoCard(
                icon: Icons.email,
                title: 'Email',
                value: 'ahmedsabry7333@gmail.com',
                onTap: () => _launchUrl('mailto:ahmedsabry7333@gmail.com'),
              ),
              SizedBox(height: 20),
              _ContactInfoCard(
                icon: Icons.phone,
                title: 'Phone',
                value: '+20 1020754179',
                onTap: () => _launchUrl('tel:+201020754179'),
              ),
              SizedBox(height: 20),
              _ContactInfoCard(
                icon: Icons.location_on,
                title: 'Location',
                value: 'Cairo, Egypt',
                onTap: null,
              ),

              SizedBox(height: 40),

              // Social Links
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _SocialLink(
                    'LinkedIn',
                    'linkedin.com/in/ahmed-sabry-985730222',
                        () => _launchUrl('https://linkedin.com/in/ahmed-sabry-985730222'),
                  ),
                  SizedBox(width: 30),
                  _SocialLink(
                    'GitHub',
                    'github.com/ahmedjr5050',
                        () => _launchUrl('https://github.com/ahmedjr5050'),
                  ),
                ],
              ),

              SizedBox(height: 50),

              // Education Section
              Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Color(0xFF0F172A),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.deepPurple.withOpacity(0.3)),
                ),
                child: Column(
                  children: [
                    Text(
                      'Education',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Bachelor of Engineering',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepPurple[300],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Computer Science and Engineering',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Graduated: June 2023 | Grade: Good with Honors',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white60,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _ContactInfoCard({
    required IconData icon,
    required String title,
    required String value,
    required VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFF0F172A),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.deepPurple.withOpacity(0.3)),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.deepPurple.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: Colors.deepPurple[300], size: 28),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white60,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    value,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            if (onTap != null)
              Icon(Icons.arrow_forward_ios, color: Colors.white60, size: 16),
          ],
        ),
      ),
    );
  }

  Widget _SocialLink(String platform, String handle, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            platform,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white70,
            ),
          ),
          SizedBox(height: 5),
          Text(
            handle,
            style: TextStyle(
              fontSize: 14,
              color: Colors.deepPurple[300],
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}