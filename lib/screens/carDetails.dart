import 'package:rent_car/screens/carOverview.dart';
import 'package:rent_car/utils/utils.dart';
import 'package:flutter/material.dart';

int j = 0;
int k = 0;
int h = 0;
String str = "";

class CarDetail extends StatefulWidget {
  const CarDetail({super.key});

  @override
  State<CarDetail> createState() => _CarDetailState();
}

class _CarDetailState extends State<CarDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).disabledColor,
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: Container(
            margin: EdgeInsets.only(left: 8, top: 4, bottom: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border(
                    top: BorderSide(
                      width: 3,
                      color: Theme.of(context).disabledColor,
                    ),
                    left: BorderSide(
                        width: 3, color: Theme.of(context).disabledColor),
                    right: BorderSide(
                        width: 3, color: Theme.of(context).disabledColor),
                    bottom: BorderSide(
                        width: 3, color: Theme.of(context).disabledColor))),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .pop(MaterialPageRoute(builder: (ctx) => CarOverview()));
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 20,
                )),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(left: 8, top: 4, bottom: 4),
              decoration: BoxDecoration(
                  color: k == 0 ? Colors.white : Theme.of(context).dividerColor,
                  borderRadius: BorderRadius.circular(15),
                  border: k == 0
                      ? Border(
                          top: BorderSide(
                            width: 3,
                            color: Theme.of(context).disabledColor,
                          ),
                          left: BorderSide(
                              width: 3, color: Theme.of(context).disabledColor),
                          right: BorderSide(
                              width: 3, color: Theme.of(context).disabledColor),
                          bottom: BorderSide(
                              width: 3, color: Theme.of(context).disabledColor))
                      : Border(
                          top: BorderSide(
                            width: 3,
                            color: Theme.of(context).dividerColor,
                          ),
                          left: BorderSide(
                              width: 3, color: Theme.of(context).dividerColor),
                          right: BorderSide(
                              width: 3, color: Theme.of(context).dividerColor),
                          bottom: BorderSide(
                              width: 3,
                              color: Theme.of(context).dividerColor))),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      k == 0 ? k = 1 : k = 0;
                    });
                  },
                  icon: Icon(Icons.bookmark,
                      size: 25,
                      color: k == 0 ? null : Theme.of(context).primaryColor)),
            ),
            Container(
              margin: EdgeInsets.only(left: 8, top: 4, bottom: 4, right: 8),
              decoration: BoxDecoration(
                  color: h == 0 ? Colors.white : Theme.of(context).dividerColor,
                  borderRadius: BorderRadius.circular(15),
                  border: h == 0
                      ? Border(
                          top: BorderSide(
                            width: 3,
                            color: Theme.of(context).disabledColor,
                          ),
                          left: BorderSide(
                              width: 3, color: Theme.of(context).disabledColor),
                          right: BorderSide(
                              width: 3, color: Theme.of(context).disabledColor),
                          bottom: BorderSide(
                              width: 3, color: Theme.of(context).disabledColor))
                      : Border(
                          top: BorderSide(
                            width: 3,
                            color: Theme.of(context).dividerColor,
                          ),
                          left: BorderSide(
                              width: 3, color: Theme.of(context).dividerColor),
                          right: BorderSide(
                              width: 3, color: Theme.of(context).dividerColor),
                          bottom: BorderSide(
                              width: 3,
                              color: Theme.of(context).dividerColor))),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      h == 0 ? h = 1 : h = 0;
                    });
                  },
                  icon: Icon(Icons.add,
                      size: 25,
                      color: h == 0 ? null : Theme.of(context).primaryColor)),
            )
          ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  "    Car Name",
                  style: MainHeading0,
                ),
                Text(
                  "       Brand",
                  style: litlleGrey,
                ),
                Image.asset(
                  "images/carr.png",
                  height: 200,
                ),
                GridView.builder(
                    itemCount: 3,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (ctx, i) => GestureDetector(
                          onTap: () {
                            setState(() {
                              j = i;

                              i == 0
                                  ? str = "More then 6 months "
                                  : i == 1
                                      ? str = "More then 2 months"
                                      : str = "Under 2 months";
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    top: j == i
                                        ? BorderSide.none
                                        : BorderSide(
                                            width: 4,
                                            color: Theme.of(context)
                                                .disabledColor),
                                    left: j == i
                                        ? BorderSide.none
                                        : BorderSide(
                                            width: 4,
                                            color: Theme.of(context)
                                                .disabledColor),
                                    right: j == i
                                        ? BorderSide.none
                                        : BorderSide(
                                            width: 4,
                                            color: Theme.of(context)
                                                .disabledColor),
                                    bottom: j == i
                                        ? BorderSide.none
                                        : BorderSide(
                                            width: 4,
                                            color: Theme.of(context)
                                                .disabledColor)),
                                borderRadius: BorderRadius.circular(20),
                                color: j == i
                                    ? Theme.of(context).dividerColor
                                    : Theme.of(context).primaryColor),
                            margin: EdgeInsets.only(
                                top: i.isEven ? 0 : 20,
                                bottom: i.isEven ? 20 : 0,
                                left: 10,
                                right: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                i == 0
                                    ? Text(
                                        "6 Month",
                                        style: j == i
                                            ? Basicheading1
                                            : Basicheading,
                                      )
                                    : i == 1
                                        ? Text(
                                            "2 Month",
                                            style: j == i
                                                ? Basicheading1
                                                : Basicheading,
                                          )
                                        : Text(
                                            "Day",
                                            style: j == i
                                                ? Basicheading1
                                                : Basicheading,
                                          ),
                                Text(
                                  "00.00",
                                  style: j == i ? MainHeading2 : MainHeading,
                                ),
                                Text(
                                  "DT",
                                  style: j == i ? Basicheading1 : Basicheading,
                                )
                              ],
                            ),
                          ),
                        )),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "   SPECIFICATIONS",
            style: MainHeading1,
          ),
          GridView.builder(
              itemCount: 3,
              physics: ScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (ctx, i) => Container(
                    child: i == 0
                        ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Color",
                                  style: litlleGrey,
                                ),
                                Text(
                                  "White",
                                  style: Basicheading,
                                ),
                              ],
                            ),
                          )
                        : i == 1
                            ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Gearbox", style: litlleGrey),
                                    Text(
                                      "Automatic",
                                      style: Basicheading,
                                    ),
                                  ],
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Seat", style: litlleGrey),
                                    Text(
                                      "4",
                                      style: Basicheading,
                                    ),
                                  ],
                                )),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.only(
                        top: 20, bottom: 25, right: 10, left: 10),
                  )),
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          str,
                          style: Basicheading,
                        ),
                        Text(
                          "00.00 DT per day",
                          style: litlleGrey,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 4,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          // minimumSize: MaterialStatePropertyAll(Size(
                          //     MediaQuery.of(context).size.width * 0.4,
                          //     MediaQuery.of(context).size.height * 0.08)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          backgroundColor: MaterialStatePropertyAll(
                              Theme.of(context).dividerColor)),
                      onPressed: () {},
                      child: Text(
                        "Select this car",
                        style: Basicheading1,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
