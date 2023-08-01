import 'package:foodie_bloc_demo/bloc/home_bloc.dart';
import 'package:foodie_bloc_demo/bloc/home_event.dart';
import 'package:foodie_bloc_demo/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie_bloc_demo/widgets/food_card_widget.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = context.read<HomeBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is HomeLoadingState) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is HomeSuccessFetchDataState) {
              return Center(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return FoodCard(food: state.foods[index]);
                  },
                  itemCount: state.foods.length,
                ),
              );
            }
            if (state is HomeErrorFetchDataState) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.errorMessage),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      child: const Text("Fetch Data"),
                      onPressed: () {
                        bloc.add(FetchDataEvent());
                      },
                    ),
                  ],
                ),
              );
            }

            return Center(
              child: ElevatedButton(
                child: const Text("Fetch Data"),
                onPressed: () {
                  bloc.add(FetchDataEvent());
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
