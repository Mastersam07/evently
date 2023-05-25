import 'package:coolicons/coolicons.dart';
import 'package:evently/evently.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return EventApp(
      title: 'Flutter Demo',
      theme: EventlyThemeData(
        typography: const Typography(
          body: TextStyle(color: Color(0xFF000000)),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  EventRoute<void>(
                    builder: (BuildContext context) {
                      return const Details();
                    },
                  ),
                ),
                child: const Icon(Coolicons.play_arrow),
              ),
              Text(
                'Tap here',
                style: EventlyTheme.of(context)!.typography.body,
              )
            ],
          ),
        ], // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: const Icon(Coolicons.skip_previous),
              ),
              Text(
                'Tap here',
                style: EventlyTheme.of(context)!.typography.body,
              )
            ],
          ),
          const Text('Samuel'),
        ],
      ),
    );
  }
}
