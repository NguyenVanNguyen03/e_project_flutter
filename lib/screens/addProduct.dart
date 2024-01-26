import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/material.dart';

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  TextEditingController _productNameController = TextEditingController();
  TextEditingController _priceController = TextEditingController();

  Stream<QuerySnapshot<Map<String, dynamic>>> findCart() {
    return FirebaseFirestore.instance.collection('cart').snapshots();
  }

  void addToCart(String title, String price) {
    FirebaseFirestore.instance
        .collection('cart')
        .add({'title': title, 'price': price}).then((value) {
      print("Item added to cart successfully!");
    }).catchError((error) {
      print("Failed to add item to cart: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thêm Sản Phẩm'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextFormField(
            controller: _productNameController,
            decoration: InputDecoration(labelText: 'Tên sản phẩm'),
          ),
          SizedBox(height: 16.0),
          TextFormField(
            controller: _priceController,
            decoration: InputDecoration(labelText: 'Giá'),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              addToCart(_productNameController.text, _priceController.text);
            },
            child: Text('Thêm sản phẩm'),
          ),
          StreamBuilder(
            stream: findCart(),
            builder: (context,
                AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                final List<QueryDocumentSnapshot<Map<String, dynamic>>>
                    documents = snapshot.data!.docs;

                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: documents.length,
                  itemBuilder: (context, index) {
                    final Map<String, dynamic> documentData =
                        documents[index].data() as Map<String, dynamic>;

                    return ListTile(
                      contentPadding: EdgeInsets.all(16),
                      title: Text(
                        documentData['title'],
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8),
                          Text(
                            '\$${documentData['price']}',
                            style: TextStyle(fontSize: 16, color: Colors.green),
                          ),
                          SizedBox(height: 8),
                        ],
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          deleteCartItem(documents[index].id);
                        },
                      ),
                    );
                  },
                );
              }
            },
          )
        ]),
      ),
    );
  }

  // them san pham vao firestore
  Future<void> addProduct() async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;

      // lay du lieu
      String productName = _productNameController.text;
      double price = double.parse(_priceController.text);

      // them du lieu vao                                                                                                                          product
      await firestore.collection('products').add({
        'productName': productName,
        'price': price,
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Đã thêm sản phẩm thành công'),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Lỗi: $e'),
        ),
      );
    }
  }

  // ham xoa san pham
  void deleteCartItem(String documentId) {
    FirebaseFirestore.instance
        .collection('cart')
        .doc(documentId)
        .delete()
        .then((value) {
      print("xóa thành công!");
    }).catchError((error) {
      print("Lỗi: $error");
    });
  }
}
