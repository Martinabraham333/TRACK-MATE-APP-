import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:track_mate/DATABASE.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/BUDGET_BLOC/budget_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/CATEGORY_BLOC/category_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/BLOC/EXPENSE_BLOC/expense_bloc.dart';
import 'package:track_mate/EXPENSE%20TRACKING/REPOSITORIES/budget_repository.dart';
import 'package:track_mate/EXPENSE%20TRACKING/REPOSITORIES/category_repository.dart';
import 'package:track_mate/EXPENSE%20TRACKING/REPOSITORIES/expense_repository.dart';

import 'package:track_mate/EXPENSE%20TRACKING/SCREENS/home_page.dart';
import 'package:track_mate/EXPENSE%20TRACKING/SCREENS/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
// await  resetDatabase();
  await initDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        RepositoryProvider(create: (context) => CategoryRepository()),
        BlocProvider(
          create: (context) => CategoryBloc(context.read<CategoryRepository>()),
        ),
        RepositoryProvider(create: (context) => ExpenseRepository()),
        BlocProvider(
          create: (context) => ExpenseBloc(context.read<ExpenseRepository>()),
        ),

        RepositoryProvider(create: (context) => BudgetRepository()),
        BlocProvider(
          create: (context) => BudgetBloc(context.read<BudgetRepository>()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
