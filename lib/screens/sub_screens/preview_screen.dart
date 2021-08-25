import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sports_buzz11_trial1/constants.dart';
import 'package:sports_buzz11_trial1/components/reusable_weather_pitch_card.dart';

class PreviewScreen extends StatelessWidget {
  const PreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'IND vs AUS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
              ),
              Text('Weather Report:', style: kSubHeading),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                  child: WeatherAndPitchCard(
                    label1: 'Temperature: 32C',
                    label2: 'Humidity: 12%',
                    label3: '🌞',
                    size: 35,
                  )),
              Text('Pitch Report', style: kSubHeading),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                  child: WeatherAndPitchCard(
                    label1: 'Wankadhe Stadium',
                    label2: 'Batting',
                    label3: 'Avg.Sc:23',
                    size: 18,
                  )),
              Text('Playing 11', style: kSubHeading),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(kIndia11),
                      elevation: 6,
                    )),
                    Expanded(
                        child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(kIndia11),
                      elevation: 6,
                    )),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
