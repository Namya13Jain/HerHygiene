import 'package:flutter/material.dart';
import 'size_configs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            //spacing
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            //adding the intro box
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(40, 20, 10, 20),
                  height: getProportionateScreenHeight(200),
                  width: getProportionateScreenWidth(350),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 192, 203, 0.6),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      alignment: Alignment.topRight,
                      image: AssetImage("assets/up.png"),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(10),
                        vertical: getProportionateScreenHeight(10)),
                    child: Text(
                      "Got burning questions about your \nmenstrual cycle, contaceptives \nand intimate hygiene?\nWell, we'll help you douse \nthe fire with our guides that\n helps you answer them all.",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Adding spacing
            SizedBox(
              height: getProportionateScreenHeight(2),
            ),
            //adding the second content box
            //menstrual hygiene box
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(40, 20, 10, 20),
                  height: getProportionateScreenHeight(200),
                  width: getProportionateScreenWidth(350),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 192, 203, 0.6),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      alignment: Alignment.topLeft,
                      image: AssetImage("assets/meneses_final.png"),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(10),
                        vertical: getProportionateScreenHeight(15)),
                    child: Text(
                      "Periods are something \nyou hate to have \nbut scared not to have\nYou can dive in to \nlearn about menstrual hygiene.",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Spacing
            SizedBox(
              height: getProportionateScreenHeight(2),
            ),
            //adding the third content box
            //Contraceptive box
            Row(
              children: [
                GestureDetector(
                  onTap: (() {
                    Navigator.pushNamed(context, 'contra_page');
                  }),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(40, 20, 10, 20),
                    height: getProportionateScreenHeight(200),
                    width: getProportionateScreenWidth(350),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 192, 203, 0.6),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        alignment: Alignment.topRight,
                        image: AssetImage("assets/contra_final.png"),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(10),
                          vertical: getProportionateScreenHeight(10)),
                      child: Text(
                        "You can\'t have maternal \nlife without good \nreproductive health\nSo, take a step forward \nto learn about contraception\n and family planning.",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //Adding spacing
            SizedBox(
              height: getProportionateScreenHeight(2),
            ),
            //adding the fourth content box
            //Quiz box
            Row(
              children: [
                GestureDetector(
                  onTap: (() {
                    Navigator.pushNamed(context, 'quiz_option');
                  }),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(40, 20, 10, 20),
                    height: getProportionateScreenHeight(200),
                    width: getProportionateScreenWidth(350),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 192, 203, 0.6),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        alignment: Alignment.topLeft,
                        image: AssetImage("assets/quiz_Con.png"),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(10),
                          vertical: getProportionateScreenHeight(10)),
                      child: Text(
                        "Wanna test yourself? \nYou can attempt these quizes \nand test your understanding \nof menstrual hygiene \nand contraceptive health.",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
