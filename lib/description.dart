import 'package:flutter/material.dart';
import 'package:shopping/post.dart';

class Description extends StatelessWidget {
  Post post;
  Description({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "توضیحات محصول",
          style: TextStyle(
            color: Colors.black45,
            fontFamily: 'Vazir',
          ),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black45,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.shopping_basket,
              color: Colors.black45,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(children: [
          ListView(
            // children: [
            //   Column(
            children: [
              Center(
                  child: Text(
                post.title,
                textDirection: TextDirection.rtl,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )),
              Image.network(
                post.imgUrl,
                height: 300,
                width: 300,
              ),
              Text(
                post.content,
                textDirection: TextDirection.rtl,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Text(post.cost),
                    const Text("تومان"),
                  ],
                ),
              ),
              const SizedBox(
                height: 65,
              )
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  // width: MediaQuery.of(context).size.width,
                  width: 150,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "افزودن به سبد خرید",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)))),
            ),
          )
        ]),
      ),
    );
  }
}
