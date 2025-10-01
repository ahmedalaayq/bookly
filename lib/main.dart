import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/dark_theme.dart';
import 'package:bookly/core/utils/size_config.dart';
import 'package:bookly/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final Dio dio = Dio();
  final ApiService apiService = ApiService(dio);

  HomeRemoteDataSourceImpl homeRemoteDataSourceImpl =
      HomeRemoteDataSourceImpl(apiService);
  homeRemoteDataSourceImpl.fetchFeaturedBooks();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context, dWidth: 375, dHeight: 812);
    return MaterialApp.router(
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
