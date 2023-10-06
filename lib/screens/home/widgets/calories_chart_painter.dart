import 'dart:math';

import 'package:flutter/material.dart';

class CaloriesChartPainter extends CustomPainter {
  final Color pathColor;
  final double pathWidth;
  final List<Calories> data;

  CaloriesChartPainter({
    required this.pathColor,
    this.pathWidth = 2.0,
    required this.data,
  });

  @override
  void paint(Canvas canvas, Size size) {
    const heightOfDateLabel = 12.0;
    const offsetMarginLeft = 12.0;
    // create paint object
    final path = Path();

    // get size of canvas
    final canvasWidth = size.width;

    // get min and max value of calories
    final yMin = data.map((e) => e.calories).reduce(min);
    final yMax = data.map((e) => e.calories).reduce(max);

    // calculate the height range of calories point
    final yHeight = yMax - yMin;

    // calculate the step size of xAxis
    final xAxisStep = canvasWidth / data.length;

    // Draw label xAxis
    final textPainter = TextPainter(
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    );
    // initial the x-coordinate and y-coordinate of first point
    var xValue = 0.0;

    for (var i = 0; i < data.length; i++) {
      final value = yMax - data[i].calories; // Adjust value relative to yMax
      final yValue = yHeight == 0
          ? (0.5 * size.height - heightOfDateLabel * 2)
          : value / yHeight * size.height - heightOfDateLabel * 2;

      if (xValue == 0) {
        // Start a new path at the initial point
        path.moveTo(xValue, value);
      } else {
        // Calculate cubic bezier control points for a smooth curve
        final previousValue = yMax - data[i - 1].calories;
        final xPrevious = xValue - xAxisStep;
        final yPrevious = yHeight == 0
            ? (0.5 * size.height) - heightOfDateLabel * 2
            : previousValue / yHeight * size.height - heightOfDateLabel * 2;
        final controlPointX = xPrevious + (xValue - xPrevious) / 2;

        // Add a cubic bezier curve segment to the path
        path.cubicTo(
            controlPointX, yPrevious, controlPointX, yValue, xValue, yValue);
        if (i == data.length - 1) {
          // create round object
          final round1 = RRect.fromLTRBR(xValue - 8, yValue - 8, xValue + 8,
              yValue + 8, const Radius.circular(10.0));
          final round2 = RRect.fromLTRBR(xValue - 5, yValue - 5, xValue + 5,
              yValue + 5, const Radius.circular(10.0));
          //draw round on canvas
          canvas.drawRRect(
              round1, Paint()..color = Colors.amber.withOpacity(0.2));
          canvas.drawRRect(round2, Paint()..color = pathColor);

          // define today path
          final todayPath = Path();
          // draw todayPath from last point to bottom
          todayPath.moveTo(xValue, yValue);
          todayPath.lineTo(xValue, size.height - heightOfDateLabel * 2);
          // draw todayPath on canvas
          canvas.drawPath(
              todayPath,
              Paint()
                ..color = Colors.amber.withOpacity(0.5)
                ..strokeWidth = 1.0
                ..style = PaintingStyle.stroke
                ..strokeCap = StrokeCap.round);
        }
      }
      final textSpan = TextSpan(
        text: data[i].day,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 12.0,
          fontWeight: FontWeight.w500,
        ),
      );

      textPainter.text = textSpan;
      textPainter.layout();
      final xText = i * xAxisStep + 4.0;
      final yText = size.height - heightOfDateLabel;
      textPainter.paint(canvas, Offset(xValue - textPainter.width / 2, yText));
      xValue += xAxisStep; // Move to the next x-coordinate value
    }

    // Draw the path on the canvas
    canvas.drawPath(
      path,
      Paint()
        ..color = pathColor
        ..strokeWidth = pathWidth
        ..style = PaintingStyle.stroke // The painting style
        ..strokeCap = StrokeCap.round, // The shape of stroke ends
    );

    // get today datetime
    final now = DateTime.now();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // Determines whether the painter should repaint when the delegate changes
    return oldDelegate != this;
  }
}

/// define Entry data class with 2 properties day and calories
/// The day: Mon, Tue, Wed, Thu, Fri, Sat, Sun
/// The calories: 1000, 2000, 3000, 4000, 5000, 6000, 7000 for each day

class Calories {
  final String day;
  final double calories;
  Calories({required this.day, required this.calories});
}
