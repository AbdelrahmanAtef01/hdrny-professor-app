import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../models/course_model.dart';
import '../controllers/professor_controller.dart';
import '../utils/app_colors.dart';

class QRScreen extends StatelessWidget {
  final CourseModel course;

  const QRScreen({required this.course, super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ProfessorController();
    final String today = DateTime.now().toIso8601String().split('T').first;

    return Scaffold(
      backgroundColor: AppColors.offWhite,
      appBar: AppBar(
        title: Text(course.courseId),
        backgroundColor: AppColors.darkBlue,
        foregroundColor: AppColors.offWhite,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QrImageView(
              data: '${course.courseId},${course.classMode}',
              size: 200,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.lightBlue,
                foregroundColor: AppColors.offWhite,
              ),
              onPressed: () {
                controller.endClass(
                  courseId: course.courseId,
                  classMode: course.classMode,
                  group: course.group,
                  date: today,
                );
                Navigator.pop(context);
              },
              child: const Text("End Class"),
            ),
          ],
        ),
      ),
    );
  }
}
