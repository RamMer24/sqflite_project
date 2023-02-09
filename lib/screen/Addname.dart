

import 'package:flutter/material.dart';

class Addname extends StatefulWidget {


  @override
  State<Addname> createState() => _AddnameState();
}

class _AddnameState extends State<Addname> {

  TextEditingController employeename = TextEditingController();
  TextEditingController _price =TextEditingController();


  var selected="marketing";
  var _gender="";

  var em= "";
  var pr="";
  var gr="";
  var dp="";

  bool ch1=true;


  _handalRadio(val)
  {
    setState(() {
      _gender = val!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Addproduct"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.0,),
                Text("NAME",style: TextStyle(fontSize: 20),),
                TextField(
                  controller: employeename,
                  maxLines: 1,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 3, color: Colors.black),

                    ),
                    focusedBorder:   OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 3, color: Colors.black),

                    ),
                  ),

                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 10.0,),
                Text("salry",style: TextStyle(fontSize: 20),),
                TextField(
                  controller: _price,
                  maxLines: 1,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 3, color: Colors.black),

                    ),
                    focusedBorder:   OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 3, color: Colors.black),

                    ),
                  ),

                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton(
                      value: selected,
                      onChanged: (val){
                        setState(() {
                          selected=val!;
                        });
                      },
                      items: [
                        DropdownMenuItem(
                          child: Text("sales"),
                          value: "sales",
                        ),
                        DropdownMenuItem(
                          child: Text("marketing"),
                          value: "marketing",
                        ),
                        DropdownMenuItem(
                          child: Text("finaces"),
                          value: "finaces",
                        ),
                        DropdownMenuItem(
                            child: Text("mangement"),
                            value: "mangement"
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: "male",
                      groupValue: _gender,
                      onChanged: _handalRadio,

                    ),
                    Text("male"),
                    Radio(
                      value: "female",
                      groupValue: _gender,
                      onChanged: _handalRadio,

                    ),
                    Text("female"),
                  ],
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: (){
                      var empname= employeename.text.toString();
                      var prn=_price.text.toString();
                      var grname = _gender.toString();

                      setState(() {
                        em = empname.toString();
                        pr = prn.toString();
                        gr= grname.toString();
                        dp=selected;
                      });

                      print("name:"+em);
                      print("price:"+pr);
                    },
                    child: Text("ADD"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                   child: Container(
                    color: Colors.black,
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Text("Name ="+em,style: TextStyle(fontSize: 30,color: Colors.black,),),
                          Text("salry="+pr,style: TextStyle(fontSize: 30,color: Colors.black,),),
                          Text("gender ="+gr,style: TextStyle(fontSize: 30,color: Colors.black,),),
                          Text("dept ="+dp,style: TextStyle(fontSize: 30,color: Colors.black,),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
