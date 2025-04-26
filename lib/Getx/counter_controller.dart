import 'package:get/get.dart';

class CounterController extends GetxController{
   var _count = 0.obs;

   get count => _count;

   void increment(){
     _count++;
   }

   void decrement(){
     _count--;
   }
}