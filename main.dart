import 'package:flutter/material.dart';

void main() {
  runApp(BluetoothTerminalApp());
}

class BluetoothTerminalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BluetoothTerminalScreen(),
    );
  }
}

class BluetoothTerminalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Bluetooth Terminal', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Bağlantı Butonu
          Center(
            child: Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 4.0,
                ),
              ),
              child: IconButton(
                icon: Icon(Icons.bluetooth, color: Colors.white, size: 50.0),
                onPressed: () {
                  // Bluetooth cihazlarını tarama işlemi burada gerçekleştirilecek
                },
              ),
            ),
          ),
          SizedBox(height: 20.0),
          // Durum Gösterge Alanı
          Text(
            'Disconnected',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 40.0),
          // Veri Gösterim Alanı
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              color: Colors.grey[300],
              child: Text(
                'Received data will appear here...',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          // Veri Gönderme Alanı
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter command...',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () {
                    // Veri gönderme işlemi burada gerçekleştirilecek
                  },
                  child: Text('Send'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
