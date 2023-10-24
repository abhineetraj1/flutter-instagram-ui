import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

void msg() {
  navPressed(5);
}

void navPressed(int a) {
  if (a == 0) {
    runApp(const Home());
  } else if (a == 1) {
    runApp(const Search());
  } else if (a == 2) {
    //runApp(app);
  } else if (a == 3) {
    runApp(const Explore());
  } else if (a == 4) {
    runApp(const Profile());
  } else if (a == 5) {
    runApp(const Message());
  } else if (a == 6){
    runApp(const Notify());
  } else if (a == 7) {
    runApp(const SettingTab());
  } else if (a == 8) {
    runApp(const Followers());
  } else if (a == 9) {
    runApp(const Following());
  } else if (a == 10) {
    runApp(const EditProfile());
  } else if (a == 11) {
    runApp(const Post());
  } else if (a == 12) {
    runApp(const Login());
  } else if (a == 13) {
    runApp(const SignUp());
  } else {

  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Profile();
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type:BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.switch_account), label: "Profile"),
          ],
          onTap: navPressed,
          currentIndex: 0,
          selectedItemColor: Color.fromARGB(255, 229, 0, 179),
        ),
        appBar: AppBar(backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Instagram", style: TextStyle(color: Colors.black),),
              Row(
                children: [
                  TextButton(onPressed: () {navPressed(6);},child: Icon(Icons.notifications, color: Colors.black,)),
                  TextButton(onPressed: msg,child: Icon(Icons.message, color: Colors.black,)),

                ],
              )
            ],
          ),
        ),
        body: Padding(padding: EdgeInsets.all(2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < 50; i=i+1) Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.95,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/profile.png", height: 20,),
                            Text(" username", style: TextStyle(fontSize: 18, fontFamily: "Calibri"),),
                          ],
                        ),
                      ),
                      Image.asset("assets/post1.jpg", width: MediaQuery.of(context).size.width*0.95,),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.favorite),
                            Icon(Icons.comment),
                            Icon(Icons.send),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
        ),
     ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type:BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.switch_account), label: "Profile"),
          ],
          onTap: navPressed,
          currentIndex: 4,
          selectedItemColor: Color.fromARGB(255, 229, 0, 179),
        ),
        body: Padding(padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("username_insta", style: TextStyle(fontSize: 20, fontFamily: "Calibri", fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Icon(Icons.add_a_photo),
                        TextButton(onPressed: () {navPressed(7);},child: Icon(Icons.settings, color: Colors.black))
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset("assets/profile.png", height: MediaQuery.of(context).size.width*0.3,),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("30", style: TextStyle(fontSize: 18)),
                            Text("Posts", style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(width: 20,),
                        TextButton(
                          onPressed: () {navPressed(8);},
                          style: TextButton.styleFrom(foregroundColor: Colors.black),
                          child: Column(
                            children: [
                              Text("100", style: TextStyle(fontSize: 18)),
                              Text("Followers", style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        TextButton(
                          onPressed:() {navPressed(9);},
                          style: TextButton.styleFrom(foregroundColor: Colors.black),
                          child: Column(
                            children: [
                              Text("5", style: TextStyle(fontSize: 18)),
                              Text("Following", style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )
                      ],
                    )
                  ]
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("User's Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                ),
                Align(alignment: Alignment.bottomLeft, child: Text("Hey there, I am using instagram", style: TextStyle(fontSize: 18),)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width*0.45,
                        child: ElevatedButton(onPressed: () {navPressed(10);}, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Icon(Icons.edit, color: Colors.black,), Text("Edit profile", style: TextStyle(fontSize: 20, color: Colors.black))
                        ],),style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 222, 222, 222)),),
                        ),
                      ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width*0.45,
                        child: ElevatedButton(onPressed: () {}, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Icon(Icons.share, color: Colors.black,), Text("Share profile", style: TextStyle(fontSize: 20, color: Colors.black))
                        ],),style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 222, 222, 222)),),
                        ),
                      ),
                  ]
                ),
                for (int i=0; i < 10; i=i+1) Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: () {navPressed(11);},child: Image.asset("assets/un.png", width: MediaQuery.of(context).size.width/3.7,)),
                    TextButton(onPressed: () {navPressed(11);},child: Image.asset("assets/un.png", width: MediaQuery.of(context).size.width/3.7,)),
                    TextButton(onPressed: () {navPressed(11);},child: Image.asset("assets/un.png", width: MediaQuery.of(context).size.width/3.7,)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         bottomNavigationBar: BottomNavigationBar(
          type:BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.switch_account), label: "Profile"),
          ],
          onTap: navPressed,
          currentIndex: 1,
          selectedItemColor: Color.fromARGB(255, 229, 0, 179),
        ),
        appBar: AppBar(title: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            width: MediaQuery.of(context).size.width*0.95,
            child: TextField(decoration: InputDecoration(hintText: "Search anything",), style: TextStyle(fontSize: 19),),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 151, 151, 151),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/profile.png", height: 30,),
                    Text("username", style: TextStyle(fontSize: 19),)
                  ],
                ),
                Icon(Icons.cancel)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/profile.png", height: 30,),
                    Text("username1", style: TextStyle(fontSize: 19),)
                  ],
                ),
                Icon(Icons.cancel)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/profile.png", height: 30,),
                    Text("username2", style: TextStyle(fontSize: 19),)
                  ],
                ),
                Icon(Icons.cancel)
              ],
            ),
          )
        ],
      ),
      ),
    );
  }
}

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Padding(
          padding: EdgeInsets.all(4),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30),
                Row(
                  children: [
                    TextButton(onPressed: () {navPressed(0);},child: Icon(Icons.arrow_back,color: Colors.black)),
                    Text("abhineetraj1", style: TextStyle(fontSize: 20)),
                  ],
                ),
                SizedBox(height: 20),
                for (int i=0; i < 50;i=i+1) Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                      children: [
                        Image.asset("assets/profile.png", height: 50),
                        SizedBox(width: 15),
                        Column(
                          children: [Text("username$i", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          Align(alignment: Alignment.topLeft,child: Text("Sent a reel"))
                          ]
                          )
                      ],
                    ),
                    Icon(Icons.camera_enhance)
                    ]
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type:BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.switch_account), label: "Profile"),
          ],
          onTap: navPressed,
          currentIndex: 3,
          selectedItemColor: Color.fromARGB(255, 229, 0, 179),
        ),
      body: Padding(padding: EdgeInsets.all(0),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 20,),
            for (int i=0;i < 30; i=i+1) Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/un.png", width: MediaQuery.of(context).size.width/3,),
                Image.asset("assets/un.png", width: MediaQuery.of(context).size.width/3,),
                Image.asset("assets/un.png", width: MediaQuery.of(context).size.width/3,),
              ],
            ),
          ]),
        ),
      ),
      ),
    );
  }
}

class Notify extends StatelessWidget {
  const Notify({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Padding(padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height:20),
                Align(alignment: Alignment.centerLeft,child: TextButton(onPressed: () {navPressed(0);}, child: Icon(Icons.arrow_back, color: Colors.black,))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/profile.png", height: 30),
                        SizedBox(width: 10),
                        Text("username", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Text("started following you", style: TextStyle(fontSize: 20),)
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/profile.png", height: 30),
                        SizedBox(width: 10),
                        Text("username", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Text("started following you", style: TextStyle(fontSize: 20),)
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/profile.png", height: 30),
                        SizedBox(width: 10),
                        Text("username", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Text("started following you", style: TextStyle(fontSize: 20),)
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/profile.png", height: 30),
                        SizedBox(width: 10),
                        Text("username", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Text("started following you", style: TextStyle(fontSize: 20),)
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/profile.png", height: 30),
                        SizedBox(width: 10),
                        Text("username", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Text("started following you", style: TextStyle(fontSize: 20),)
                  ],
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Align(alignment: Alignment.centerLeft,child: TextButton(onPressed: () {navPressed(4);}, child: Icon(Icons.arrow_back, color: Colors.black))),
                Padding(padding: EdgeInsets.all(10),child: Row(children: [Icon(Icons.settings), TextButton(onPressed: () {}, child: Text("Settings and privacy", style: TextStyle(fontSize: 19, color: Colors.black)))],)),
                Padding(padding: EdgeInsets.all(10),child: Row(children: [Icon(Icons.bar_chart), TextButton(onPressed: () {}, child: Text("Insights", style: TextStyle(fontSize: 19, color: Colors.black)))],)),
                Padding(padding: EdgeInsets.all(10),child: Row(children: [Icon(Icons.image_search), TextButton(onPressed: () {}, child: Text("Your activity", style: TextStyle(fontSize: 19, color: Colors.black)))],)),
                Padding(padding: EdgeInsets.all(10),child: Row(children: [Icon(Icons.archive), TextButton(onPressed: () {}, child: Text("Archive", style: TextStyle(fontSize: 19, color: Colors.black)))],)),
                Padding(padding: EdgeInsets.all(10),child: Row(children: [Icon(Icons.saved_search), TextButton(onPressed: () {}, child: Text("Saved", style: TextStyle(fontSize: 19, color: Colors.black)))],)),
                Padding(padding: EdgeInsets.all(10),child: Row(children: [Icon(Icons.credit_card), TextButton(onPressed: () {}, child: Text("Orders and payment", style: TextStyle(fontSize: 19, color: Colors.black)))],)),
                Padding(padding: EdgeInsets.all(10),child: Row(children: [Icon(Icons.verified_user), TextButton(onPressed: () {}, child: Text("Meta verified", style: TextStyle(fontSize: 19, color: Colors.black)))],)),
                Padding(padding: EdgeInsets.all(10),child: Row(children: [Icon(Icons.favorite), TextButton(onPressed: () {}, child: Text("Favourite", style: TextStyle(fontSize: 19, color: Colors.black)))],)),
                Padding(padding: EdgeInsets.all(10),child: Row(children: [Icon(Icons.account_box), TextButton(onPressed: () {}, child: Text("Discover user", style: TextStyle(fontSize: 19, color: Colors.black)))],)),
                Padding(padding: EdgeInsets.all(10),child: Row(children: [Icon(Icons.logout), TextButton(onPressed: () {navPressed(12);}, child: Text("Log out", style: TextStyle(fontSize: 19, color: Colors.black)))],)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Followers extends StatelessWidget {
  const Followers({super.key});

  void return_list_followers() {
    //var followersList = [TextButton(onPressed: () {navPressed(4);},child: Icon(Icons.arrow_back,color: Colors.black))];
    for (var i = 0; i < 100; i++) {
      //followersList.add(Row(children: [Image.asset("assets/profile.png", height: 30,),Text("username"),],));
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Padding(padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 20,),
              Align(alignment: Alignment.centerLeft, child: TextButton(onPressed: () {navPressed(4);},child: Icon(Icons.arrow_back,color: Colors.black))),
              for (int i =0; i < 100; i=i+1) Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Row(children: [Image.asset("assets/profile.png", height: 35,),SizedBox(width: 20,),Text("username$i", style: TextStyle(fontSize: 20)),],),ElevatedButton(onPressed: () {}, child: Text("Follow", style:TextStyle(fontSize: 20)))],)
            ],),
          ),
        ),
      ),
    );
  }
}


class Following extends StatelessWidget {
  const Following({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Padding(padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 20,),
              Align(alignment: Alignment.centerLeft, child: TextButton(onPressed: () {navPressed(4);},child: Icon(Icons.arrow_back,color: Colors.black))),
              for (int i=0; i < 5; i=i+1) Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Row(children: [Image.asset("assets/profile.png", height: 35,),SizedBox(width: 20,),Text("username$i", style: TextStyle(fontSize: 20)),],),ElevatedButton(onPressed: () {}, child: Text("unfollow", style:TextStyle(fontSize: 20)))],),            ],),
          ),
        ),
      ),
    );
  }
}

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 25,),
              Align(alignment: Alignment.centerLeft,child: TextButton(onPressed: () {
                navPressed(4);
              },child: Icon(Icons.arrow_back, color: Colors.black,)),),
              Align(alignment: Alignment.center,child: Image.asset("assets/profile.png", height: 160,)),
              Icon(Icons.camera),
              Align(alignment: Alignment.centerLeft,child: Text("Name", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),)),
              TextField(decoration: InputDecoration(hintText: "Enter your name"),),
              Align(alignment: Alignment.centerLeft,child: Text("Bio", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),)),
              TextField(decoration: InputDecoration(hintText: "Enter your bio (under 300 char)"),),
              Align(alignment: Alignment.centerLeft,child: Text("Link", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),)),
              TextField(decoration: InputDecoration(hintText: "https://example.com"),),
              Align(alignment: Alignment.centerLeft,child: Text("Pronoun", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),)),
              TextField(decoration: InputDecoration(hintText: "He/him or She/her"),),
              ElevatedButton(onPressed: () {}, child: Text("Save changes"))
            ],
          ),
        ),
      ),
    );
  }
}

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 25,),
              Align(alignment: Alignment.centerLeft ,child: TextButton(onPressed: () {navPressed(4);}, child: Icon(Icons.arrow_back, color: Colors.black,))),
              Row(
                children: [
                  Image.asset("assets/profile.png", height: 40,),
                  SizedBox(width: 10,),
                  Text("username_insta", style: TextStyle(fontSize: 20))
                ],
              ),
              Image.asset("assets/un.png", width: MediaQuery.of(context).size.width*0.9),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite),
                  Icon(Icons.comment),
                  Icon(Icons.send_sharp)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 200,),
              Text("Instagram", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              TextField(decoration: InputDecoration(hintText: "Enter username")),
              SizedBox(height: 20),
              TextField(decoration: InputDecoration(hintText: "Enter password")),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () {navPressed(0);}, child: Text("Login")),
                  TextButton(onPressed: () {navPressed(13);}, child: Text("Sign Up"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 150,),
              Text("Instagram", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              TextField(decoration: InputDecoration(hintText: "Enter username")),
              SizedBox(height: 20),
              TextField(decoration: InputDecoration(hintText: "Enter password")),
              SizedBox(height: 20),
              TextField(decoration: InputDecoration(hintText: "Enter age")),
              SizedBox(height: 20),
              TextField(decoration: InputDecoration(hintText: "Enter gender (M/F)")),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () {navPressed(0);}, child: Text("Sign Up")),
                  TextButton(onPressed: () {navPressed(12);}, child: Text("Login"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
