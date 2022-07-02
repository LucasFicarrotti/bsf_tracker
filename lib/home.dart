import 'package:bsf_tracker/wallet_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inicio' ,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const Text(
              'Billeteras de la cuenta',
              style: TextStyle(
                color: Color.fromRGBO(41, 41, 41, 1),
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 0.65,
                aspectRatio: 2.5,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                enableInfiniteScroll: false,
              ),
              items: accountWallets,
            )
          ],
        ),
      ),
    );
  }

  final List<Widget> accountWallets = walletsAdded
      .map(
        (e) => Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: SizedBox(
              width: 200,
              child: Column(
                children: [
                  Text(
                    '${e.name} ${e.surname}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Expanded(child: Container()),
                  Text(
                    '\$ ${e.moneySpend.toString()}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
          ),
        ),
      )
      .toList();
}

final List<WalletModel> walletsAdded = [
  WalletModel(name: 'Gustavo', surname: 'Ficarrotti', moneySpend: 250),
  WalletModel(name: 'Leticia', surname: 'Zarate', moneySpend: 1000),
  WalletModel(name: 'Matias', surname: 'Ficarrotti', moneySpend: 0),
  WalletModel(name: 'Lucas', surname: 'Ficarrotti', moneySpend: 10000),
  WalletModel(name: 'Paula', surname: 'Ficarrotti', moneySpend: 17000),
];
