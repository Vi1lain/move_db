import 'package:flutter/material.dart';
import 'package:move_db/resources/resources.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      cacheExtent: 163,
      // если контейнеры в списке одинакового размера, чтоб равномерно на экране было
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: DecoratedBox(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 40,
                      offset: Offset(0, 2))
                ],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black.withOpacity(0.2))),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: InkWell(borderRadius: BorderRadius.circular(15),onTap: () {

              },
                child: Row(
                  children: [
                    Image(
                        width: 110, height: 163, image: AssetImage(AppImages.mk)),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontWeight: FontWeight.bold),
                              "Mortal Combat"),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey),
                              "7 april 2021"),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              'Боец смешанных единоборств Коул Янг '
                              'не раз соглашался проиграть за деньги. Он не знает '
                              'о своем наследии и почему император Внешнего мира Шан '
                              'Цзун посылает могущественного криомансера Саб-Зиро на '
                              'охоту за Коулом. '),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
