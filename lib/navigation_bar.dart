import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final VoidCallback onAboutTap;
  final VoidCallback onSkillsTap;
  final VoidCallback onProjectsTap;
  final VoidCallback onContactTap;

  const CustomNavigationBar({
    required this.onAboutTap,
    required this.onSkillsTap,
    required this.onProjectsTap,
    required this.onContactTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xFF1E293B).withOpacity(0.9),
        border: Border(
          bottom: BorderSide(color: Colors.deepPurple.withOpacity(0.3)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Ahmed Sabry',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              _NavButton('About', onAboutTap),
              SizedBox(width: 20),
              _NavButton('Skills', onSkillsTap),
              SizedBox(width: 20),
              _NavButton('Projects', onProjectsTap),
              SizedBox(width: 20),
              _NavButton('Contact', onContactTap),
            ],
          ),
        ],
      ),
    );
  }

  Widget _NavButton(String text, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}