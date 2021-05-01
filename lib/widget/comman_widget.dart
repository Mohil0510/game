import 'package:flutter/material.dart';
import 'package:game/model/poster.dart';

class CommanWidget {
  static Widget category({
    String name,
  }) {
    return Tab(
      child: Align(
        alignment: Alignment.center,
        child: Text(
          '$name',
          style: TextStyle(
            // color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  static categoryList({
    Poster categoryListData,
  }) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('${categoryListData.image}'),
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
        color: Colors.grey,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 8,
            left: 8,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 5,
                ),
                child: Text(
                  '${categoryListData.name}',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 0.8,
                    wordSpacing: 1.5,
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xffFFD700),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text(
                        '${categoryListData.rateing}',
                        style: TextStyle(
                          color: Color(0xffFFD700),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
