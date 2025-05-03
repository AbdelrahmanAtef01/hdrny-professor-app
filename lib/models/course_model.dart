class CourseModel {
  final String courseId;
  final String classMode;
  final String classHall;
  final String classStartTime;
  final int group;

  CourseModel({
    required this.courseId,
    required this.classMode,
    required this.classHall,
    required this.classStartTime,
    required this.group,
  });

  factory CourseModel.fromJson(Map<String, dynamic> json) {
    return CourseModel(
      courseId: json['course_id'],
      classMode: json['class_mode'],
      classHall: json['class_hall'],
      classStartTime: json['class_start_time'],
      group: json['group'],
    );
  }
}
