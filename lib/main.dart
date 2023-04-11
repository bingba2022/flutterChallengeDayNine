// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

Color backgroundColor = const Color(0xFF1F1F1F);
Color yellow = const Color(0xFFfef754);
Color purple = const Color(0xFF9c6bce);
Color green = const Color(0xFFbbee4b);
String imageURL =
    'https://cdn-cdahj.nitrocdn.com/UpBIwlpZxVKaCSxNxPFyrgjxpDMdppJI/assets/images/optimized/rev-21d1eb5/wp-content/uploads/2021/11/ivana-cajina-_7LbC5J-jw4-unsplash-1024x683.jpg';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Challenge',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: AppBar(
            backgroundColor: backgroundColor,
            elevation: 0.0,
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageURL),
            ),
            actions: const [
              Icon(
                Icons.add_outlined,
                size: 35.0,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 25.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'MONDAY 16',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  DateWidget(),
                ],
              ),
            ),
            ScheduleCard(
              startHr: '11',
              startMin: '30',
              endHr: '12',
              endMin: '20',
              name1: 'ALEX',
              name2: 'HELENA',
              name3: 'NANA',
              more: '',
              titleTop: 'DESIGN',
              titleBottom: 'MEETING',
              cardColor: yellow,
            ),
            ScheduleCard(
              startHr: '12',
              startMin: '35',
              endHr: '14',
              endMin: '10',
              name1: 'ME',
              name2: 'RICHARD',
              name3: 'CIRY',
              more: '+4',
              titleTop: 'DAILY',
              titleBottom: 'PROJECT',
              cardColor: purple,
            ),
            ScheduleCard(
              startHr: '15',
              startMin: '00',
              endHr: '16',
              endMin: '30',
              name1: 'DEN',
              name2: 'NANA',
              name3: 'MARK',
              more: '',
              titleTop: 'WEEKLY',
              titleBottom: 'PLANNING',
              cardColor: green,
            ),
          ],
        ),
      ),
    );
  }
}

class ScheduleCard extends StatelessWidget {
  String startHr, endHr, startMin, endMin;
  String name1, name2, name3;
  String more;
  String titleTop, titleBottom;
  Color cardColor;
  ScheduleCard({
    Key? key,
    required this.startHr,
    required this.endHr,
    required this.startMin,
    required this.endMin,
    required this.name1,
    required this.name2,
    required this.name3,
    required this.more,
    required this.titleTop,
    required this.titleBottom,
    required this.cardColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
      color: Colors.black54,
      fontWeight: FontWeight.w500,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        height: 200,
        width: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: cardColor,
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
              left: 15.0,
              right: 20.0,
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      startHr,
                      style: const TextStyle(
                        fontSize: 21.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      startMin,
                      style: const TextStyle(
                        height: 0.9,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 3.0,
                      ),
                      child: Container(
                        height: 23,
                        width: 0.5,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      endHr,
                      style: const TextStyle(
                        fontSize: 21.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      endMin,
                      style: const TextStyle(
                        height: 0.9,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  '$titleTop\n$titleBottom',
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 59,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -2,
                    height: 0.85,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 63.0,
              right: 60.0,
              top: 30.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name1,
                  style: name1 == 'ME'
                      ? textStyle.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        )
                      : textStyle,
                ),
                Text(
                  name2,
                  style: textStyle,
                ),
                Text(
                  name3,
                  style: textStyle,
                ),
                Text(
                  more,
                  style: textStyle,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class DateWidget extends StatelessWidget {
  const DateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9.0),
      child: Row(
        children: [
          const Text(
            'TODAY',
            style: TextStyle(
              fontSize: 36.0,
              color: Colors.white,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 7.0),
            child: Icon(
              Icons.circle,
              size: 10.0,
              color: Color(0xFFb12580),
            ),
          ),
          SizedBox(
            width: 200,
            height: 44,
            child: Expanded(
              child: ListView.builder(
                itemCount: 14,
                itemBuilder: (context, index) {
                  index = index + 17;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      '$index',
                      style: TextStyle(
                        fontSize: 37.0,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
          )
        ],
      ),
    );
  }
}
