import 'package:flutter/material.dart';

class FormControl extends StatelessWidget {
  final Color lightBlue = Colors.lightBlue.shade100;

  FormControl({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1, // Số lượng tab phải khớp
      child: Scaffold(
        body: Container(
          color: Colors.blue[100] ?? Colors.blue,
          child: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Temperature (℃):',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(width: 20),
                          Builder(
                            builder: (BuildContext context) {
                              return ElevatedButton(
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content:
                                          Text('Nhiệt độ bây giờ là 32 độ'),
                                    ),
                                  );
                                },
                                child: const Text('Check'),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // Các widget khác như Checkbox, Dropdown, Slider, Switch
                      Row(
                        children: [
                          const Text(
                            'Checkbox:',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(width: 20),
                          CheckboxWidget(),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Light (lx):',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(width: 20),
                          Expanded(child: SliderWidget()),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Text(
                            'Pressure Measurement Unit:',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(width: 20),
                          DropdownWidget(),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Text(
                            'Switch:',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(width: 20),
                          SwitchWidget(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (bool? newValue) {
        setState(() {
          isChecked = newValue ?? false;
        });
      },
    );
  }
}

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({super.key});

  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String dropdownValue = 'atm';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      items: <String>['atm', 'Torr', 'psi', 'Pa', 'Bar']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
    );
  }
}

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: sliderValue,
      min: 0,
      max: 100,
      divisions: 100,
      label: sliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          sliderValue = value;
        });
      },
    );
  }
}

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isSwitched,
      onChanged: (bool newValue) {
        setState(() {
          isSwitched = newValue;
        });
      },
      activeColor: Colors.blue,
    );
  }
}
