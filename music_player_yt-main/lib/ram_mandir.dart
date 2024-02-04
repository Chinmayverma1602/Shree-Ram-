import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TempleHistoryScreen(),
    );
  }
}

class TempleHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temple History Timeline'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header with temple image
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/temple_header.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'History Timeline',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  TimelineEvent(
                    year: 'Ancient Times',
                    description:
                        'The temple\'s origin dates back to ancient times, with early worship and rituals.',
                    imagePath: 'assets/ancient_temple.jpg',
                  ),
                  TimelineEvent(
                    year: 'Medieval Era',
                    description:
                        'Renovations and expansions took place during the medieval era, reflecting architectural marvels.',
                    imagePath: 'assets/medieval_temple.jpg',
                  ),
                  TimelineEvent(
                    year: '18th Century',
                    description:
                        'Significant events during the 18th century, including cultural contributions.',
                    imagePath: 'assets/18th_century_temple.jpg',
                  ),
                  // Add more events as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TimelineEvent extends StatelessWidget {
  final String year;
  final String description;
  final String imagePath;

  TimelineEvent({required this.year, required this.description, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          year,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          description,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 16),
        // Image for each event with a fade-in animation
        FadeInImage(
          placeholder: AssetImage('assets/placeholder_image.jpg'),
          image: AssetImage(imagePath),
          height: 150,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
