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
    return const EventApp(
      title: 'Flutter Demo',
      theme: EventlyThemeData(
        typography: Typography(
          body: TextStyle(color: Color(0xFF000000)),
        ),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: EventColors.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          GestureDetector(
              onTap: () => Navigator.push(
                    context,
                    EventRoute<void>(
                      builder: (BuildContext context) {
                        return const Details();
                      },
                    ),
                  ),
              child: const EventAvatar(
                avatarImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/31275429?v=4"),
              )),
        ],
      ),
    );
  }
}

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: EventColors.secondary,
      child: Center(
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
                  style: EventlyTheme.of(context)!.data.typography.body,
                )
              ],
            ),
            const Text('Samuel'),
          ],
        ),
      ),
    );
  }
}
