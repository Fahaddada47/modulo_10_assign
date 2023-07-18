import 'package:flutter/material.dart';

void main() => runApp(OrientationApp());

class OrientationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrientationScreen(),
    );
  }
}

class OrientationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientation App'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? PortraitLayout()
              : LandscapeLayout();
        },
      ),
    );
  }
}

class PortraitLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/image/real.png'),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Column(
              children: [
                SizedBox(height: 10),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Grid Items',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Real Madrid Club de Fútbol, commonly referred to as Real Madrid, is a Spanish professional '
                            'football club based in Madrid. The club competes in La Liga, the top tier of Spanish football. Founded in 1902 as Madrid Football Club,',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                          ),
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Image.asset('assets/image/stadium.jpg');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LandscapeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/image/real.png'),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Column(
              children: [
                Text(
                  'Grid Items',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Real Madrid Club de Fútbol, commonly referred to as Real Madrid, is a Spanish professional football club based in Madrid.'
                      ' The club competes in La Liga, the top tier of Spanish football. Founded in 1902 as Madrid Football Club,',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Image.asset('assets/image/stadium.jpg');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
