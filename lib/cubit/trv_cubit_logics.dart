import 'package:bloc_travel_app/cubit/trv_cubits_state.dart';
import 'package:bloc_travel_app/cubit/trv_cubits.dart';
import 'package:bloc_travel_app/pages/detail_page.dart';
import 'package:bloc_travel_app/pages/home_page.dart';
import 'package:bloc_travel_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class TrvCubitLogic extends StatefulWidget {
  const TrvCubitLogic({super.key});

  @override
  State<TrvCubitLogic> createState() => _TrvCubitLogicState();
}

class _TrvCubitLogicState extends State<TrvCubitLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TrvCubits, CubitState>(builder: ((context, state) {
        if (state is WelcomeStates) {
          return const WelcomePage();
        }
         if (state is LoadedStates) {
          return const HomePage();
        }
         if (state is DetailStates) {
          return const DetailPage();
        }
        if (state is LoadingStates) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Container();
        }
      })),
    );
  }
}
