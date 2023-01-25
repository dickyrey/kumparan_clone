// import 'package:ditonton/data/models/tv_episode_model.dart';
// import 'package:ditonton/domain/entities/tv_episode.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kumparan_clone/src/data/models/user_model.dart';
import 'package:kumparan_clone/src/domain/entities/user.dart';

void main() {
  final userModel = UserModel(
    id: 1,
    name: 'Byneet',
    email: 'byneetdev@gmail.com',
    emailVerifiedAt: DateTime.parse('2023-01-23T19:46:34.000000Z'),
    setPassword: '0',
    photo:
        'https://lh3.googleusercontent.com/a/AEdFTp7rSQSGBXSkojDEr3RPtMeLn-bWycFhAjSzRoFVSQ=s48-c-rp-br100',
    type: '0',
    createdAt: DateTime.parse('2023-01-23T19:46:34.000000Z'),
    updatedAt: DateTime.parse('2023-01-23T19:46:34.000000Z'),
  );
  final user = User(
    id: 1,
    name: 'Byneet',
    email: 'byneetdev@gmail.com',
    emailVerifiedAt: DateTime.parse('2023-01-23T19:46:34.000000Z'),
    setPassword: '0',
    photo:
        'https://lh3.googleusercontent.com/a/AEdFTp7rSQSGBXSkojDEr3RPtMeLn-bWycFhAjSzRoFVSQ=s48-c-rp-br100',
    type: '0',
    createdAt: DateTime.parse('2023-01-23T19:46:34.000000Z'),
    updatedAt: DateTime.parse('2023-01-23T19:46:34.000000Z'),
  );
  test('should be a subclass of User Entity', () async {
    final result = userModel.toEntity();
    expect(result, user);
  });
}

// void main() {
//   final tTvEpisodeModel = TvEpisodeModel(
//       airDate: DateTime.parse("2021-02-12"),
//       episodeNumber: 1,
//       id: 2723622,
//       name: "Episode 5.5: Guidepost",
//       overview:
//           "A special episode detailing the events leading up to the current situation with the Grace Field Farm children.",
//       productionCode: "",
//       seasonNumber: 0,
//       stillPath: "/aHqMdHgzOTGLFYCZxXrUyywq67l.jpg",
//       voteAverage: 0.0,
//       voteCount: 0);
//   final tTvEpisode = TvEpisode(
//       airDate: DateTime.parse("2021-02-12"),
//       episodeNumber: 1,
//       id: 2723622,
//       name: "Episode 5.5: Guidepost",
//       overview:
//           "A special episode detailing the events leading up to the current situation with the Grace Field Farm children.",
//       productionCode: "",
//       seasonNumber: 0,
//       stillPath: "/aHqMdHgzOTGLFYCZxXrUyywq67l.jpg",
//       voteAverage: 0.0,
//       voteCount: 0);

//   test('should be a subclass of Tv episode entity', () async {
//     final result = tTvEpisodeModel.toEntity();
//     expect(result, tTvEpisode);
//   });
// }
// // 
