import 'package:bmcah/constants/app_constants.dart';
import 'package:bmcah/screen/department_details.dart';
import 'package:bmcah/screen/deptartment.dart';
import 'package:bmcah/screen/doctors_view.dart';
import 'package:bmcah/screen/home.dart';
import 'package:bmcah/screen/signin.dart';
import 'package:bmcah/screen/signup.dart';

class AppRoutes {
  static final myInitRoute = AppConstant.homePage;
  static final routes = {
    AppConstant.homePage: (context) => HomePage(),
    AppConstant.signinPage: (context) => SigninPage(),
    AppConstant.signupPage: (context) => SignupPage(),
    AppConstant.deptPage: (context) => DepartmentView(),
    AppConstant.doctorPage: (context) => DoctorsView(),
    AppConstant.deptDetailPage: (context) => DepartmentDetails(),
  };
}
