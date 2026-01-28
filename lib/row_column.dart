import 'package:flutter/material.dart';

class RowColumn extends StatefulWidget {
  const RowColumn({super.key});

  @override
  State<RowColumn> createState() => _RowColumnState();
}

class _RowColumnState extends State<RowColumn> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red.shade700,
              ),
              padding: const EdgeInsets.all(12),
              child: Text(
                "Flutter ROWS & COLUMN EXAMPLE & ASSIGNMENT",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: w < 600 ? 26 : 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Expanded(
                            child: MyContainer(color: Color(0xFF2AA650)),
                          ),
                          SizedBox(height: 8),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: MyContainer(color: Color(0xFF58AAE8)),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  flex: 2,
                                  child: MyContainer(color: Color(0xFFE74E33)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Expanded(
                            child: MyContainer(color: Color(0xFF8D43B3)),
                          ),
                          SizedBox(height: 8),
                          Expanded(
                            child: MyContainer(color: Color(0xFF58AAE8)),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 8),

                    Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: MyContainer(
                              color: Color(0xFF8D43B3),
                              label: "#FF8D43B3",
                            ),
                          ),
                          SizedBox(height: 8),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                MyContainer(
                                  color: Color(0xFF2AA650),
                                  label: "#FF2AA650",
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: MyContainer(
                                          color: Color(0xFF58AAE8),
                                          label: "#FF58AAE8",
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Expanded(
                                        flex: 2,
                                        child: MyContainer(
                                          color: Color(0xFFE74E33),
                                          label: "#FFE74E33",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Expanded(
                            child: MyContainer(
                              color: Color(0xFF2AA650),
                              label: "#FF2AA650",
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),

                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: MyContainer(color: Color(0xFF2AA650)),
                                ),
                                SizedBox(height: 8, width: 8),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: MyContainer(
                                          color: Color(0xFF58AAE8),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Expanded(
                                        flex: 2,
                                        child: MyContainer(
                                          color: Color(0xFFE74E33),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 8),
                          Expanded(
                            flex: 3,
                            child: MyContainer(color: Color(0xFF8D43B3)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final Color color;
  final String? label;

  const MyContainer({super.key, required this.color, this.label});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: label != null
          ? Text(
              label!,
              textAlign: .center,
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth < 600 ? 14 : 25,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          : null,
    );
  }
}
