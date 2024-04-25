import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lawapp/utils/routes/go_router.dart';
import 'package:lawapp/features/home/application/chat_cubit/chat_cubit.dart';
import 'package:lawapp/features/home/application/image_picker_cubit/image_picker_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ImagePickerCubit()),
        BlocProvider(create: (context) => ChatCubit()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'lawapp',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        routerConfig: goRouter,
      ),
    );
  }
}
