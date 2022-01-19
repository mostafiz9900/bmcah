import 'package:bmcah/screens/academic_view.dart';
import 'package:bmcah/screens/investigation_view.dart';
import 'package:bmcah/screens/teacher_view.dart';

import '../screens/user_view.dart';

import '../constants/app_constants.dart';
import '../screens/department_details.dart';
import '../screens/deptartment.dart';
import '../screens/doctors_view.dart';
import '../screens/home.dart';
import '../screens/signin.dart';
import '../screens/signup.dart';

class AppRoutes {
  static final myInitRoute = AppConstant.homePage;
  static final routes = {
    AppConstant.homePage: (context) => HomePage(),
    AppConstant.signinPage: (context) => SigninPage(),
    AppConstant.signupPage: (context) => SignupPage(),
    AppConstant.deptPage: (context) => DepartmentView(),
    AppConstant.doctorPage: (context) => DoctorsView(),
    AppConstant.deptDetailPage: (context) => DepartmentDetails(),
    AppConstant.userPage: (context) => UserView(),
    AppConstant.academicPage: (context) => AcademicView(),
    AppConstant.teacherPage: (context) => TeacherView(),
    AppConstant.investPage: (context) => InvestigationView(),
  };
}
