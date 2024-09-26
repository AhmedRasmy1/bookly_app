import 'package:bookly_app/Features/home/presentation/views/widgets/custom_app_bar_home_page.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: const AppBarLogo(),
        actions: const [AppBarIcon()],
      ),
      body: const HomeViewBody(),
    );
  }
}
