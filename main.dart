import 'package:flutter/material.dart';
void main() => runApp(PayementPage());
class PayementPage extends StatefulWidget {
  @override
  _PayementPageState createState() => _PayementPageState();
}

class _PayementPageState extends State<PayementPage> {
  String radioItem = '';
  bool visacard = false;
  bool madacard = false;
  bool applepaycard = false;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Payement"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: _width / 3,
                // color: Colors.blue,
                child: RadioListTile(
                  dense: true,
                  groupValue: radioItem,
                  title: Text('Apple Pay'),
                  value: 'Item 1',
                  onChanged: (val) {
                    setState(() {
                      radioItem = val;
                      visacard = false;
                      applepaycard = true;
                      madacard = false;
                    });
                  },
                ),
              ),
              Container(
                width: _width / 3,
                // color: Colors.orange,
                child: RadioListTile(
                  dense: true,
                  groupValue: radioItem,
                  title: Text('Mada'),
                  value: 'Item 2',
                  onChanged: (val) {
                    setState(() {
                      radioItem = val;
                      visacard = false;
                      madacard = true;
                      applepaycard = false;
                    });
                  },
                ),
              ),
              Container(
                width: _width / 3,
                // color: Colors.blue,
                child: RadioListTile(
                  dense: true,
                  groupValue: radioItem,
                  title: Text('Visa'),
                  value: 'Item 3',
                  onChanged: (val) {
                    setState(() {
                      radioItem = val;
                      visacard = true;
                      applepaycard = false;
                      madacard = false;
                    });
                  },
                ),
              ),
            ],
          ),
          applepaycard
              ? Container(
                  child: Text("Apple Pay"),
                )
              : SizedBox.shrink(),
          madacard
              ? Container(
                  child: Text("Mada"),
                )
              : SizedBox.shrink(),
          visacard
              ? Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextFormField(
                            decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Card Holder Name',
                          hintText: 'Card Holder Name',
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Card Number',
                          hintText: 'Card Number',
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Card Expiry date',
                          hintText: 'Card Expiry date',
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'CVV',
                          hintText: 'CVV',
                        )),
                        SizedBox(
                          width: _width,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            onPressed: (){},
                          

                            color: Color(0xFF042E6F),

                            textColor: Colors.white,
                            child: Text(
                              'Make payment',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Tajawal'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
