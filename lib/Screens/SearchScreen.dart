import 'package:BMIcalculator/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:BMIcalculator/components/rounded_input_field.dart';

final _firestore = FirebaseFirestore.instance;

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String userName;
  DatabaseMethods databaseMethods = new DatabaseMethods();
  TextEditingController SearchTextEditingController =
      new TextEditingController();
  bool isLoading = false;
  bool haveUserSearched = false;

  QuerySnapshot searchSnapshot;

  innitSearch() async {
    return await _firestore
        .collection("users")
        .where("name", isEqualTo: SearchTextEditingController.text)
        .get()
        .then((value) {
      setState(() {
        searchSnapshot = value;
      });
    });
  }

  // createChatRoom(String userName) {
  //   List<String> users=[userName,];
  //   databaseMethods.createChatRooms(chatRoomId, chatRoomMap)
  // }

  Widget searchList() {
    return searchSnapshot != null
        ? ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: searchSnapshot.docs.length,
            itemBuilder: (context, index) {
              return SearchTile(
                username: searchSnapshot.docs[index].get("name").toString(),
              );
            },
          )
        : Container();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 50,
                    ),
                    color: Color(0x54FFFFFF),
                    child: Row(
                      children: [
                        Expanded(
                          child: RoundedInputField(
                            hintText: "search username ...",
                            controller: SearchTextEditingController,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            innitSearch();
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  const Color(0x36FFFFFF),
                                  const Color(0x0FFFFFFF)
                                ],
                                begin: FractionalOffset.topLeft,
                                end: FractionalOffset.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  searchList()
                ],
              ),
            ),
          ),
        ));
  }
}

class SearchTile extends StatelessWidget {
  final String username;
  SearchTile({this.username});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Wrap(direction: Axis.horizontal, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Text(
                  username,
                  style: TextStyle(color: Colors.black),
                ),
                width: width * 0.40,
                height: height * 0.20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/trainer.png'),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ]);
  }
}
