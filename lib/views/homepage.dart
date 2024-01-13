import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wellnessz/controllers/meals_controller.dart';
import 'package:wellnessz/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final mealscontroller = Get.put(MealController());
  bool bicep = false;
  bool weightloss = false;
  bool stamina = false;

  @override
  Widget build(BuildContext context) {
    print('here is print');
    print(mealscontroller.mealsdata[0].mealinfo['dish']);
    return Scaffold(
      body: Container(
        color: '171717'.toColor(),
        child: GetBuilder<MealController>(builder: (mealscontroller){
          return SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.only(top: 50.0 , left: 13 , right: 13),
          child: Column(
          children: [
          Row(
          children: [
          Image.asset('assets/dp.png' , height: 40,),
          SizedBox(width: 10,),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Hello, Jane' , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500 , color: Colors.white),),
          Text('Welcome Back' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600 , color: Colors.white),),


          ],
          ),
          Spacer(),
          Row(
          children: [
          Image.asset('assets/chat.png' , height: 20,),
          SizedBox(width: 20,),
          Image.asset('assets/notification.png' , height: 20),
          SizedBox(width: 10,),
          ],
          ),
          ],
          ),
          Row(
          children: [
          Column(
          children: [
          Padding(
          padding: const EdgeInsets.only(top: 20.0 , bottom: 5),
          child: Center(child: Image.asset('assets/coach.png' , height: 70,)),
          ),

          Text('Coach Story' , style: TextStyle(fontSize: 10 , fontWeight: FontWeight.w600 ),)
          ],
          ),
          SizedBox( width: 20,),
          Column(
          children: [
          Padding(
          padding: const EdgeInsets.only(top: 20.0 , bottom: 5),
          child: Center(child: Image.asset('assets/story.png' , height: 70,)),
          ),

          Text('Result' , style: TextStyle(fontSize: 10 , fontWeight: FontWeight.w600 ),)
          ],
          ),
          ],
          ),
          SizedBox(height: 18,),
          Row(
          children: [
          Expanded(
          child: Container(
          height: 44,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: '67BC2A'.toColor()
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset('assets/Create.png' , height: 20,),
          SizedBox(width: 8,),
          Text('Notes' , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 15),)
          ],
          ),
          ),
          ),
          SizedBox(width: 12,),
          Expanded(
          child: Container(
          height: 44,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: '67BC2A'.toColor()
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset('assets/Clock.png' , height: 20,),
          SizedBox(width: 8,),
          Text('Reminders' , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 15),)
          ],
          ),
          ),
          ),
          ],
          ),
          SizedBox(height: 14,),
          Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16)
          ),
          child: Padding(
          padding: const EdgeInsets.only(top: 12, right: 15 , left: 15,bottom: 17),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('My Goal' , style: TextStyle(fontSize:20 , fontWeight: FontWeight.w500 ),),
          SizedBox(height: 16,),
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 10),),
          Spacer(),
          Center(
          child: Container(
          height: 44,
          width: 91,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: '67BC2A'.toColor()
          ),
          child: Center(child: Text('New Goal' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 12),))
          ),
          ),


          ],
          ),
          ),
          ),
          SizedBox(height: 5,),
          Container(
          width: MediaQuery.of(context).size.width,
          height: 248,
          decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16)
          ),
          child: Padding(
          padding: const EdgeInsets.only(top: 12, right: 15 , left: 15,bottom: 17),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('My Goals' , style: TextStyle(fontSize:20 , fontWeight: FontWeight.w500 ),),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
          SizedBox(height:20, width: 20,
          child: Checkbox(value: bicep, onChanged: (_){
          setState(() {
          bicep = !bicep;
          });
          }, checkColor: Colors.black,
          side: BorderSide(
          // ======> CHANGE THE BORDER COLOR HERE <======
          color: Colors.white,
          // Give your checkbox border a custom width
          width: 1.5,
    ),
    activeColor: '67BC2A'.toColor(),),
    ),
    SizedBox(width: 8,),
    Text('Bicep Training' , style: TextStyle(fontSize:16 , fontWeight: FontWeight.w400 ),),
    ],
    ),
    SizedBox(height: 14,),
    Row(mainAxisAlignment: MainAxisAlignment.start,
    children: [
    SizedBox(height:20,width: 20,
    child: Checkbox(value: weightloss, onChanged: (_){
    setState(() {
    weightloss = !weightloss;
    });
    }, checkColor: Colors.black,
    side: BorderSide(
    // ======> CHANGE THE BORDER COLOR HERE <======
    color: Colors.white,
    // Give your checkbox border a custom width
    width: 1.5,
    ),
    activeColor: '67BC2A'.toColor(),),
    ),
    SizedBox(width: 8,),
    Text('Weight Loss' , style: TextStyle(fontSize:16 , fontWeight: FontWeight.w400 ),),
    ],
    ),
    SizedBox(height: 14,),
    Row(mainAxisAlignment: MainAxisAlignment.start,
    children: [
    SizedBox(height:20,width: 20,
    child: Checkbox(materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    value: stamina, onChanged: (_){
    setState(() {
    stamina = !stamina;
    });
    }, checkColor: Colors.black,
    side: BorderSide(
    // ======> CHANGE THE BORDER COLOR HERE <======
    color: Colors.white,
    // Give your checkbox border a custom width
    width: 1.5,
    ),
    activeColor: '67BC2A'.toColor(),),
    ),
    SizedBox(width: 8,),
    Text('Increase in Stamina' , style: TextStyle(fontSize:16 , fontWeight: FontWeight.w400 ),),
    ],
    ),
    SizedBox(height: 16,),
    ClipRRect(borderRadius: BorderRadius.all(Radius.circular(10)),
    child: LinearProgressIndicator(

    minHeight: 14,
    value: 0.7,
    color: '03632C'.toColor(), //<-- SEE HERE
    backgroundColor: 'DBDBDB'.toColor(),
    ),
    ),
    Spacer(),
    Center(
    child: Container(
    height: 44,
    width: 91,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: '67BC2A'.toColor()
    ),
    child: Center(child: Text('Add Goal' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 12),))
    ),
    ),

    ],
    ),
    ),
    ),
    SizedBox(height: 10,),
    Container(
    height: 266,width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(16)
    ),
    child: Padding(
    padding: const EdgeInsets.only(top:11.0 , left: 14 , right: 14),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text('Next Meal' , style: TextStyle(fontSize:20 , fontWeight: FontWeight.w500 ),),
    SizedBox(height: 13,),
    Stack(alignment: AlignmentDirectional.topEnd,
    children: [
    Image.asset('assets/meal.png' , width:MediaQuery.of(context).size.width ,height: 150, fit: BoxFit.fill,),
    Padding(
    padding: const EdgeInsets.only(right: 8.0 , top: 8),
    child: Container(height: 24,width: 24,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(4)
    ),
    child: Center(child: Image.asset('assets/hearticon.png' , height: 11,))
    ),
    )
    ],
    ),
    SizedBox(height: 13,),
    Text(mealscontroller.mealsdata[0].mealinfo['dish'], style: TextStyle(fontSize:12, fontWeight: FontWeight.w600 , color: Colors.white ),),
    SizedBox(height: 8,),
    Row(
    children: [
    Image.asset('assets/burn.png' , height: 10,),
    SizedBox(width: 5,),
    Text('${mealscontroller.mealsdata[0].mealinfo['cal']} kcal', style: TextStyle(fontSize:10 , fontWeight: FontWeight.w500 , color: 'C7C7C7'.toColor() )),
    SizedBox(width: 5,),
    Text('|', style: TextStyle(fontSize:10 , fontWeight: FontWeight.w500 , color: 'C7C7C7'.toColor() )),
    SizedBox(width: 5,),
    Image.asset('assets/clockicon.png' , height: 10,),
    SizedBox(width: 5,),
    Text('${mealscontroller.mealsdata[0].mealinfo['time']} min', style: TextStyle(fontSize:10 , fontWeight: FontWeight.w500 , color: 'C7C7C7'.toColor() )),
    ],
    )
    ],
    ),
    ),

    ),
    SizedBox(height: 5,),
    Container(
    height: 287,width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(16)
    ),
    child: Padding(
    padding: const EdgeInsets.only(top:11.0 , left: 14 , right: 14),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text('Retail Store' , style: TextStyle(fontSize:20 , fontWeight: FontWeight.w500 ),),
    SizedBox(height: 13,),
    Stack(alignment: AlignmentDirectional.topEnd,
    children: [
    Image.asset('assets/retail.png' , width:MediaQuery.of(context).size.width ,height: 150, fit: BoxFit.fill,),
    Padding(
    padding: const EdgeInsets.only(right: 8.0 , top: 8),
    child: Container(height: 24,width: 24,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(4)
    ),
    child: Center(child: Image.asset('assets/hearticon.png' , height: 11,))
    ),
    )
    ],
    ),
    SizedBox(height: 13,),
    Text(mealscontroller.mealsdata[0].storeinfo['name'] , style: TextStyle(fontSize:12, fontWeight: FontWeight.w600 ),),
    SizedBox(height: 5,),
    Text('Order ID #1234-1234-1234', style: TextStyle(fontSize:10 , fontWeight: FontWeight.w500 , color: 'C7C7C7'.toColor() )),
    SizedBox(height: 13,),
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text('Ordered On: ${mealscontroller.mealsdata[0].storeinfo['orderon']}', style: TextStyle(fontSize:10 , fontWeight: FontWeight.w500 , color: 'C7C7C7'.toColor() )),
    Row(
    children: [
    Icon(Icons.access_time , color: 'C7C7C7'.toColor() , size: 12,),
    SizedBox(width: 5,),
    Text('Delivery within 3-5 Days', style: TextStyle(fontSize:10 , fontWeight: FontWeight.w500 , color: 'C7C7C7'.toColor() )),

    ],
    )
    ],
    )
    ],
    ),
    ),

    ),
    SizedBox(height: 90,),
    /*Expanded(
                  child: GetBuilder<MealController>(builder: (mealscontroller){
                   return ListView.builder(itemCount: mealscontroller.mealsdata.length,
                        itemBuilder: (BuildContext context, int index){
                          return Text(mealscontroller.mealsdata[index].image , style: TextStyle(color: Colors.white),);

                  });


                  },

                  ),
                )*/
    ],
    ),
    ),
    );
    }
      )))
    ;
  }
}
