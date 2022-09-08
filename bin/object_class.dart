import 'package:object_class/object_class.dart' as object_class;
void main() {
  Student s1 = Student(name: 'ebu', nid: 1,);
  Student s2 = Student(name: 'ebrahim', nid: 21335, mobile: '01795112199');
  Student s3 = Student(name: 'sujon', nid: 21336, mobile: '01795112100');

  Department d1 = Department(departmentName: 'CSE', id: 'CSE-123', batch: '48');
  Department d2 = Department(departmentName: 'EEE', id: 'EEE-456', batch: '47');
  Department d3 = Department(departmentName: 'English', id: 'English-567', batch: '43');

  s1.department = d1;
  s2.department = d2;
  s3.department = d3;
  
  s1.courseList = [
    Course(courseName: 'Android', courseCredit: 3.0, code: 'Android1'),
    Course(courseName: 'iOS', courseCredit: 4.0, code: 'iOS2'),
    Course(courseName: 'React Native', courseCredit: 5.0, code: 'React3'),
  ];

  s2.courseList = [
    Course(courseName: 'Laravel', courseCredit: 3.0, code: 'Laravel3'),
    Course(courseName: 'Ionic', courseCredit: 4.0, code: 'Ionic4'),
  ];

  s3.courseList = [
    Course(courseName: 'Bangla', courseCredit: 5.0, code: 'Bangla1'),
    Course(courseName: 'English', courseCredit: 7.0, code: 'English2'),
    Course(courseName: 'Math', courseCredit: 6.0, code: 'Math4'),
    Course(courseName: 'History', courseCredit: 8.0, code: 'History3'),
  ];

  final studentList = [s1,s2,s3];
  for (var student in studentList) {
    int serial = 1;
    print(student.name);
    print('_______________');
    for(var course in student.courseList!) {
      print('$serial. ${course.courseName} - ${course.courseCredit}');
      serial++;
    }
    print('\n');
  }
}
class Student {
  String? name;
  int? nid;
  String? mobile;
  Department? department;
  List<Course>? courseList;

  Student({
    required this.name,
    required this.nid,
    this.department,
    this.courseList,
    this.mobile,}) : assert(nid! >0);
  getInfo() => '$name $nid $mobile';
}

class  Department {
  String departmentName;
  String id;
  String batch;
  List<Student>? student;
  Department({required this.departmentName, required this.id, required this.batch});
}

class Course {
  String courseName;
  double courseCredit;
  String code;

  Course({
    required this.courseName,
    required this.courseCredit,
    required this.code}): assert (courseCredit > 0.0);
}