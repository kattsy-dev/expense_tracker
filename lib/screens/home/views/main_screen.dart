import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                      ),
                    ),
                    Icon(
                      CupertinoIcons.person_fill,
                      size: 30,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome!',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.outline),
                    ),
                    Text(
                      'Katt',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface),
                    ),
                  ],
                ),
                // Spacer to push the icon to the far right
                const Spacer(),

                IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.settings)),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.tertiary,
                  ],
                  transform: const GradientRotation(pi / 4),
                ),
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4.0, // Softens the shadow's edges
                    color: Colors.grey, // Sets the shadow's color
                    offset: Offset(3,
                        3), // Positions the shadow 2 pixels right and 2 pixels down
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Total Balance',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold, // Make the text bold
                      color: Colors.white, // Set a color for the text
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'P500',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold, // Make the text bold
                      color: Colors.white, // Set a color for the text
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: const Center(
                                child: Icon(CupertinoIcons.arrow_down,
                                    size: 12, color: Colors.green),
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Income',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight:
                                        FontWeight.w400, // Make the text bold
                                    color: Colors
                                        .white, // Set a color for the text
                                  ),
                                ),
                                Text(
                                  'P2500',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight:
                                        FontWeight.w400, // Make the text bold
                                    color: Colors
                                        .white, // Set a color for the text
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: const Center(
                                child: Icon(CupertinoIcons.arrow_down,
                                    size: 12, color: Colors.green),
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Expenses',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight:
                                        FontWeight.w400, // Make the text bold
                                    color: Colors
                                        .white, // Set a color for the text
                                  ),
                                ),
                                Text(
                                  'P25002',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight:
                                        FontWeight.w400, // Make the text bold
                                    color: Colors
                                        .white, // Set a color for the text
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transactions',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold, // Make the text bold
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface, // Set a color for the text
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400, // Make the text bold
                      color: Theme.of(context)
                          .colorScheme
                          .outline, // Set a color for the text
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: const BoxDecoration(
                                          color: Colors.yellow,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      const Icon(
                                        Icons.food_bank,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    'Food',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight
                                            .w500, // Make the text bold
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSurface),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '-\$45.00',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight
                                            .w400, // Make the text bold
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSurface),
                                  ),
                                  Text(
                                    'Today',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight
                                            .w400, // Make the text bold
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSurface),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
