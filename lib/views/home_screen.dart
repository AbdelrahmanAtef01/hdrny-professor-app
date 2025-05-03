import 'package:flutter/material.dart';
import '../controllers/professor_controller.dart';
import '../models/course_model.dart';
import '../utils/app_colors.dart';
import '../widgets/course_card.dart';
import 'qr_screen.dart';

class HomeScreen extends StatefulWidget {
  final int professorId;

  const HomeScreen({required this.professorId, super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = ProfessorController();
  late Future<List<CourseModel>> courses;

  @override
  void initState() {
    super.initState();
    courses = controller.fetchCourses(widget.professorId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      appBar: AppBar(
        title: const Text('My Courses'),
        backgroundColor: AppColors.darkBlue,
        foregroundColor: AppColors.offWhite,
      ),
      body: FutureBuilder<List<CourseModel>>(
        future: courses,
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return const Center(child: CircularProgressIndicator());
          return ListView(
            children:
                snapshot.data!
                    .map(
                      (course) => CourseCard(
                        course: course,
                        onTap:
                            () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => QRScreen(course: course),
                              ),
                            ),
                      ),
                    )
                    .toList(),
          );
        },
      ),
    );
  }
}
