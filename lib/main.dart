import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:spotifyclone/core/config/theme/app_theme.dart';
import 'package:spotifyclone/keypad_screen.dart';
import 'package:spotifyclone/presentation/auth/pages/sign_in.dart';
import 'package:spotifyclone/presentation/choose_mode/bloc/theme_cubit.dart';
import 'package:spotifyclone/presentation/pages/splash.dart';
import 'package:spotifyclone/spotifyloginscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: (_) => ThemeCubit())],
        child: BlocBuilder<ThemeCubit, ThemeMode>(
          builder: (context, mode) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: AppTheme.lightTheme,
                darkTheme: AppTheme.darkTheme,
                themeMode: mode,
                home:  SplashPage
                ());
          },
        ));
  }
}
