part of 'main_page_part.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(appBar: AppBar(title: const Text('MAIN PAGE')));
}
