import 'package:tab_container/tab_container.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

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
  const Icon(Icons.analytics),
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
 //======TAG THỐNG KÊ========
SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.insights, color: Colors.blue),
            const SizedBox(width: 8),
            Text('Thống kê', style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
        const SizedBox(height: 20),
Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    // Biểu đồ tròn
    Expanded(
      flex: 3, // Giảm flex để dành không gian cho ký hiệu
      child: Column(
        children: [
<<<<<<< HEAD
          Expanded(child: FormControl()),
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
        height: double.infinity, // Đảm bảo chiều cao đầy đủ
        child: DefaultTabController(
          length: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Menu', style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 20),
              // TabBar cho các tab con
              const TabBar(
                labelColor: Colors.blue, // Màu chữ tab được chọn
                unselectedLabelColor:
                    Colors.grey, // Màu chữ tab không được chọn
                tabs: [
                  Tab(text: 'Settings'),
                  Tab(text: 'Help'),
                  Tab(text: 'About'),
=======
          SizedBox(
            height: 200,
            child: PieChart(
              PieChartData(
                sections: [
                  PieChartSectionData(
                    value: 20,
                    color: Colors.blue,
                    title: '20%',
                    radius: 60,
                    titleStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  PieChartSectionData(
                    value: 20,
                    color: Colors.orange,
                    title: '20%',
                    radius: 60,
                    titleStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  PieChartSectionData(
                    value: 20,
                    color: Colors.green,
                    title: '20%',
                    radius: 60,
                    titleStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  PieChartSectionData(
                    value: 20,
                    color: Colors.purple,
                    title: '20%',
                    radius: 60,
                    titleStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  PieChartSectionData(
                    value: 20,
                    color: Colors.red,
                    title: '20%',
                    radius: 60,
                    titleStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
>>>>>>> 97d8a3f18c0990c0692bcdf697a4d5bb4fd41c72
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.pie_chart, color: Colors.blue),
                const SizedBox(width: 8),
                Text(
                'Biểu đồ tròn',
                style: TextStyle(
                  fontSize: 14, // Giảm kích thước font
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              ],
            ),
          ),
        ],
      ),
    ),
    // Chú thích
    Expanded(
      flex: 2, // Tăng flex để ký hiệu gần hơn
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.thermostat, color: Colors.blue, size: 13),
              const SizedBox(width: 4),
              Icon(Icons.circle, color: Colors.blue, size: 16),
              const SizedBox(width: 4),
              Text('Nhiệt độ', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.wb_sunny, color: Colors.orange, size: 13),
              const SizedBox(width: 4),
              Icon(Icons.circle, color: Colors.orange, size: 16),
              const SizedBox(width: 4),
              Text('Ánh sáng', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.water_drop, color: Colors.green, size: 13),
              const SizedBox(width: 4),
              Icon(Icons.circle, color: Colors.green, size: 16),
              const SizedBox(width: 4),
              Text('Độ ẩm', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.compress, color: Colors.purple, size: 13),
              const SizedBox(width: 4),
              Icon(Icons.circle, color: Colors.purple, size: 16),
              const SizedBox(width: 4),
              Text('Áp suất', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.speed, color: Colors.red, size: 13),
              const SizedBox(width: 4),
              Icon(Icons.circle, color: Colors.red, size: 16),
              const SizedBox(width: 4),
              Text('Gia tốc', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ],
      ),
    ),
  ],
)
,
        const SizedBox(height: 40),

Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    // Bar Chart on the Left
    Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Square Frame for the Bar Chart
          SizedBox(
            width: 300, // Set width for square aspect ratio
            height: 300, // Set height for square aspect ratio
            child: BarChart(
              BarChartData(
                barGroups: [
                  BarChartGroupData(x: 0, barsSpace: 10, barRods: [
                    BarChartRodData(
                      y: 30,
                      colors: [Colors.blue],
                      width: 20,
                      borderRadius: BorderRadius.zero, // Square edges
                    ),
                  ]),
                  BarChartGroupData(x: 1, barsSpace: 10, barRods: [
                    BarChartRodData(
                      y: 25,
                      colors: [Colors.orange],
                      width: 20,
                      borderRadius: BorderRadius.zero,
                    ),
                  ]),
                  BarChartGroupData(x: 2, barsSpace: 10, barRods: [
                    BarChartRodData(
                      y: 20,
                      colors: [Colors.green],
                      width: 20,
                      borderRadius: BorderRadius.zero,
                    ),
                  ]),
                  BarChartGroupData(x: 3, barsSpace: 10, barRods: [
                    BarChartRodData(
                      y: 15,
                      colors: [Colors.purple],
                      width: 20,
                      borderRadius: BorderRadius.zero,
                    ),
                  ]),
                  BarChartGroupData(x: 4, barsSpace: 10, barRods: [
                    BarChartRodData(
                      y: 10,
                      colors: [Colors.red],
                      width: 20,
                      borderRadius: BorderRadius.zero,
                    ),
                  ]),
                ],
                titlesData: FlTitlesData(
                  leftTitles: SideTitles(
                    showTitles: true,
                    interval: 5, // Adjust spacing for better readability
                  ),
                  bottomTitles: SideTitles(
                    showTitles: true,
                    getTitles: (value) {
                      switch (value.toInt()) {
                        case 0:
                          return 'Nhiệt độ';
                        case 1:
                          return 'Ánh sáng';
                        case 2:
                          return 'Độ ẩm';
                        case 3:
                          return 'Áp suất';
                        case 4:
                          return 'Gia tốc';
                        default:
                          return '';
                      }
                    },
                    rotateAngle: 45, // Rotate labels for better spacing
                  ),
                ),
                borderData: FlBorderData(show: true), // Show chart border
                gridData: FlGridData(show: true, drawVerticalLine: true), // Display grid
                alignment: BarChartAlignment.spaceBetween, // Adds space between bars
              ),
            ),
          ),
          const SizedBox(height: 10),

          // Chart Title Below
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.bar_chart, color: Colors.blue, size: 20),
              const SizedBox(width: 8),
              Text(
                'Biểu đồ cột',
                style: TextStyle(
                  fontSize: 14, // Giảm kích thước font
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    ),

    // Legend on the Right
    Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.thermostat, color: Colors.blue, size: 13),
              const SizedBox(width: 8),
              Container(width: 16, height: 16, color: Colors.blue),
              const SizedBox(width: 8),
              Text('Nhiệt độ', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.wb_sunny, color: Colors.orange, size: 13),
              const SizedBox(width: 8),
              Container(width: 16, height: 16, color: Colors.orange),
              const SizedBox(width: 8),
              Text('Ánh sáng', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.water_drop, color: Colors.green, size: 13),
              const SizedBox(width: 8),
              Container(width: 16, height: 16, color: Colors.green),
              const SizedBox(width: 8),
              Text('Độ ẩm', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.compress, color: Colors.purple, size: 13),
              const SizedBox(width: 8),
              Container(width: 16, height: 16, color: Colors.purple),
              const SizedBox(width: 8),
              Text('Áp suất', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.speed, color: Colors.red, size: 13),
              const SizedBox(width: 8),
              Container(width: 16, height: 16, color: Colors.red),
              const SizedBox(width: 8),
              Text('Gia tốc', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ],
      ),
    ),
  ],
)
,


        const SizedBox(height: 40),

Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    // Line Chart on the Left
    Expanded(
      flex: 3, // Điều chỉnh flex để biểu đồ chiếm ít không gian hơn
      child: Column(
        children: [
          // Line Chart
          SizedBox(
            height: 200, // Giảm chiều cao biểu đồ để gọn hơn
            child: LineChart(
              LineChartData(
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 30), // Nhiệt độ
                      FlSpot(1, 32),
                      FlSpot(2, 29),
                      FlSpot(3, 35),
                    ],
                    isCurved: true,
                    belowBarData: BarAreaData(show: false),
                    barWidth: 3,
                    colors: [Colors.blue],
                  ),
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 25), // Ánh sáng
                      FlSpot(1, 28),
                      FlSpot(2, 26),
                      FlSpot(3, 27),
                    ],
                    isCurved: true,
                    belowBarData: BarAreaData(show: false),
                    barWidth: 3,
                    colors: [Colors.orange],
                  ),
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 20), // Độ ẩm
                      FlSpot(1, 18),
                      FlSpot(2, 22),
                      FlSpot(3, 21),
                    ],
                    isCurved: true,
                    belowBarData: BarAreaData(show: false),
                    barWidth: 3,
                    colors: [Colors.green],
                  ),
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 15), // Áp suất
                      FlSpot(1, 16),
                      FlSpot(2, 14),
                      FlSpot(3, 15),
                    ],
                    isCurved: true,
                    belowBarData: BarAreaData(show: false),
                    barWidth: 3,
                    colors: [Colors.purple],
                  ),
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 10), // Gia tốc
                      FlSpot(1, 12),
                      FlSpot(2, 11),
                      FlSpot(3, 13),
                    ],
                    isCurved: true,
                    belowBarData: BarAreaData(show: false),
                    barWidth: 3,
                    colors: [Colors.red],
                  ),
                ],
                titlesData: FlTitlesData(
                  leftTitles: SideTitles(
                    showTitles: true,
                    interval: 5,
                  ),
                  bottomTitles: SideTitles(
                    showTitles: true,
                    getTitles: (value) {
                      switch (value.toInt()) {
                        case 0:
                          return 'T1';
                        case 1:
                          return 'T2';
                        case 2:
                          return 'T3';
                        case 3:
                          return 'T4';
                        default:
                          return '';
                      }
                    },
                  ),
                ),
                gridData: FlGridData(
                  show: true,
                  drawHorizontalLine: true,
                  horizontalInterval: 5,
                ),
                borderData: FlBorderData(show: true),
              ),
            ),
          ),
          const SizedBox(height: 10), // Giảm khoảng cách giữa biểu đồ và tiêu đề

          // Chart Title Below
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.show_chart, color: Colors.blue, size: 18), // Giảm kích thước icon
              const SizedBox(width: 5), // Giảm khoảng cách giữa icon và text
              Text(
                'Biểu đồ đường',
                style: TextStyle(
                  fontSize: 14, // Giảm kích thước font
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    ),

    // Spacer to create distance between chart and legend
    const SizedBox(width: 70), // Khoảng cách giữa biểu đồ và ký hiệu

    // Legend on the Right
    Expanded(
      flex: 2, // Giảm flex để legend gọn hơn
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.thermostat, color: Colors.blue, size: 13), // Giảm kích thước icon
              const SizedBox(width: 4),
              Icon(Icons.horizontal_rule, color: Colors.blue, size: 16),
              const SizedBox(width: 4),
              Text('Nhiệt độ', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.wb_sunny, color: Colors.orange, size: 13),
              const SizedBox(width: 4),
              Icon(Icons.horizontal_rule, color: Colors.orange, size: 16),
              const SizedBox(width: 4),
               Text('Ánh sáng', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.water_drop, color: Colors.green, size: 13),
              const SizedBox(width: 4),
              Icon(Icons.horizontal_rule, color: Colors.green, size: 16),
              const SizedBox(width: 4),
              Text('Độ ẩm', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.compress, color: Colors.purple, size: 13),
              const SizedBox(width: 4),
              Icon(Icons.horizontal_rule, color: Colors.purple, size: 16),
              const SizedBox(width: 4),
             Text('Áp suất', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.speed, color: Colors.red, size: 13),
              const SizedBox(width: 4),
              Icon(Icons.horizontal_rule, color: Colors.red, size: 16),
              const SizedBox(width: 4),
              Text('Gia tốc', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ],
      ),
    ),
  ],
),
        const SizedBox(height: 20),
      ],
    ),
  ),
),



  // Tab Menu với các tab con
  SizedBox(
    height: double.infinity,
    child: DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Menu', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 20),
          const TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'Settings'),
              Tab(text: 'Help'),
              Tab(text: 'About'),
            ],
          ),
          const SizedBox(height: 20),
          const Expanded(
            child: TabBarView(
              children: [
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
