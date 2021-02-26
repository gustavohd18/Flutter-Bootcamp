import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_app/widgets/CardInformation/card_information.dart';
import 'package:health_app/widgets/GenreInformation/genre_information.dart';

const selectedColor = Color(0xFF111328);
const color = Color(0xFF1D1E33);

enum Genrer { female, male }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Genrer selectedGenre;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: CardInformation(
                  onPress: () {
                    setState(() {
                      selectedGenre = Genrer.male;
                    });
                  },
                  color: selectedGenre == Genrer.male ? selectedColor : color,
                  child: GenreInfomation(
                    text: "Male",
                    icon: Icon(
                      FontAwesomeIcons.mars,
                      size: 80,
                    ),
                    padding: EdgeInsets.only(left: 15),
                  ),
                ),
              ),
              Expanded(
                  child: CardInformation(
                onPress: () {
                  setState(() {
                    selectedGenre = Genrer.female;
                  });
                },
                color: selectedGenre == Genrer.female ? selectedColor : color,
                child: GenreInfomation(
                  text: "FEMALE",
                  icon: Icon(
                    FontAwesomeIcons.venus,
                    size: 80,
                  ),
                  padding: EdgeInsets.only(left: 5),
                ),
              )),
            ]),
          ),
          Expanded(
            child: CardInformation(
              color: color,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFF8D8E98),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text(
                        "$height",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 50),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 250,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newHeight) {
                      setState(() {
                        height = newHeight.toInt();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: CardInformation(color: Color(0xFF1D1E33)),
              ),
              Expanded(child: CardInformation(color: Color(0xFF1D1E33))),
            ]),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80,
          )
        ],
      ),
    );
  }
}
