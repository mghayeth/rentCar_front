import 'package:rent_car/screens/carDetails.dart';
import 'package:rent_car/utils/utils.dart';
import 'package:flutter/material.dart';

class CarGride extends StatelessWidget {
  const CarGride({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (ctx, i) => Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: carContainer(),
      ),
      itemCount: 10,
    );
  }
}

class carContainer extends StatelessWidget {
  const carContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => CarDetail()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Theme.of(context).primaryColor,
          // boxShadow: [
          //   BoxShadow(color: Colors.black26, blurRadius: 5, spreadRadius: 1)
          // ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(
                  "images/carr.png",
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "carName",
                      style: Basicheading,
                    ),
                    Text(
                      "00.00 DT",
                      style: Subheading,
                    ),
                    Text("per day")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
