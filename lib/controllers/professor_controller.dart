import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/course_model.dart';

class ProfessorController {
  final String baseUrl =
      'https://mqnwicolialxwaljgtii.supabase.co/rest/v1/rpc/';

  Future<List<CourseModel>> fetchCourses(int professorId) async {
    final response = await http.post(
      Uri.parse('${baseUrl}professor_load_courses'),
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1xbndpY29saWFseHdhbGpndGlpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDYwMzM5NTEsImV4cCI6MjA2MTYwOTk1MX0._sunyFCXAA0gmGY1ij9bqYW_jMSNqW6463n0MAY7w3Y',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1xbndpY29saWFseHdhbGpndGlpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDYwMzM5NTEsImV4cCI6MjA2MTYwOTk1MX0._sunyFCXAA0gmGY1ij9bqYW_jMSNqW6463n0MAY7w3Y',
      },
      body: jsonEncode({'professor_id_input': professorId}),
    );

    final jsonData = jsonDecode(response.body) as List;
    return jsonData.map((e) => CourseModel.fromJson(e)).toList();
  }

  Future<void> endClass({
    required String courseId,
    required String classMode,
    required int group,
    required String date,
  }) async {
    await http.post(
      Uri.parse('${baseUrl}professor_take_absence'),
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1xbndpY29saWFseHdhbGpndGlpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDYwMzM5NTEsImV4cCI6MjA2MTYwOTk1MX0._sunyFCXAA0gmGY1ij9bqYW_jMSNqW6463n0MAY7w3Y',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1xbndpY29saWFseHdhbGpndGlpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDYwMzM5NTEsImV4cCI6MjA2MTYwOTk1MX0._sunyFCXAA0gmGY1ij9bqYW_jMSNqW6463n0MAY7w3Y',
      },
      body: jsonEncode({
        'course_id_input': courseId,
        'class_mode_input': classMode,
        'group_input': group,
        'date_input': date,
      }),
    );
  }
}
