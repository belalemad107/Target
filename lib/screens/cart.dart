import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopCart extends StatefulWidget {
  @override
  _ShopCartState createState() => _ShopCartState();
}

class _ShopCartState extends State<ShopCart> {
  int quantity = 1;
  double price = 12.0;
  double fees = 2.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Check out',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Divider(
            thickness: 15,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.shopping_bag,
                      color: Colors.red,
                      size: 40,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order Pickup',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'San Francisco CBD East',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        Text(
                          'Ready tomorrow',
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Edit',
                            style: TextStyle(color: Colors.blue),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 60,
                      child: Image(
                        image: AssetImage(
                          'assets/images/pic5.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              if (quantity > 0)
                                setState(() {
                                  quantity--;
                                });
                            },
                            child: Text(
                              '-',
                              style: TextStyle(color: Colors.red, fontSize: 14),
                            )),
                        Text('$quantity'),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                quantity++;
                              });
                            },
                            child: Text(
                              '+',
                              style: TextStyle(color: Colors.red, fontSize: 14),
                            ))
                      ],
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\$$price ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Tide Original High Efficiency Liquid Luandry Detergent - 92 fl oz',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 15,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  _onpressbutton();
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.red,
                ),
              ),
              Text(
                'Add promo code',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          Divider(
            thickness: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              left: 8.0,
            ),
            child: Text(
              'Order summary',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Subtotal',
                          style: TextStyle(color: Colors.grey[800]),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            'Fees',
                            style: TextStyle(color: Colors.grey[800]),
                          ),
                        ),
                        Text(
                          'Estimated tax',
                          style: TextStyle(color: Colors.grey[800]),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            'Total',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$${price * quantity}',
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          '\$$fees',
                          style: TextStyle(color: Colors.grey[800]),
                        ),
                      ),
                      Text(
                        '\$${((price * quantity) * .14).toStringAsFixed(2)}',
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          '\$${((price * quantity) * .14) + fees + (price * quantity)}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: MaterialButton(
            onPressed: () {},
            child: Text(
              'Check out',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  void _onpressbutton() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Add promo code',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          CupertinoIcons.clear_circled_solid,
                          color: Colors.grey,
                        ))
                  ],
                ),
                Divider(),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Promo code',
                    border: OutlineInputBorder(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5)),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Add',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
