import 'package:flutter/material.dart';
import 'package:namaz_ubaktysy/Style/app_color_style.dart';
import 'package:namaz_ubaktysy/Style/app_text_style.dart';

class NamazUbakysy extends StatefulWidget {
  const NamazUbakysy({super.key});

  @override
  State<NamazUbakysy> createState() => _NamazUbakysyState();
}

class _NamazUbakysyState extends State<NamazUbakysy> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: const Text('НАМАЗ УБАКТЫСЫ',
        textAlign: TextAlign.center,
        style: AppTextStyle.titleStyle),
        backgroundColor: AppColorStyle.color4,
      ),
      body:  Column(
        children: [
          Container(
            height: 80,
            width: double.infinity,
          //   child: const Image(image: AssetImage('assets/fon.jpg'),
          // fit: BoxFit.fill,),
          ),

          const SizedBox(height: 5,),

          Container(
            height: 120,
            width: 120,
              decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/LogoDinBil.png'),
                
          ),
            ),
          ),
          const SizedBox(height: 5,),
          
          Container(
            height: 65,
            width: 330,
            child: Text('Багымдат', style: TextStyle(color: AppColorStyle.whitecolor),
            textAlign: TextAlign.center,),
              decoration: BoxDecoration(
              color: AppColorStyle.color5,
              borderRadius: BorderRadius.circular(8.0),
              
            ),
          ),

          const SizedBox(height: 9,),
          
          Container(
  height: 45,
  width: 330,
  decoration: BoxDecoration(
    color: AppColorStyle.color1,
    borderRadius: BorderRadius.circular(8.0),
  ),
  child: Stack(
    alignment: Alignment.center,
    children: [
      Text('Багымдат', style: AppTextStyle.ubakytStyle,),
    
      Image.asset('assets/bagymdat.png', fit: BoxFit.scaleDown,),
    ],
  ),
),

          const SizedBox(height: 9,),
          
          Container(
  height: 45,
  width: 330,
  decoration: BoxDecoration(
    color: AppColorStyle.color1,
    borderRadius: BorderRadius.circular(8.0),
  ),
  child: Stack(
    alignment: Alignment.center,
    children: [
      Text('Күндүн чыгуусу', style: AppTextStyle.ubakytStyle,),
    
      Image.asset('assets/Kundun_chyguusu.png', fit: BoxFit.scaleDown,),
    ],
  ),
),

          const SizedBox(height: 9,),
          
          Container(
  height: 45,
  width: 330,
  decoration: BoxDecoration(
    color: AppColorStyle.color1,
    borderRadius: BorderRadius.circular(8.0),
  ),
  child: Stack(
    alignment: Alignment.center,
    children: [
      Text('Бешим', style: AppTextStyle.ubakytStyle,),
    
      Image.asset('assets/beshim.png', fit: BoxFit.scaleDown,),
    ],
  ),
),

          const SizedBox(height: 9,),
          
          Container(
  height: 45,
  width: 330,
  decoration: BoxDecoration(
    color: AppColorStyle.color1,
    borderRadius: BorderRadius.circular(8.0),
  ),
  child: Stack(
    alignment: Alignment.center,
    children: [
      Text('Аср', style: AppTextStyle.ubakytStyle,),
    
      Image.asset('assets/Asr.png', fit: BoxFit.scaleDown,),
    ],
  ),
),

          const SizedBox(height: 9,),
          
          Container(
  height: 45,
  width: 330,
  decoration: BoxDecoration(
    color: AppColorStyle.color1,
    borderRadius: BorderRadius.circular(8.0),
  ),
  child: Stack(
    alignment: Alignment.center,
    children: [
      Text('Шам', style: AppTextStyle.ubakytStyle,),
    
      Image.asset('assets/Sham.png', fit: BoxFit.scaleDown,),
    ],
  ),
),

          const SizedBox(height: 9,),
          
          Container(
  height: 45,
  width: 330,
  decoration: BoxDecoration(
    color: AppColorStyle.color1,
    borderRadius: BorderRadius.circular(8.0),
  ),
  child: Stack(
    alignment: Alignment.center,
    children: [
      Text('Куптан', style: AppTextStyle.ubakytStyle,),
    
      Image.asset('assets/kuptan.png', fit: BoxFit.fill,),
    ],
  ),
),

          const SizedBox(height: 9,),
          
          Container(
            height: 60,
            width: 330,
            child: Icon(Icons.navigation_rounded,),
            
              decoration: BoxDecoration(
              color: AppColorStyle.color5,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ],
      
      ),
      
    );
  }
}