import 'package:fancy_scrolling/models/daily_forecast.dart';
import 'package:fancy_scrolling/utilities/server.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HorizonsApp());
}

class HorizonsApp extends StatelessWidget {
  const HorizonsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const Scaffold(
        body: Center(
          child: WeeklyForecastList(),
        ),
      ),
    );
  }
}

class WeeklyForecastList extends StatelessWidget {
  const WeeklyForecastList({super.key});

  @override
  Widget build(BuildContext context) {
    // final DateTime currentDate = DateTime.now();
    final TextTheme textTheme = Theme.of(context).textTheme;
    final List<DailyForecast> forecasts = getDailyForecastList();
    return SingleChildScrollView(
      child: Column(
        children: forecasts.map((DailyForecast dailyForecast) {
          return Card(
            child: ListTile(
              leading: Text(
                dailyForecast.date,
                style: textTheme.headlineMedium,
              ),
              title: Text(
                dailyForecast.day
              ),
              subtitle: Text(
                dailyForecast.description
              ),
              trailing: Text(
                dailyForecast.weather
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}