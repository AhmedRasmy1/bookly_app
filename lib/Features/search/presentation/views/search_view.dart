import 'package:bookly_app/Core/utils/service_locator.dart';
import 'package:bookly_app/Features/search/presentation/manager/cubit/serach_books_cubit.dart';
import 'package:bookly_app/Features/search/repository/search_repo_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SerachBooksCubit(getIt.get<SearchRepoImpl>()),
      child: const Scaffold(
        body: SafeArea(
          child: SearchViewBody(),
        ),
      ),
    );
  }
}
