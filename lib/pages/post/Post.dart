import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:convert';
import '../../model/character_contacts.dart';
import '/data/character_api.dart';
class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> with SingleTickerProviderStateMixin {

  List<CharacterContacts> characterList = <CharacterContacts>[];
  bool onError = false;
  void getCharactersfromApi() async {
    CharacterApi.getCharacters1().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        characterList = list.map((model) => CharacterContacts.fromJson(model)).toList();
      });
    });

  }

  late bool _isLoading;
  @override
  void initState() {

    super.initState();
    _isLoading = true;
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isLoading = false;
      });
    });
    getCharactersfromApi();
  }

  @override
  Widget build(BuildContext context) {

      return Container(

        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Scaffold(
          backgroundColor: Colors.white,



          body: _isLoading ? const Center(child: CircularProgressIndicator(color: Color(0xff9B51E0),),) :
          characterList.isEmpty ? Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("icons/Group.svg"),
                const SizedBox(height: 36,),
                const Text(
                  'Не удалось загрузить информацию',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'fonts/Raleway',
                    color: Colors.black,
                  ),
                ) ,
                const SizedBox(height: 36,),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: const Color(0xFF9B51E0),
                    minimumSize: const Size(230, 38),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () {
                  },
                  child:const Text(
                    "Войти",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'CeraPro',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          )
              : NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
              // innerBoxIsScrolled ?
              SliverAppBar(
                backgroundColor: Colors.white,
                // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                floating: true,
                // excludeHeaderSemantics: true,
                snap: true,
                forceElevated: innerBoxIsScrolled,
                pinned: true,
                title: const Text('Пользователи',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600)),
                centerTitle: true,
              )
            ],
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView.builder(
                itemCount: characterList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            SvgPicture.asset("icons/userNewIcon.svg"),
                            const SizedBox(width: 24.0,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    characterList[index].name,
                                    style: const TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'fonts/Raleway',
                                        color: Colors.black,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    characterList[index].email,
                                    style: const TextStyle(
                                      fontSize: 13.0,
                                      fontFamily: 'fonts/Raleway',
                                      color: Colors.grey,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                  const Text(
                                    'Surf',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      fontFamily: 'fonts/Raleway',
                                      color: Colors.black,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      index + 1 == characterList.length ? const SizedBox(height: 8,) : const Offstage()
                    ],
                  );

                },
              ),
            ),
          ),
          // bottomNavigationBar: _createBottomNavigationBar(),

        ),

      );
    }

  }

