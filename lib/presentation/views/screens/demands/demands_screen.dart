import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/router/app_router.gr.dart';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

class DemandsScreen extends StatelessWidget {
  const DemandsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demands of growth'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.pushRoute(const EarlyChildhood());
                },
                child: const Text('Two weeks -> 4 years'),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.secondary,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  context.pushRoute(const Childhood());
                },
                child: const Text('(5 -> 12) years'),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.secondary,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  context.pushRoute(const Adolescence());
                },
                child: const Text('(13 -> 21) years'),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.secondary,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  context.pushRoute(const Majority());
                },
                child: const Text('(22 -> 40) years'),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.secondary,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  context.pushRoute(const CenterOfAge());
                },
                child: const Text('(41 -> 60) years'),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.secondary,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  context.pushRoute(const Aging());
                },
                child: const Text('Over 60 years'),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.secondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
