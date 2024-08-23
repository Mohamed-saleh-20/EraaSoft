import 'classes.dart';
import 'dart:io';
void main(){
print("enter your password : ");
int pass =int.tryParse(stdin.readLineSync()!)??0;

// if the password is correct 
if(pass.toString().length==4){
  print("what is the type of your Account: ");
  print ("(1) Normal ");
  print("(2) Saving");
  String? type =stdin.readLineSync();
switch (type){

  case "1"://the Account Type is *Normal* 
    normal n=normal();
    print(n.deposit());
    break;


  case "2"://the Account Type is *Saving*
  saving s=saving();
  print("enter the operation you want to do :");
  print("(1) Deposit");
  print("(2) Withdraw");
  print("(3) Know your Balance");
  print("(4) transfere money ");
  String? op =stdin.readLineSync();
  switch (op){
   case "1"://the operation is *Deposit*
    print(s.deposit);
    break;

  case "2":// the operation is *withdraw*
    print(s.withdraw());
    break;
  case"3":// the operation is *Know your Balance*
  print(s.knowBalance);
  break;
  case "4":  // the operation is *transfere money*
  print(s.transfer());

      }
 }
  //if the password is incorrect
}else{
  print("password is incorrect pleas enter the right password :");
  main();
  }
 }

