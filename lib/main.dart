import 'Core/utils/app_router.dart';
import 'Core/utils/service_locator.dart';
import 'Features/home/data/repository/home_repo_impl.dart';
import 'Features/home/presentation/manager/fetured_books_cubit/fetured_books_cubit.dart';
import 'Features/home/presentation/manager/newset_books_cubit/newsest_books_cubit.dart';
import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..featchFuturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..featchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
