import 'package:flutter/material.dart';
import 'package:move_db/resources/resources.dart';

class Movie {
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movie(
      {required this.imageName,
      required this.title,
      required this.time,
      required this.description});
}

class MovieListWidget extends StatefulWidget {
  MovieListWidget({super.key});

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final List<Movie> _movies = [
    Movie(
        imageName: AppImages.mk,
        title: "Mortal Combat",
        time: "7 april 2021",
        description: 'Боец смешанных единоборств Коул Янг '
            'не раз соглашался проиграть за деньги. Он не знает '
            'о своем наследии и почему император Внешнего мира Шан '
            'Цзун посылает могущественного криомансера Саб-Зиро на '
            'охоту за Коулом. '),
    Movie(
        imageName: AppImages.mk,
        title: "Future1",
        time: "7 april 2021",
        description: 'Боец смешанных единоборств Коул Янг '
            'не раз соглашался проиграть за деньги. Он не знает '
            'о своем наследии и почему император Внешнего мира Шан '
            'Цзун посылает могущественного криомансера Саб-Зиро на '
            'охоту за Коулом. '),
    Movie(
        imageName: AppImages.mk,
        title: "Future2",
        time: "7 april 2021",
        description: 'Боец смешанных единоборств Коул Янг '
            'не раз соглашался проиграть за деньги. Он не знает '
            'о своем наследии и почему император Внешнего мира Шан '
            'Цзун посылает могущественного криомансера Саб-Зиро на '
            'охоту за Коулом. '),
    Movie(
        imageName: AppImages.mk,
        title: "Lord of the Rings",
        time: "7 april 2021",
        description: 'Боец смешанных единоборств Коул Янг '
            'не раз соглашался проиграть за деньги. Он не знает '
            'о своем наследии и почему император Внешнего мира Шан '
            'Цзун посылает могущественного криомансера Саб-Зиро на '
            'охоту за Коулом. '),
    Movie(
        imageName: AppImages.mk,
        title: "Big bangs",
        time: "7 april 2021",
        description: 'Боец смешанных единоборств Коул Янг '
            'не раз соглашался проиграть за деньги. Он не знает '
            'о своем наследии и почему император Внешнего мира Шан '
            'Цзун посылает могущественного криомансера Саб-Зиро на '
            'охоту за Коулом. ')
  ];
   var _filteredMoviews = <Movie>[];
  final _searchController = TextEditingController();

  _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredMoviews = _movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else{
      _filteredMoviews = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    _filteredMoviews = _movies;
    _searchController.addListener(_searchMovies);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top: 70),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemExtent: 163,
          // если контейнеры в списке одинакового размера, чтоб равномерно на экране было
          itemCount: _filteredMoviews.length,
          itemBuilder: (context, index) {
            final Movie movie = _filteredMoviews[index];
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
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: () {},
                    child: Row(
                      children: [
                        Image(
                            width: 110,
                            height: 163,
                            image: AssetImage(movie.imageName)),
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
                                movie.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.grey),
                                  movie.time),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  movie.description),
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
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
                labelText: "Поиск",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white.withAlpha(210)),
          ),
        ),
      ],
    );
  }
}
