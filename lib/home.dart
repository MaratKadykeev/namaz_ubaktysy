import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:namaz_ubaktysy/Models/sitymodels.dart';
import 'package:namaz_ubaktysy/Style/app_color_style.dart';
import 'package:namaz_ubaktysy/Style/app_text_style.dart';
// ignore: unused_import
import 'package:intl/date_symbol_data_local.dart';


class NamazUbakysy extends StatefulWidget {
  const NamazUbakysy({super.key});

  @override
  State<NamazUbakysy> createState() => _NamazUbakysyState();
}
String getCurrentTime() {
  final now = DateTime.now();
  final formatter = DateFormat('HH:mm:ss');
  return formatter.format(now);
}


String getCurrentDate() {
  final now = DateTime.now();
  final formatter = DateFormat('dd/MMMM');
  return formatter.format(now);
}


class _NamazUbakysyState extends State<NamazUbakysy> {
  
Sitymodel? selectedSity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        leading: PopupMenuButton<Sitymodel>(
          onSelected: (value) {
            setState(() {
              selectedSity = value; 
            });
          },
          itemBuilder: (BuildContext context) {
            return sity.map((e) => PopupMenuItem<Sitymodel>(value: e, child: Text(e.name),)).toList();
          },
                ),
        title:  Text( selectedSity?.name ?? "",
        style: AppTextStyle.titleStyle, ),
        backgroundColor: AppColorStyle.color4,
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
       
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/fon.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
  
                  Text(getCurrentDate(),
                  style: const TextStyle(fontSize: 20),),
                  const SizedBox(width: 70,),
                  Text(
            ' ${getCurrentTime()}',
            style: const TextStyle(fontSize: 30),
          ),
                ],
              ),
              Container(
              
                height: 150,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/LOGODINBIL.png'),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 65,
                width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColorStyle.color5,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child:  const Text('Багымдат',
                  style: TextStyle(color: AppColorStyle.whitecolor),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              Container(
                height: 45,
                width:MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: AppColorStyle.color1,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Image.asset(
                        'assets/bagymdat.png',
                        fit: BoxFit.scaleDown,
                        width: 30,
                        height: 30,
                      ),
                    )),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Багымдат',
                          style: AppTextStyle.ubakytStyle,
                        ),
                        Text(
                          '04 : 42',
                          style: AppTextStyle.ubakytStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 9,
              ),
         Container(
                height: 45,
                width:MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: AppColorStyle.color1,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Image.asset(
                        'assets/Kundun_chyguusu.png',
                        fit: BoxFit.scaleDown,
                        width: 35,
                        height: 35,
                      ),
                    )),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Күндүн чыгуусу',
                          style: AppTextStyle.ubakytStyle,
                        ),
                        Text(
                          '04 : 42',
                          style: AppTextStyle.ubakytStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              Container(
                height: 45,
                width:MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: AppColorStyle.color1,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Бешим',
                      style: AppTextStyle.ubakytStyle,
                    ),
                    Image.asset(
                      'assets/beshim.png',
                      fit: BoxFit.scaleDown,
                      width: 30,
                      height: 30,
                    ),
                    const Text(
                      '13 : 02',
                      style: AppTextStyle.ubakytStyle,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              Container(
                height: 45,
                width:MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: AppColorStyle.color1,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Аср',
                      style: AppTextStyle.ubakytStyle,
                    ),
                    Image.asset(
                      'assets/Asr.png',
                      fit: BoxFit.scaleDown,
                      width: 30,
                      height: 30,
                    ),
                    const Text(
                      '17 : 45',
                      style: AppTextStyle.ubakytStyle,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              Container(
                height: 45,
                width:MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: AppColorStyle.color1,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Шам',
                      style: AppTextStyle.ubakytStyle,
                    ),
                    Image.asset(
                      'assets/Sham.png',
                      fit: BoxFit.scaleDown,
                      width: 30,
                      height: 30,
                    ),
                    const Text(
                      '19 : 46',
                      style: AppTextStyle.ubakytStyle,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              Container(
                height: 45,
                width:MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: AppColorStyle.color1,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Куптан',
                      style: AppTextStyle.ubakytStyle,
                    ),
                    Image.asset(
                      'assets/kuptan.png',
                      fit: BoxFit.scaleDown,
                      width: 25,
                      height: 25,
                    ),
                    const Text(
                      '21 : 22',
                      style: AppTextStyle.ubakytStyle,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              Container(
                height: 60,
                width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColorStyle.color5,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.navigation_rounded),
                    SizedBox(width: 10),
                    Text(
                      'КЫБЫЛА',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
