import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/home/controllers/controller_address.dart'; // Pastikan ini sesuai dengan lokasi file
import 'data/models/Address.dart';

class AddressPage extends StatelessWidget {
  // Menginisialisasi AddressController
  final AddressController addressController = Get.put(AddressController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alamat')),
      body: Column(
        children: [
          // List of addresses
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: addressController.addresses.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(addressController.addresses[index].name),
                    subtitle: Text(addressController.addresses[index].detail),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        // Hapus alamat
                        addressController.removeAddress(
                          addressController.addresses[index].id,
                        );
                      },
                    ),
                  );
                },
              );
            }),
          ),
          // Menambahkan alamat
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Menambah alamat baru
                addressController.addAddress(
                  Address(id: 3, name: 'Toko', detail: 'Jl. Anggrek No. 789'),
                );
              },
              child: Text('Tambah Alamat'),
            ),
          ),
        ],
      ),
    );
  }
}
