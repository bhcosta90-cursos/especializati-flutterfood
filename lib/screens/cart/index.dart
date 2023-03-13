import 'package:flutter/material.dart';
import './../shared/widgets/bottom_navigator.dart';
import './widgets/cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Carrinho',
              style:
                  TextStyle(color: Theme.of(context).colorScheme.background)),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        bottomNavigationBar: BottomNavigator(2),
        body: _buildPage(context));
  }

  Widget _buildPage(context) {
    return Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          shrinkWrap: true,
          children: [
            _buildHeader(context),
            _buildCartList(context),
            _buildTextTotalCart(context),
            _buildFormComment(context),
            _buildButtonCheckout(context),
          ],
        ));
  }

  Widget _buildHeader(context) {
    return Container(
        margin: const EdgeInsets.only(top: 12),
        child: const Text(
          'Total (3) itens',
          style: TextStyle(color: Colors.black),
        ));
  }

  Widget _buildTextTotalCart(context) {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 16),
      child: const Text(
        "Preço total: R\$ 100",
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildCartList(context) {
    return Container(
        child: ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) => const CartWidget(),
      itemCount: 6,
    ));
  }

  Widget _buildFormComment(context) {
    return TextFormField(
      style: TextStyle(color: Theme.of(context).colorScheme.primary),
      cursorColor: Theme.of(context).colorScheme.primary,
      onSaved: (newValue) {
        print(newValue);
      },
      decoration: InputDecoration(
          labelText: "Comentário (ex: sem cebola)",
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.primary)),
          labelStyle: TextStyle(color: Theme.of(context).colorScheme.primary)),
    );
  }

  Widget _buildButtonCheckout(context) {
    return Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: Colors.orange[800],
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0),
                blurRadius: 6,
              )
            ]),
        child: MaterialButton(
          onPressed: () => print("save"),
          child: Text('Finalizar Pedido'),
          color: Colors.transparent,
          elevation: 0,
        ));
  }
}
