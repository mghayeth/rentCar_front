import 'package:rent_car/screens/carOverview.dart';
import 'package:rent_car/utils/utils.dart';
import 'package:rent_car/widgets/car_grid.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).disabledColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
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
              children: [
                Image.asset("images/carr.png"),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "  carName",
                          style: MainHeading0,
                        ),
                        Text(
                          "Brand",
                          style: litlleGrey,
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => CarOverview()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 15, top: 20, bottom: 20, right: 15),
              decoration: BoxDecoration(
                  color: Theme.of(context).dividerColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Available Cars",
                          style: MainHeading4,
                        ),
                        Text(
                          "Long term, Short term",
                          style: Basicheading0,
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 50,
                        color: Theme.of(context).dividerColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Text(
            "    TOP DEALS",
            style: MainHeading1,
          ),
          Container(
            height: 200,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return carContainer();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 2,
                  );
                },
                itemCount: 10),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                color: Theme.of(context).primaryColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).highlightColor,
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.all(20),
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.home_filled,
                          color: Theme.of(context).dividerColor,
                        ),
                        Text(
                          "Home",
                          style: litlleBleu,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                IconButton(onPressed: () {}, icon: Icon(Icons.person)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
