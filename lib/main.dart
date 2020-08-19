import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final screenOneColor = Color.fromRGBO(247, 123, 103, 1.0);
  final screenTwoColor = Color.fromRGBO(88, 137, 227, 1.0);
  final screenThreeColor = Color.fromRGBO(78, 197, 173, 1.0);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        backgroundColor: screenTwoColor,
        navigationBar: CupertinoNavigationBar(
          middle: const Text(
            "TODO",
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          leading: const Icon(
            MdiIcons.menu,
            color: Colors.white,
          ),
          trailing: const Icon(
            MdiIcons.magnify,
            color: Colors.white,
          ),
          backgroundColor: screenTwoColor,
        ),
        child: AppHome(),
      ),
    );
  }
}

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _TopContainer(),
        _ScrollViewContainer(),
      ],
    );
  }
}

class _TopContainer extends StatelessWidget {
  const _TopContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(42),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            child: Text("JH"),
            foregroundColor: Color.fromRGBO(88, 137, 227, 1.0),
            backgroundColor: Colors.white,
            radius: 32,
          ),
          SizedBox(height: 22),
          Text(
            "Hello, Jeff",
            style: TextStyle(
              fontSize: 42,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 22),
          Text(
            "Looks like you feel good.",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "You havce 3 tasks todo.",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class _ScrollViewContainer extends StatefulWidget {
  @override
  __ScrollViewContainerState createState() => __ScrollViewContainerState();
}

class __ScrollViewContainerState extends State<_ScrollViewContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 42,
              right: 42,
            ),
            child: Text(
              "TODAY: AUGUST 18, 2020",
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 42.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * .75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * .75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
