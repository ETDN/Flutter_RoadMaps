// class Route {
//   List<String> favories;
//   String name;
//   String distance;
//   String duration;
//   String uid;
//   String id;

// Route ({
//   this.id, this.uid, this.favories,
//   this.name, this.distance, this.duration
// });

//   factory Route.fromJson(Map<String, dynamic> map, {String id}) => Route(
//       id: id,
//       name: map["name"],
//       distance: map["distance"],
//       duration: map["duration"],
//       uid: map["uid"],
//       favories: map["favories"] == null
//           ? []
//           : map["favories"].map<String>((i) => i as String).toList());

//   Map<String, dynamic> toMap() {
//     return {
//       "name": name,
//       "duration": duration,
//       "distance": distance,
//       "favories": favories,
//       "uid": uid
//     };
//   }
// }
