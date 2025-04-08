import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ResultsCharts extends StatefulWidget {
  const ResultsCharts({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  State<ResultsCharts> createState() {
    return ResultsChartsState();
  }
}

class ResultsChartsState extends State<ResultsCharts> {
  List getSections() {
    final List sections = [];

    final int correctAnswers =
        widget.summaryData.where((data) {
          return data['user_answer'] == data['correct_answer'];
        }).length;
    final int totalQuestions = widget.summaryData.length;

    sections.add({
      'title': 'Correct Answers',
      'value': correctAnswers,
      'color': Colors.green,
      'radius': 50,
    });

    sections.add({
      'title': 'Incorrect Answers',
      'value': totalQuestions - correctAnswers,
      'color': Colors.blueAccent,
      'radius': 40,
    });

    return sections;
  }

  int isTouched = 0;

  @override
  Widget build(context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: PieChart(
          PieChartData(
            sections:
                getSections().asMap().entries.map((entry) {
                  final int index = entry.key;
                  final data = entry.value;
                  return PieChartSectionData(
                    color: data['color'],
                    value: (data['value'] as int).toDouble(),
                    title: '${data['title']} (${data['value']})',
                    radius:
                        isTouched == index
                            ? 60
                            : (data['radius'] as int).toDouble(),
                    titleStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  );
                }).toList(),
            centerSpaceRadius: 60,
            pieTouchData: PieTouchData(
              touchCallback: (FlTouchEvent e, PieTouchResponse? r) {
                print('$e eeeee');

                if (r != null && r.touchedSection != null) {
                  setState(() {
                    isTouched = r.touchedSection!.touchedSectionIndex;
                  });
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
