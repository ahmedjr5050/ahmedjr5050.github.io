import 'package:flutter/material.dart';
import 'package:my_portfolio/projects_screen.dart';
import 'package:my_portfolio/skills_section.dart';

import 'about_section.dart';
import 'contact_section.dart';
import 'navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomNavigationBar(
            onAboutTap: () => _scrollToSection(_aboutKey),
            onSkillsTap: () => _scrollToSection(_skillsKey),
            onProjectsTap: () => _scrollToSection(_projectsKey),
            onContactTap: () => _scrollToSection(_contactKey),
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  AboutSection(key: _aboutKey),
                  SkillsSection(key: _skillsKey),
                  ProjectsSection(key: _projectsKey),
                  ContactSection(key: _contactKey),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}