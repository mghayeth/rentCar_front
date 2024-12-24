import 'package:rent_car/screens/homePage.dart';
import 'package:rent_car/utils/utils.dart';
import 'package:rent_car/widgets/car_grid.dart';
import 'package:flutter/material.dart';

class CarOverview extends StatefulWidget {
  const CarOverview({super.key});

  @override
  State<CarOverview> createState() => _CarOverviewState();
}

class _CarOverviewState extends State<CarOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).disabledColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).disabledColor,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 8, top: 4, bottom: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border(
                  top: BorderSide(
                    width: 3,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  left: BorderSide(
                      width: 3, color: Theme.of(context).primaryColorDark),
                  right: BorderSide(
                      width: 3, color: Theme.of(context).primaryColorDark),
                  bottom: BorderSide(
                      width: 3, color: Theme.of(context).primaryColorDark))),
          child: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pop(MaterialPageRoute(builder: (ctx) => HomePage()));
              },
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 20,
              )),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Avaliable Cars",
              style: MainHeading,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CarGride(),
          )
        ],
      ),
    );
  }
}
