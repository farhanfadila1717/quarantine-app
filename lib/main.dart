import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:quarantine_apps/bloc/blocs.dart';
import 'package:quarantine_apps/services/services.dart';
import 'package:quarantine_apps/shared/shared.dart';
import 'package:quarantine_apps/ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return StreamProvider.value(
      value: AuthServices.firebaseUserStream,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => PageBloc()),
          BlocProvider(create: (_) => UserBloc()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              color: Colors.white,
              elevation: 0,
              centerTitle: true,
              textTheme: TextTheme(
                // ignore: deprecated_member_use
                title: blackTextFont,
              ),
            ),
          ),
          home: Wrapper(),
        ),
      ),
    );
  }
}
