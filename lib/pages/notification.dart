import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  // Dummy data notifikasi
  final List<Map<String, dynamic>> notifications = [
    {
      'title': 'Produk Telah Diproses',
      'description':
          'Pesanan Anda sedang diproses. Harap tunggu informasi lebih lanjut.',
      'date': '22 Juni 2024',
      'icon': Icons.shopping_bag,
    },
    {
      'title': 'Pembayaran Berhasil',
      'description': 'Pembayaran bulan Juni 2024 telah berhasil.',
      'date': '22 Juni 2024',
      'icon': Icons.check_circle_outline,
    },
    // Tambahkan data notifikasi lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Colors.blue, // Ubah warna latar belakang appbar
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4, // Beri sedikit bayangan pada card
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor:
                    _getIconBackgroundColor(notifications[index]['icon']),
                child: Icon(
                  notifications[index]['icon'],
                  color: Colors.white,
                ),
              ),
              title: Text(
                notifications[index]['title'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(notifications[index]['description']),
                  SizedBox(height: 4),
                  Text(
                    notifications[index]['date'],
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              onTap: () {
                _showNotificationDetails(context, notifications[index]);
              },
            ),
          );
        },
      ),
    );
  }

  Color _getIconBackgroundColor(IconData icon) {
    if (icon == Icons.check_circle_outline) {
      return Colors.green.withOpacity(0.8); // Ubah warna latar belakang ikon
    } else if (icon == Icons.shopping_bag) {
      return Colors.blue.withOpacity(0.8); // Ubah warna latar belakang ikon
    } else {
      return Colors.blue
          .withOpacity(0.8); // Default jika tidak ada ikon yang cocok
    }
  }

  void _showNotificationDetails(
      BuildContext context, Map<String, dynamic> notification) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(notification['title']),
          content: Text(notification['description']),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
