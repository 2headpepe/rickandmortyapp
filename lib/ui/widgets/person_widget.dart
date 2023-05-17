import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../data/models/person.dart';

class PersonCard extends StatelessWidget {
  final Results e;
  const PersonCard({Key? key, required this.e}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: MediaQuery.of(context).size.height / 7,
        color: Color.fromRGBO(200, 200, 220, 1),
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: e.image,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Text(e.name),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Text(e.status),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text("Species:",
                                style: TextStyle(
                                    fontSize: 11,
                                    // fontWeight: FontWeight.w100,
                                    color: Colors.black)),
                            Text(
                              e.species,
                              // style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text("Gender:",
                                style: TextStyle(
                                    fontSize: 11,
                                    // fontWeight: FontWeight.w100,
                                    color: Colors.black)),
                            Text(e.gender),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
