import 'package:flutter/material.dart';
import 'package:log_in_ui/models/details.dart';

class UIPage extends StatefulWidget {
  const UIPage({Key? key}) : super(key: key);

  @override
  State<UIPage> createState() => _UIPageState();
}

class _UIPageState extends State<UIPage> {
    var  listItem=[
    Details("Jhone Doe", "Transfered", "+201.00", "19 April 2019"),
    Details("Amelia Nelson", "Added to wallet", "+201.00", "19 April 2019"),
    Details("Martin Anderson", "Sent", "+201.00", "19 April 2019"),
    Details("Jhone Doe", "Transfered", "+201.00", "19 April 2019"),
    Details("Amelia Nelson", "Added to wallet", "+201.00", "19 April 2019"),
    Details("Martin Anderson", "Sent", "+201.00", "19 April 2019"),
    Details("Jhone Doe", "Transfered", "+201.00", "19 April 2019"),
    Details("Amelia Nelson", "Added to wallet", "+201.00", "19 April 2019"),
    Details("Martin Anderson", "Sent", "+201.00", "19 April 2019"),
    Details("Jhone Doe", "Transfered", "+201.00", "19 April 2019"),
    Details("Amelia Nelson", "Added to wallet", "+201.00", "19 April 2019"),
    Details("Martin Anderson", "Sent", "+201.00", "19 April 2019"),
    Details("Jhone Doe", "Transfered", "+201.00", "19 April 2019"),
    Details("Amelia Nelson", "Added to wallet", "+201.00", "19 April 2019"),
    Details("Martin Anderson", "Sent", "+201.00", "19 April 2019"),
    Details("Jhone Doe", "Transfered", "+201.00", "19 April 2019"),
    Details("Amelia Nelson", "Added to wallet", "+201.00", "19 April 2019"),
    Details("Martin Anderson", "Sent", "+201.00", "19 April 2019"),
    Details("Jhone Doe", "Transfered", "+201.00", "19 April 2019"),
    Details("Amelia Nelson", "Added to wallet", "+201.00", "19 April 2019"),
    Details("Martin Anderson", "Sent", "+201.00", "19 April 2019"),
    Details("Jhone Doe", "Transfered", "+201.00", "19 April 2019"),
    Details("Amelia Nelson", "Added to wallet", "+201.00", "19 April 2019"),
    Details("Martin Anderson", "Sent", "+201.00", "19 April 2019"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blueGrey,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.00)
                ),
                margin: EdgeInsets.all(16),

                child: Padding(
                  padding: const EdgeInsets.all(46.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [

                      Column(

                        children: const [
                          CircleAvatar(
                            child: Icon(
                              Icons.send_to_mobile,
                            ),
                          ),
                          Text("SEND")
                        ],
                      ),
                      Column(
                        children: const [
                          CircleAvatar(
                            child: Icon(
                              Icons.transfer_within_a_station,
                            ),
                          ),
                          Text("TRANSFER")
                        ],
                      ),
                      Column(
                        children: const [
                          CircleAvatar(
                            child: Icon(
                              Icons.book,
                            ),
                          ),
                          Text("PASSBOOK")
                        ],
                      ),
                      Column(

                        children: const [
                          CircleAvatar(
                            child: Icon(
                              Icons.more_horiz,
                            ),
                          ),
                          Text("MORE")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.00),
                ),
               // decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0), color: Colors.white,),

                margin: EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Transactions",style: TextStyle(fontSize:  30,fontWeight: FontWeight.bold),),
                          ElevatedButton(onPressed: (){}, child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Text("More"),

                          ))

                        ],
                      ),
                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: listItem.length,
                        itemBuilder: (BuildContext context, int index){

                          return Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children:  [
                                const CircleAvatar(
                                  child: Icon(
                                    Icons.add_box_outlined,
                                  ),
                                ),
                                Column(


                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    Text(listItem[index].name.toString(),style: TextStyle(fontSize:  15,fontWeight: FontWeight.bold)),
                                    Text(listItem[index].status.toString())
                                  ],
                                ),
                                Column(

                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children:  [
                                    Text(listItem[index].transaction.toString(),style: TextStyle(fontWeight: FontWeight.bold)),
                                    Text(listItem[index].date.toString())
                                  ],
                                )

                              ],
                            ),
                          );
                        },
                      ),






                    ],
                  ),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
/*
import 'package:flutter/material.dart';

class UIPage extends StatefulWidget {
  const UIPage({Key? key}) : super(key: key);

  @override
  State<UIPage> createState() => _UIPageState();
}

class _UIPageState extends State<UIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.00)
                ),
                margin: EdgeInsets.all(16),

                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(46.0),
                    child: Row(
                      children: [

                        Expanded(
                          child: Column(

                            children: const [
                              CircleAvatar(
                                child: Icon(
                                  Icons.send_to_mobile,
                                ),
                              ),
                              Text("SEND")
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: const [
                              CircleAvatar(
                                child: Icon(
                                  Icons.transfer_within_a_station,
                                ),
                              ),
                              Text("TRANSFER")
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: const [
                              CircleAvatar(
                                child: Icon(
                                  Icons.book,
                                ),
                              ),
                              Text("PASSBOOK")
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: const [
                              CircleAvatar(
                                child: Icon(
                                  Icons.more_horiz,
                                ),
                              ),
                              Text("MORE")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.00),
                ),
                margin: EdgeInsets.all(16),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Transactions",style: TextStyle(fontSize:  30,fontWeight: FontWeight.bold),),
                          ElevatedButton(onPressed: (){}, child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Text("More"),

                          ))

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children:  [
                            const CircleAvatar(
                              child: Icon(
                                Icons.add_box_outlined,
                              ),
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Ambila Nelson",style: TextStyle(fontSize:  15,fontWeight: FontWeight.bold)),
                                Text("Added To wallet")
                              ],
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("+201.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("02 April 2019")
                              ],
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children:  [
                            const CircleAvatar(
                              child: Icon(
                                Icons.send_to_mobile,
                              ),
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Martin AnderSon",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("Sent")
                              ],
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("+201.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("02 April 2019")
                              ],
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children:  [
                            const CircleAvatar(
                              child: Icon(
                                Icons.add_box_outlined,
                              ),
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Ambila Nelson",style: TextStyle(fontSize:  15,fontWeight: FontWeight.bold)),
                                Text("Added To wallet")
                              ],
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("+201.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("02 April 2019")
                              ],
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children:  [
                            const CircleAvatar(
                              child: Icon(
                                Icons.add_box_outlined,
                              ),
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Ambila Nelson",style: TextStyle(fontSize:  15,fontWeight: FontWeight.bold)),
                                Text("Added To wallet")
                              ],
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("+201.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("02 April 2019")
                              ],
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children:  [
                            const CircleAvatar(
                              child: Icon(
                                Icons.send_to_mobile,
                              ),
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Martin AnderSon",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("Sent")
                              ],
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("+201.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("02 April 2019")
                              ],
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children:  [
                            const CircleAvatar(
                              child: Icon(
                                Icons.add_box_outlined,
                              ),
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Ambila Nelson",style: TextStyle(fontSize:  15,fontWeight: FontWeight.bold)),
                                Text("Added To wallet")
                              ],
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("+201.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("02 April 2019")
                              ],
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children:  [
                            const CircleAvatar(
                              child: Icon(
                                Icons.add_box_outlined,
                              ),
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Ambila Nelson",style: TextStyle(fontSize:  15,fontWeight: FontWeight.bold)),
                                Text("Added To wallet")
                              ],
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("+201.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("02 April 2019")
                              ],
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children:  [
                            const CircleAvatar(
                              child: Icon(
                                Icons.send_to_mobile,
                              ),
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Martin AnderSon",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("Sent")
                              ],
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("+201.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("02 April 2019")
                              ],
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children:  [
                            const CircleAvatar(
                              child: Icon(
                                Icons.add_box_outlined,
                              ),
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Ambila Nelson",style: TextStyle(fontSize:  15,fontWeight: FontWeight.bold)),
                                Text("Added To wallet")
                              ],
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("+201.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("02 April 2019")
                              ],
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children:  [
                            const CircleAvatar(
                              child: Icon(
                                Icons.add_box_outlined,
                              ),
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Ambila Nelson",style: TextStyle(fontSize:  15,fontWeight: FontWeight.bold)),
                                Text("Added To wallet")
                              ],
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("+201.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("02 April 2019")
                              ],
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children:  [
                            const CircleAvatar(
                              child: Icon(
                                Icons.send_to_mobile,
                              ),
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Martin AnderSon",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("Sent")
                              ],
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("+201.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("02 April 2019")
                              ],
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children:  [
                            const CircleAvatar(
                              child: Icon(
                                Icons.add_box_outlined,
                              ),
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Ambila Nelson",style: TextStyle(fontSize:  15,fontWeight: FontWeight.bold)),
                                Text("Added To wallet")
                              ],
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("+201.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("02 April 2019")
                              ],
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children:  [
                            const CircleAvatar(
                              child: Icon(
                                Icons.add_box_outlined,
                              ),
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Ambila Nelson",style: TextStyle(fontSize:  15,fontWeight: FontWeight.bold)),
                                Text("Added To wallet")
                              ],
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("+201.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("02 April 2019")
                              ],
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children:  [
                            const CircleAvatar(
                              child: Icon(
                                Icons.send_to_mobile,
                              ),
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Martin AnderSon",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("Sent")
                              ],
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("+201.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("02 April 2019")
                              ],
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children:  [
                            const CircleAvatar(
                              child: Icon(
                                Icons.add_box_outlined,
                              ),
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Ambila Nelson",style: TextStyle(fontSize:  15,fontWeight: FontWeight.bold)),
                                Text("Added To wallet")
                              ],
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("+201.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("02 April 2019")
                              ],
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children:  [
                            const CircleAvatar(
                              child: Icon(
                                Icons.add_box_outlined,
                              ),
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Ambila Nelson",style: TextStyle(fontSize:  15,fontWeight: FontWeight.bold)),
                                Text("Added To wallet")
                              ],
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("+201.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("02 April 2019")
                              ],
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children:  [
                            const CircleAvatar(
                              child: Icon(
                                Icons.send_to_mobile,
                              ),
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Martin AnderSon",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("Sent")
                              ],
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("+201.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("02 April 2019")
                              ],
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children:  [
                            const CircleAvatar(
                              child: Icon(
                                Icons.add_box_outlined,
                              ),
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Ambila Nelson",style: TextStyle(fontSize:  15,fontWeight: FontWeight.bold)),
                                Text("Added To wallet")
                              ],
                            ),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("+201.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("02 April 2019")
                              ],
                            )

                          ],
                        ),
                      ),




                    ],
                  ),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
