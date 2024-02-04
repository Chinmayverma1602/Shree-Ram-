import 'package:flutter/material.dart';

class MusicModel {
  final String musicName;
  final String author;
  final String cover;
  final String path;
  final String image;

  MusicModel(
      {required this.cover,
      required this.image,
      required this.author,
      required this.musicName,
      required this.path});
}

List<MusicModel> musics = [
  MusicModel(
    cover: "",
    author: "Avinash",
    musicName: "JAI SHREE RAM",
    path: 'mp1.mp3', image: '',
  ),
  MusicModel(
      cover: "",
      author: "Ankit Yadav",
      musicName: "RAM SIYA RAM",
      path: 'mp2.mp3', image: ''),
  MusicModel(
      cover: "",
      author: "DJ Aman ",
      musicName: "JAI SHREE RAM (HIGHBEATS)",
      path: 'mp3.mp3', image: ''),
  MusicModel(
      cover: "", musicName: "MANGAL BHAVAN", author: "Jubin ", path: 'mp4.mp3', image: ''),
];
