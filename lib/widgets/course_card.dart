import 'package:flutter/material.dart';
import '../models/course_model.dart';
import '../utils/app_colors.dart';
import '../widgets/info_box.dart';

class CourseCard extends StatelessWidget {
  final CourseModel course;
  final VoidCallback onTap;

  const CourseCard({required this.course, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.darkBlue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      course.courseId,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.beige,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        InfoBox(label: 'Class Type', value: course.classMode),
                        InfoBox(
                          label: 'Start Time',
                          value: course.classStartTime,
                        ),
                        InfoBox(
                          label: 'Group',
                          value: course.group.toStringAsFixed(0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Icon(Icons.qr_code, size: 30),
            ],
          ),
        ),
      ),
    );
  }
}
