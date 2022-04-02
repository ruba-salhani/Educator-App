import 'package:auto_route/auto_route.dart';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../router/app_router.gr.dart';

class ResponsibilitiesScreen extends StatelessWidget {
  const ResponsibilitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsibilities of education'),
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
                  context.pushRoute(const Faith());
                },
                child: const Text('Faith'),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.secondary,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  context.pushRoute(const Ethics());
                },
                child: const Text('Ethics'),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.secondary,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  context.pushRoute(const Physical());
                },
                child: const Text('Physical'),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.secondary,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  context.pushRoute(const Mental());
                },
                child: const Text('Mental'),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.secondary,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  context.pushRoute(const Sexual());
                },
                child: const Text('Sexual'),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.secondary,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  context.pushRoute(const Psychological());
                },
                child: const Text('Psychological'),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.secondary,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  context.pushRoute(const Social());
                },
                child: const Text('Social'),
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
