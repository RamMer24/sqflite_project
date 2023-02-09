

import 'package:flutter/material.dart';

class Addproduct extends StatefulWidget {


  @override
  State<Addproduct> createState() => _AddproductState();
}

class _AddproductState extends State<Addproduct> {

  TextEditingController employeename = TextEditingController();
  TextEditingController _price =TextEditingController();


  var selected="Gujrati";
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
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Text("PRICE",style: TextStyle(fontSize: 20),),
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
                              child: Text("gujrati"),
                              value: "Gujrati",
                            ),
                            DropdownMenuItem(
                              child: Text("Maharastra"),
                              value: "MH",
                            ),
                            DropdownMenuItem(
                              child: Text("Punjab"),
                              value: "PJ",
                            ),
                            DropdownMenuItem(
                                child: Text("Delhi"),
                                value: "DL"
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(
                          value: "simple",
                          groupValue: _gender,
                          onChanged: _handalRadio,

                        ),
                        Text("simple"),
                        Radio(
                          value: "varible",
                          groupValue: _gender,
                          onChanged: _handalRadio,

                        ),
                        Text("varible"),
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
                              Text("price="+pr,style: TextStyle(fontSize: 30,color: Colors.black,),),
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
