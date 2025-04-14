import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/models/Address.dart';

class AddressController extends GetxController {
  var addresses = <Address>[].obs;

  @override
  void onInit() {
    fetchAddresses();
    super.onInit();
  }

  void fetchAddresses() {
    addresses.value = [
      Address(id: 1, name: 'Rumah', detail: 'Jl. Mawar No. 123'),
      Address(id: 2, name: 'Kantor', detail: 'Jl. Melati No. 456'),
      Address(id: 3, name: 'Kantor 2', detail: 'Jl. Melati No. 456'),
    ];
  }

  void addAddress(Address address) {
    addresses.add(address);
  }

  void removeAddress(int id) {
    addresses.removeWhere((addr) => addr.id == id);
    // addresses.removeWhere((addr) => addr.id == id && addr.name == name);
  }
}
