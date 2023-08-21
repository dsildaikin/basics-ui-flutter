import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather Forecast'),
          centerTitle: true,
          backgroundColor: Colors.red,
          elevation: 0,
        ),
        backgroundColor: Colors.red,
        body: _buildBody(),
      ),
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _textField(),
          _cityDetail(),
          _temperatureDetail(),
          _extraWeatherDetail(),
          _text(),
          _bottomDetail(),
        ],
      ),
    );
  }

  _textField() {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
        Text(
          'Enter City Name',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  _cityDetail() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          Text(
            'Murmansk Oblast, RU',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Friday, Mar 20, 2020',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w200,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  _temperatureDetail() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.wb_sunny,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(width: 10),
        Column(
          children: [
            Text(
              '14 °F',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
            ),
            Text(
              'LIGHT SNOW',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }

  _extraWeatherDetail() {
    return Container(
      margin: const EdgeInsets.only(top: 50, bottom: 80),
      width: 300,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Icon(
                Icons.ac_unit,
                size: 35,
                color: Colors.white,
              ),
              Text(
                '5',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                'km/hr',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.ac_unit,
                size: 35,
                color: Colors.white,
              ),
              Text(
                '3',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                '%',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.ac_unit,
                size: 35,
                color: Colors.white,
              ),
              Text(
                '20',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                '%',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _text() {
    return const Text(
      '7-DAY WEATHER FORECAST',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w300,
        color: Colors.white,
      ),
    );
  }

  _bottomDetail() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 12),
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _weatherForecastDay(name: 'Friday', temperature: 6),
          _weatherForecastDay(name: 'Saturday', temperature: 10),
          _weatherForecastDay(name: 'Sunday', temperature: 7),
          _weatherForecastDay(name: 'Monday', temperature: 12),
          _weatherForecastDay(name: 'Tuesday', temperature: 13),
          _weatherForecastDay(name: 'Wednesday', temperature: 5),
          _weatherForecastDay(name: 'Thursday', temperature: 9),
        ],
      ),
    );
  }

  _weatherForecastDay({required String name, required int temperature}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: 180,
      color: Colors.white30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.w300, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$temperature °F',
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                const Icon(
                  Icons.wb_sunny,
                  size: 40,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
