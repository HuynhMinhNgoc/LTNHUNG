import 'package:tab_container/tab_container.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home Control',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        // Tùy chỉnh font chữ
        textTheme: const TextTheme(
          labelLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TabContainer(
            color: Colors.blue[100] ?? Colors.blue,
            tabEdge: TabEdge.right,
            childPadding: const EdgeInsets.all(20.0),
            tabs: _getTabs3(context),
            children: _getChildren3(context),
          ),
        ),
      ),
    );
  }
}

List<Widget> _getTabs3(BuildContext context) => <Widget>[
  const Icon(Icons.info),
  const Icon(Icons.text_snippet),
  const Icon(Icons.person),
  const Icon(Icons.menu),
];

List<Widget> _getChildren3(BuildContext context) => <Widget>[
  // Tab Info
  Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Info', style: Theme.of(context).textTheme.headlineSmall),
      const Text('Lorem ipsum dolor sit amet...'),
    ],
  ),
  // Tab Documents
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Documents', style: Theme.of(context).textTheme.headlineSmall),
      const Expanded(
        child: Column(
          children: [
            ListTile(title: Text('Document 1')),
            ListTile(title: Text('Document 2')),
            ListTile(title: Text('Document 3')),
          ],
        ),
      ),
    ],
  ),
  // Tab Profile
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Profile', style: Theme.of(context).textTheme.headlineSmall),
      const Expanded(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('John Doe'),
              subtitle: Text('john.doe@email.com'),
            ),
            ListTile(
              leading: Icon(Icons.cake),
              title: Text('Birthday'),
              subtitle: Text('1/1/1985'),
            ),
          ],
        ),
      ),
    ],
  ),
  // Tab Menu với các tab con
  SizedBox(
    height: double.infinity,  // Đảm bảo chiều cao đầy đủ
    child: DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Menu', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 20),
          // TabBar cho các tab con
          const TabBar(
            labelColor: Colors.blue,  // Màu chữ tab được chọn
            unselectedLabelColor: Colors.grey,  // Màu chữ tab không được chọn
            tabs: [
              Tab(text: 'Settings'),
              Tab(text: 'Help'),
              Tab(text: 'About'),
            ],
          ),
          const SizedBox(height: 20),
          // Nội dung các tab con
          const Expanded(
            child: TabBarView(
              children: [
                // Settings tab
                SingleChildScrollView(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text('Dark Mode'),
                        trailing: Switch(
                          value: false,
                          onChanged: null,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.notifications),
                        title: Text('Notifications'),
                        trailing: Switch(
                          value: true,
                          onChanged: null,
                        ),
                      ),
                    ],
                  ),
                ),
                // Help tab
                SingleChildScrollView(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.help),
                        title: Text('FAQs'),
                      ),
                      ListTile(
                        leading: Icon(Icons.support),
                        title: Text('Support'),
                      ),
                    ],
                  ),
                ),
                // About tab
                SingleChildScrollView(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.info),
                        title: Text('Version 1.0.0'),
                      ),
                      ListTile(
                        leading: Icon(Icons.copyright),
                        title: Text('© 2024 Your Company'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ),
];