import 'package:fancy_scrolling/models/daily_forecast.dart';

// class Server {
List<DailyForecast> getDailyForecastList() {
  return const [
    DailyForecast(date: '15', day: 'Monday', description: 'Very Rainy', weather: '73 | 52 F'),
    DailyForecast(date: '16', day: 'Tuesday', description: 'Partly Cloudy', weather: '68 | 62 F'),
    DailyForecast(date: '17', day: 'Wednesday', description: 'Sunny', weather: '73 | 56 F'),
    DailyForecast(date: '18', day: 'Thursday', description: 'Partly Cloudy in the morning', weather: '86 | 50 F'),
    DailyForecast(date: '19', day: 'Friday', description: 'Sunny in the morning, cloudy in the evening', weather: '93 | 60 F'),
    DailyForecast(date: '20', day: 'Saturday', description: 'Clear and Crystal', weather: '83 | 64 F'),
    DailyForecast(date: '21', day: 'Sunday', description: 'Rainy', weather: '73 | 70 F'),
  ];
}
// }