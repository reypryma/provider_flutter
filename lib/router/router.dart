import 'package:auto_route/auto_route_annotations.dart';
import 'package:sunao_nako/presentation/first_page.dart';
import 'package:sunao_nako/presentation/second_page.dart';
import 'package:sunao_nako/presentation/third_page.dart';

//flutter packages pub run build_runner watch ==delete-conflicting-outputs
@MaterialAutoRouter(routes: [
  MaterialRoute(page: FirstPage, initial: true),
  MaterialRoute(page: SecondPage),
  MaterialRoute(page: ThirdPage),
]) //CustomAutoRoute(..config)
class $Router {}
