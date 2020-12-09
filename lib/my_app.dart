import 'package:coronavirus_app/Router.dart';
import 'package:coronavirus_app/app_config.dart';
import 'package:coronavirus_app/model/repo/search_repository.dart';
import 'package:coronavirus_app/my_const/COLOR_CONST.dart';
import 'package:coronavirus_app/screen/search/bloc/search_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var initialRoute = AppConfig.of(context).initialRoute;

    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: COLOR_CONST.BLACK2,
        accentColor: COLOR_CONST.BLACK2,
        hoverColor: COLOR_CONST.GREEN,
        fontFamily: 'Roboto',
      ),
      onGenerateRoute: Router.generateRoute,
      initialRoute: initialRoute,
    );
  }

  static void initSystemDefault() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: COLOR_CONST.STATUS_BAR,
    ));
  }

  static Widget runWidget(){
    WidgetsFlutterBinding.ensureInitialized();
    //BlocSupervisor.delegate = SimpleBlocDelegate();

    final SearchRepository searchRepository=SearchRepository();
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<SearchRepository>(create: (context)=>searchRepository,)
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context)=> SearchBloc(repository: searchRepository),
          )
        ],
        child: MyApp(),
      ),
    );
  }
}
