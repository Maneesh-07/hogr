
import 'package:get/get.dart';
import 'package:hogr/views/home/home.dart';
part 'package:hogr/routes/routes.dart';

class AppPages { 
  static final pages = [
    GetPage(name: Routes.DASHBOARD, page: () => const HomeScreen()),
     ];
}
