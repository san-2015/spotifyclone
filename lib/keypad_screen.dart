import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PhoneNumberScreen(),
    );
  }
}

class PhoneNumberScreen extends StatefulWidget {
  @override
  _PhoneNumberScreenState createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  final TextEditingController _controller = TextEditingController();
  String _phoneNumber = '';

  void _onKeyPressed(String value) {
    setState(() {
      if (value == 'backspace') {
        if (_phoneNumber.isNotEmpty) {
          _phoneNumber = _phoneNumber.substring(0, _phoneNumber.length - 1);
        }
      } else {
        if (_phoneNumber.length < 10) {
          _phoneNumber += value;
        }
      }
      _controller.text = '+1 ${_formatPhoneNumber(_phoneNumber)}';
    });
  }

  String _formatPhoneNumber(String phoneNumber) {
    String formatted = '';
    for (int i = 0; i < phoneNumber.length; i++) {
      if (i == 3 || i == 6) {
        formatted += '-';
      }
      formatted += phoneNumber[i];
    }
    return formatted;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.cancel),
          onPressed: () {
            // Handle cancel action
          },
        ),
        backgroundColor: Colors.black,
        title: Text(
          'Enter your phone number',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              readOnly: true,
              style: TextStyle(fontSize: 24, color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '+1 000-000-0000',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Spacer(),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 12,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 2,
            ),
            itemBuilder: (context, index) {
              if (index == 9) {
                return SizedBox.shrink(); // Empty space at position 9
              } else if (index == 10) {
                return _buildKey('0');
              } else if (index == 11) {
                return _buildKey('backspace', icon: Icons.backspace);
              } else {
                return _buildKey((index + 1).toString());
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle send text action
              },
              child: Text('Send text'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildKey(String value, {IconData? icon}) {
    return GestureDetector(
      onTap: () => _onKeyPressed(value),
      child: Container(
        margin: EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: icon == null
              ? Text(
                  value,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                )
              : Icon(icon, color: Colors.white),
        ),
      ),
    );
  }
}
