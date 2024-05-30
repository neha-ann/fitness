import 'package:fitness/Cardio.dart';
import 'package:fitness/utils/MyButton.dart';
import 'package:fitness/utils/MyText.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Mytext(
                text: 'Track your \nFitness Now',
                size: 50,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(255, 17, 141, 110),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Column(
                        children: [
                          Mytext(
                            text: 'Today\'s Step',
                            size: 20,
                            color: Colors.black,
                          ),
                          Mytext(
                            text: '4235',
                            size: 50,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(255, 17, 141, 110),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Column(
                        children: [
                          Mytext(
                            text: 'Calories burnt',
                            size: 20,
                            color: Colors.black,
                          ),
                          Mytext(
                            text: '435',
                            size: 50,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Mybutton(onPressed: () {}, text: 'All'),
                Mybutton(onPressed: () {}, text: 'Cardio'),
                Mybutton(onPressed: () {}, text: 'HIIT'),
                Mybutton(onPressed: () {}, text: 'Walking'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.yellow),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    const Mytext(
                        text: '   Y O G A', size: 30, color: Colors.black),
                    const Spacer(),
                    Image.asset(
                      'assets/yoga.png',
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(Icons.arrow_forward_ios),
                    const SizedBox(
                      width: 10,
                    ),
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color.fromARGB(255, 82, 170, 197)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    const Mytext(
                        text: '   C Y C L I N G',
                        size: 28,
                        color: Colors.black),
                    const Spacer(),
                    Image.asset(
                      'assets/cycling.png',
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(Icons.arrow_forward_ios),
                    // const SizedBox(
                    //   width: 10,
                    // ),
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color.fromARGB(255, 137, 199, 95)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    const Mytext(
                        text: '   C A R D I O', size: 30, color: Colors.black),
                    const Spacer(),
                    Image.asset(
                      'assets/cardio.png',
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cardio())),
                        child: const Icon(Icons.arrow_forward_ios)),
                    const SizedBox(
                      width: 10,
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
