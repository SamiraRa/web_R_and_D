import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

part 'unsplash_image_model.g.dart';

List<UnsplashImgData> unsplashImgDataFromJson(String str) =>
    List<UnsplashImgData>.from(json.decode(str).map((x) => UnsplashImgData.fromJson(x)));

String unsplashImgDataToJson(List<UnsplashImgData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@HiveType(typeId: 0)
class UnsplashImgData {
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? slug;
  @HiveField(2)
  AlternativeSlugs? alternativeSlugs;
  @HiveField(3)
  String? createdAt;
  @HiveField(4)
  String? updatedAt;
  @HiveField(5)
  String? promotedAt;
  @HiveField(6)
  int width;
  @HiveField(7)
  int height;
  @HiveField(8)
  String? color;
  @HiveField(9)
  String? blurHash;
  @HiveField(10)
  String? description;
  @HiveField(11)
  String? altDescription;
  @HiveField(12)
  Urls? urls;
  @HiveField(13)
  UnsplashImgDatumLinks? links;
  @HiveField(14)
  int likes;
  @HiveField(15)
  bool likedByUser;
  @HiveField(16)
  String? assetType;
  @HiveField(17)
  User? user;

  UnsplashImgData({
    this.id,
    this.slug,
    this.alternativeSlugs,
    this.createdAt,
    this.updatedAt,
    this.promotedAt,
    this.width = 0,
    this.height = 0,
    this.color,
    this.blurHash,
    this.description,
    this.altDescription,
    this.urls,
    this.links,
    this.likes = 0,
    this.likedByUser = false,
    this.assetType,
    this.user,
  });

  factory UnsplashImgData.fromJson(Map<String, dynamic> json) => UnsplashImgData(
        id: json["id"],
        slug: json["slug"],
        alternativeSlugs:
            json["alternative_slugs"] != null ? AlternativeSlugs.fromJson(json["alternative_slugs"]) : null,
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        promotedAt: json["promoted_at"],
        width: json["width"] ?? 0,
        height: json["height"] ?? 0,
        color: json["color"],
        blurHash: json["blur_hash"],
        description: json["description"],
        altDescription: json["alt_description"],
        urls: json["urls"] != null ? Urls.fromJson(json["urls"]) : null,
        links: json["links"] != null ? UnsplashImgDatumLinks.fromJson(json["links"]) : null,
        likes: json["likes"] ?? 0,
        likedByUser: json["liked_by_user"] ?? false,
        assetType: json["asset_type"],
        user: json["user"] != null ? User.fromJson(json["user"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "slug": slug,
        "alternative_slugs": alternativeSlugs?.toJson(),
        "created_at": createdAt,
        "updated_at": updatedAt,
        "promoted_at": promotedAt,
        "width": width,
        "height": height,
        "color": color,
        "blur_hash": blurHash,
        "description": description,
        "alt_description": altDescription,
        "urls": urls?.toJson(),
        "links": links?.toJson(),
        "likes": likes,
        "liked_by_user": likedByUser,
        "asset_type": assetType,
        "user": user?.toJson(),
      };
}

@HiveType(typeId: 1)
class AlternativeSlugs {
  @HiveField(0)
  String? en;
  @HiveField(1)
  String? es;
  @HiveField(2)
  String? ja;
  @HiveField(3)
  String? fr;
  @HiveField(4)
  String? it;
  @HiveField(5)
  String? ko;
  @HiveField(6)
  String? de;
  @HiveField(7)
  String? pt;
  @HiveField(8)
  String? id;

  AlternativeSlugs({
    this.en,
    this.es,
    this.ja,
    this.fr,
    this.it,
    this.ko,
    this.de,
    this.pt,
    this.id,
  });

  factory AlternativeSlugs.fromJson(Map<String, dynamic> json) => AlternativeSlugs(
        en: json["en"],
        es: json["es"],
        ja: json["ja"],
        fr: json["fr"],
        it: json["it"],
        ko: json["ko"],
        de: json["de"],
        pt: json["pt"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
        "es": es,
        "ja": ja,
        "fr": fr,
        "it": it,
        "ko": ko,
        "de": de,
        "pt": pt,
        "id": id,
      };
}

@HiveType(typeId: 2)
class UnsplashImgDatumLinks {
  @HiveField(0)
  String? self;
  @HiveField(1)
  String? html;
  @HiveField(2)
  String? download;
  @HiveField(3)
  String? downloadLocation;

  UnsplashImgDatumLinks({
    this.self,
    this.html,
    this.download,
    this.downloadLocation,
  });

  factory UnsplashImgDatumLinks.fromJson(Map<String, dynamic> json) => UnsplashImgDatumLinks(
        self: json["self"],
        html: json["html"],
        download: json["download"],
        downloadLocation: json["download_location"],
      );

  Map<String, dynamic> toJson() => {
        "self": self,
        "html": html,
        "download": download,
        "download_location": downloadLocation,
      };
}

@HiveType(typeId: 3)
class Urls {
  @HiveField(0)
  String? raw;
  @HiveField(1)
  String? full;
  @HiveField(2)
  String? regular;
  @HiveField(3)
  String? small;
  @HiveField(4)
  String? thumb;
  @HiveField(5)
  String? smallS3;

  Urls({
    this.raw,
    this.full,
    this.regular,
    this.small,
    this.thumb,
    this.smallS3,
  });

  factory Urls.fromJson(Map<String, dynamic> json) => Urls(
        raw: json["raw"],
        full: json["full"],
        regular: json["regular"],
        small: json["small"],
        thumb: json["thumb"],
        smallS3: json["small_s3"],
      );

  Map<String, dynamic> toJson() => {
        "raw": raw,
        "full": full,
        "regular": regular,
        "small": small,
        "thumb": thumb,
        "small_s3": smallS3,
      };
}

@HiveType(typeId: 4)
class User {
  @HiveField(0)
  String? id;
  @HiveField(1)
  DateTime? updatedAt;
  @HiveField(2)
  String? username;
  @HiveField(3)
  String? name;
  @HiveField(4)
  String? firstName;
  @HiveField(5)
  String? lastName;
  @HiveField(6)
  String? twitterUsername;
  @HiveField(7)
  String? portfolioUrl;
  @HiveField(8)
  String? bio;
  @HiveField(9)
  String? location;
  @HiveField(10)
  UserLinks? links;
  @HiveField(11)
  ProfileImage? profileImage;
  @HiveField(12)
  String? instagramUsername;
  @HiveField(13)
  int totalCollections;
  @HiveField(14)
  int totalLikes;
  @HiveField(15)
  int totalPhotos;
  @HiveField(16)
  int totalPromotedPhotos;
  @HiveField(17)
  int totalIllustrations;
  @HiveField(18)
  int totalPromotedIllustrations;
  @HiveField(19)
  bool acceptedTos;
  @HiveField(20)
  bool forHire;
  @HiveField(21)
  Social? social;

  User({
    this.id,
    this.updatedAt,
    this.username,
    this.name,
    this.firstName,
    this.lastName,
    this.twitterUsername,
    this.portfolioUrl,
    this.bio,
    this.location,
    this.links,
    this.profileImage,
    this.instagramUsername,
    this.totalCollections = 0,
    this.totalLikes = 0,
    this.totalPhotos = 0,
    this.totalPromotedPhotos = 0,
    this.totalIllustrations = 0,
    this.totalPromotedIllustrations = 0,
    this.acceptedTos = false,
    this.forHire = false,
    this.social,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        updatedAt: json["updated_at"] != null ? DateTime.tryParse(json["updated_at"]) : null,
        username: json["username"],
        name: json["name"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        twitterUsername: json["twitter_username"],
        portfolioUrl: json["portfolio_url"],
        bio: json["bio"],
        location: json["location"],
        links: json["links"] != null ? UserLinks.fromJson(json["links"]) : null,
        profileImage: json["profile_image"] != null ? ProfileImage.fromJson(json["profile_image"]) : null,
        instagramUsername: json["instagram_username"],
        totalCollections: json["total_collections"] ?? 0,
        totalLikes: json["total_likes"] ?? 0,
        totalPhotos: json["total_photos"] ?? 0,
        totalPromotedPhotos: json["total_promoted_photos"] ?? 0,
        totalIllustrations: json["total_illustrations"] ?? 0,
        totalPromotedIllustrations: json["total_promoted_illustrations"] ?? 0,
        acceptedTos: json["accepted_tos"] ?? false,
        forHire: json["for_hire"] ?? false,
        social: json["social"] != null ? Social.fromJson(json["social"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "updated_at": updatedAt?.toIso8601String(),
        "username": username,
        "name": name,
        "first_name": firstName,
        "last_name": lastName,
        "twitter_username": twitterUsername,
        "portfolio_url": portfolioUrl,
        "bio": bio,
        "location": location,
        "links": links?.toJson(),
        "profile_image": profileImage?.toJson(),
        "instagram_username": instagramUsername,
        "total_collections": totalCollections,
        "total_likes": totalLikes,
        "total_photos": totalPhotos,
        "total_promoted_photos": totalPromotedPhotos,
        "total_illustrations": totalIllustrations,
        "total_promoted_illustrations": totalPromotedIllustrations,
        "accepted_tos": acceptedTos,
        "for_hire": forHire,
        "social": social?.toJson(),
      };
}

@HiveType(typeId: 5)
class UserLinks {
  @HiveField(0)
  String? self;
  @HiveField(1)
  String? html;
  @HiveField(2)
  String? photos;
  @HiveField(3)
  String? likes;
  @HiveField(4)
  String? portfolio;

  UserLinks({
    this.self,
    this.html,
    this.photos,
    this.likes,
    this.portfolio,
  });

  factory UserLinks.fromJson(Map<String, dynamic> json) => UserLinks(
        self: json["self"],
        html: json["html"],
        photos: json["photos"],
        likes: json["likes"],
        portfolio: json["portfolio"],
      );

  Map<String, dynamic> toJson() => {
        "self": self,
        "html": html,
        "photos": photos,
        "likes": likes,
        "portfolio": portfolio,
      };
}

@HiveType(typeId: 6)
class ProfileImage {
  @HiveField(0)
  String? small;
  @HiveField(1)
  String? medium;
  @HiveField(2)
  String? large;

  ProfileImage({
    this.small,
    this.medium,
    this.large,
  });

  factory ProfileImage.fromJson(Map<String, dynamic> json) => ProfileImage(
        small: json["small"],
        medium: json["medium"],
        large: json["large"],
      );

  Map<String, dynamic> toJson() => {
        "small": small,
        "medium": medium,
        "large": large,
      };
}

@HiveType(typeId: 7)
class Social {
  @HiveField(0)
  String? instagramUsername;
  @HiveField(1)
  String? portfolioUrl;
  @HiveField(2)
  String? twitterUsername;
  @HiveField(3)
  String? paypalEmail;

  Social({
    this.instagramUsername,
    this.portfolioUrl,
    this.twitterUsername,
    this.paypalEmail,
  });

  factory Social.fromJson(Map<String, dynamic> json) => Social(
        instagramUsername: json["instagram_username"],
        portfolioUrl: json["portfolio_url"],
        twitterUsername: json["twitter_username"],
        paypalEmail: json["paypal_email"],
      );

  Map<String, dynamic> toJson() => {
        "instagram_username": instagramUsername,
        "portfolio_url": portfolioUrl,
        "twitter_username": twitterUsername,
        "paypal_email": paypalEmail,
      };
}

// import 'dart:convert';

// List<UnsplashImgData> unsplashImgDataFromJson(String str) =>
//     List<UnsplashImgData>.from(json.decode(str).map((x) => UnsplashImgData.fromJson(x)));

// String unsplashImgDataToJson(List<UnsplashImgData> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class UnsplashImgData {
//   String id;
//   String slug;
//   AlternativeSlugs alternativeSlugs;
//   String createdAt;
//   String updatedAt;
//   String promotedAt;
//   int width;
//   int height;
//   String color;
//   String blurHash;
//   String description;
//   String altDescription;
//   // List<dynamic> breadcrumbs;
//   Urls urls;
//   UnsplashImgDatumLinks links;
//   int likes;
//   bool likedByUser;
//   // List<dynamic> currentUserCollections;
//   // dynamic sponsorship;
//   // TopicSubmissions topicSubmissions;
//   String assetType;
//   User user;

//   UnsplashImgData({
//     required this.id,
//     required this.slug,
//     required this.alternativeSlugs,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.promotedAt,
//     required this.width,
//     required this.height,
//     required this.color,
//     required this.blurHash,
//     required this.description,
//     required this.altDescription,
//     // required this.breadcrumbs,
//     required this.urls,
//     required this.links,
//     required this.likes,
//     required this.likedByUser,
//     // required this.currentUserCollections,
//     // required this.sponsorship,
//     // required this.topicSubmissions,
//     required this.assetType,
//     required this.user,
//   });

//   factory UnsplashImgData.fromJson(Map<String, dynamic> json) => UnsplashImgData(
//         id: json["id"] ?? "",
//         slug: json["slug"] ?? "",
//         alternativeSlugs: AlternativeSlugs.fromJson(json["alternative_slugs"]),
//         createdAt: json["created_at"] ?? "",
//         updatedAt: json["updated_at"] ?? "",
//         promotedAt: json["promoted_at"] ?? "",
//         width: json["width"] ?? 0,
//         height: json["height"] ?? 0,
//         color: json["color"] ?? "",
//         blurHash: json["blur_hash"] ?? "",
//         description: json["description"] ?? "",
//         altDescription: json["alt_description"] ?? "",
//         // breadcrumbs: List<dynamic>.from(json["breadcrumbs"].map((x) => x) ?? []),
//         urls: Urls.fromJson(json["urls"] ?? {}),
//         links: UnsplashImgDatumLinks.fromJson(json["links"] ?? {}),
//         likes: json["likes"] ?? 0,
//         likedByUser: json["liked_by_user"] ?? false,
//         // currentUserCollections: List<dynamic>.from(json["current_user_collections"].map((x) => x)),
//         // sponsorship: json["sponsorship"],
//         // topicSubmissions: TopicSubmissions.fromJson(json["topic_submissions"]),
//         assetType: json["asset_type"],
//         user: User.fromJson(json["user"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "slug": slug,
//         "alternative_slugs": alternativeSlugs.toJson(),
//         "created_at": createdAt,
//         "updated_at": updatedAt,
//         "promoted_at": promotedAt,
//         "width": width,
//         "height": height,
//         "color": color,
//         "blur_hash": blurHash,
//         "description": description,
//         "alt_description": altDescription,
//         // "breadcrumbs": List<dynamic>.from(breadcrumbs.map((x) => x)),
//         "urls": urls.toJson(),
//         "links": links.toJson(),
//         "likes": likes,
//         "liked_by_user": likedByUser,
//         // "current_user_collections": List<dynamic>.from(currentUserCollections.map((x) => x)),
//         // "sponsorship": sponsorship,
//         // "topic_submissions": topicSubmissions.toJson(),
//         "asset_type": assetType,
//         "user": user.toJson(),
//       };
// }

// class AlternativeSlugs {
//   String en;
//   String es;
//   String ja;
//   String fr;
//   String it;
//   String ko;
//   String de;
//   String pt;
//   String id;

//   AlternativeSlugs({
//     required this.en,
//     required this.es,
//     required this.ja,
//     required this.fr,
//     required this.it,
//     required this.ko,
//     required this.de,
//     required this.pt,
//     required this.id,
//   });

//   factory AlternativeSlugs.fromJson(Map<String, dynamic> json) => AlternativeSlugs(
//         en: json["en"] ?? "",
//         es: json["es"] ?? "",
//         ja: json["ja"] ?? "",
//         fr: json["fr"] ?? "",
//         it: json["it"] ?? "",
//         ko: json["ko"] ?? "",
//         de: json["de"] ?? "",
//         pt: json["pt"] ?? "",
//         id: json["id"] ?? "",
//       );

//   Map<String, dynamic> toJson() => {
//         "en": en,
//         "es": es,
//         "ja": ja,
//         "fr": fr,
//         "it": it,
//         "ko": ko,
//         "de": de,
//         "pt": pt,
//         "id": id,
//       };
// }

// class UnsplashImgDatumLinks {
//   String self;
//   String html;
//   String download;
//   String downloadLocation;

//   UnsplashImgDatumLinks({
//     required this.self,
//     required this.html,
//     required this.download,
//     required this.downloadLocation,
//   });

//   factory UnsplashImgDatumLinks.fromJson(Map<String, dynamic> json) => UnsplashImgDatumLinks(
//         self: json["self"] ?? "",
//         html: json["html"] ?? "",
//         download: json["download"] ?? "",
//         downloadLocation: json["download_location"] ?? "",
//       );

//   Map<String, dynamic> toJson() => {
//         "self": self,
//         "html": html,
//         "download": download,
//         "download_location": downloadLocation,
//       };
// }

// class TopicSubmissions {
//   Nature nature;
//   Wallpapers wallpapers;

//   TopicSubmissions({
//     required this.nature,
//     required this.wallpapers,
//   });

//   factory TopicSubmissions.fromJson(Map<String, dynamic> json) => TopicSubmissions(
//         nature: Nature.fromJson(json["nature"]),
//         wallpapers: Wallpapers.fromJson(json["wallpapers"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "nature": nature.toJson(),
//         "wallpapers": wallpapers.toJson(),
//       };
// }

// class Nature {
//   String status;

//   Nature({
//     required this.status,
//   });

//   factory Nature.fromJson(Map<String, dynamic> json) => Nature(
//         status: json["status"],
//       );

//   Map<String, dynamic> toJson() => {
//         "status": status,
//       };
// }

// class Wallpapers {
//   String status;
//   DateTime approvedOn;

//   Wallpapers({
//     required this.status,
//     required this.approvedOn,
//   });

//   factory Wallpapers.fromJson(Map<String, dynamic> json) => Wallpapers(
//         status: json["status"],
//         approvedOn: DateTime.parse(json["approved_on"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "status": status,
//         "approved_on": approvedOn.toIso8601String(),
//       };
// }

// class Urls {
//   String raw;
//   String full;
//   String regular;
//   String small;
//   String thumb;
//   String smallS3;

//   Urls({
//     required this.raw,
//     required this.full,
//     required this.regular,
//     required this.small,
//     required this.thumb,
//     required this.smallS3,
//   });

//   factory Urls.fromJson(Map<String, dynamic> json) => Urls(
//         raw: json["raw"] ?? "",
//         full: json["full"] ?? "",
//         regular: json["regular"] ?? "",
//         small: json["small"] ?? "",
//         thumb: json["thumb"] ?? "",
//         smallS3: json["small_s3"] ?? "",
//       );

//   Map<String, dynamic> toJson() => {
//         "raw": raw,
//         "full": full,
//         "regular": regular,
//         "small": small,
//         "thumb": thumb,
//         "small_s3": smallS3,
//       };
// }

// class User {
//   String id;
//   DateTime updatedAt;
//   String username;
//   String name;
//   String firstName;
//   String lastName;
//   String twitterUsername;
//   String portfolioUrl;
//   String bio;
//   String location;
//   UserLinks links;
//   ProfileImage profileImage;
//   String instagramUsername;
//   int totalCollections;
//   int totalLikes;
//   int totalPhotos;
//   int totalPromotedPhotos;
//   int totalIllustrations;
//   int totalPromotedIllustrations;
//   bool acceptedTos;
//   bool forHire;
//   Social social;

//   User({
//     required this.id,
//     required this.updatedAt,
//     required this.username,
//     required this.name,
//     required this.firstName,
//     required this.lastName,
//     required this.twitterUsername,
//     required this.portfolioUrl,
//     required this.bio,
//     required this.location,
//     required this.links,
//     required this.profileImage,
//     required this.instagramUsername,
//     required this.totalCollections,
//     required this.totalLikes,
//     required this.totalPhotos,
//     required this.totalPromotedPhotos,
//     required this.totalIllustrations,
//     required this.totalPromotedIllustrations,
//     required this.acceptedTos,
//     required this.forHire,
//     required this.social,
//   });

//   factory User.fromJson(Map<String, dynamic> json) => User(
//         id: json["id"],
//         updatedAt: DateTime.parse(json["updated_at"]),
//         username: json["username"],
//         name: json["name"],
//         firstName: json["first_name"],
//         lastName: json["last_name"],
//         twitterUsername: json["twitter_username"],
//         portfolioUrl: json["portfolio_url"],
//         bio: json["bio"],
//         location: json["location"],
//         links: UserLinks.fromJson(json["links"]),
//         profileImage: ProfileImage.fromJson(json["profile_image"]),
//         instagramUsername: json["instagram_username"],
//         totalCollections: json["total_collections"],
//         totalLikes: json["total_likes"],
//         totalPhotos: json["total_photos"],
//         totalPromotedPhotos: json["total_promoted_photos"],
//         totalIllustrations: json["total_illustrations"],
//         totalPromotedIllustrations: json["total_promoted_illustrations"],
//         acceptedTos: json["accepted_tos"],
//         forHire: json["for_hire"],
//         social: Social.fromJson(json["social"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "updated_at": updatedAt.toIso8601String(),
//         "username": username,
//         "name": name,
//         "first_name": firstName,
//         "last_name": lastName,
//         "twitter_username": twitterUsername,
//         "portfolio_url": portfolioUrl,
//         "bio": bio,
//         "location": location,
//         "links": links.toJson(),
//         "profile_image": profileImage.toJson(),
//         "instagram_username": instagramUsername,
//         "total_collections": totalCollections,
//         "total_likes": totalLikes,
//         "total_photos": totalPhotos,
//         "total_promoted_photos": totalPromotedPhotos,
//         "total_illustrations": totalIllustrations,
//         "total_promoted_illustrations": totalPromotedIllustrations,
//         "accepted_tos": acceptedTos,
//         "for_hire": forHire,
//         "social": social.toJson(),
//       };
// }

// class UserLinks {
//   String self;
//   String html;
//   String photos;
//   String likes;
//   String portfolio;

//   UserLinks({
//     required this.self,
//     required this.html,
//     required this.photos,
//     required this.likes,
//     required this.portfolio,
//   });

//   factory UserLinks.fromJson(Map<String, dynamic> json) => UserLinks(
//         self: json["self"],
//         html: json["html"],
//         photos: json["photos"],
//         likes: json["likes"],
//         portfolio: json["portfolio"],
//       );

//   Map<String, dynamic> toJson() => {
//         "self": self,
//         "html": html,
//         "photos": photos,
//         "likes": likes,
//         "portfolio": portfolio,
//       };
// }

// class ProfileImage {
//   String small;
//   String medium;
//   String large;

//   ProfileImage({
//     required this.small,
//     required this.medium,
//     required this.large,
//   });

//   factory ProfileImage.fromJson(Map<String, dynamic> json) => ProfileImage(
//         small: json["small"] ?? "",
//         medium: json["medium"] ?? "",
//         large: json["large"] ?? "",
//       );

//   Map<String, dynamic> toJson() => {
//         "small": small,
//         "medium": medium,
//         "large": large,
//       };
// }

// class Social {
//   String instagramUsername;
//   String portfolioUrl;
//   String twitterUsername;
//   String paypalEmail;

//   Social({
//     required this.instagramUsername,
//     required this.portfolioUrl,
//     required this.twitterUsername,
//     required this.paypalEmail,
//   });

//   factory Social.fromJson(Map<String, String> json) => Social(
//         instagramUsername: json["instagram_username"] ?? "",
//         portfolioUrl: json["portfolio_url"] ?? "",
//         twitterUsername: json["twitter_username"] ?? "",
//         paypalEmail: json["paypal_email"] ?? "",
//       );

//   Map<String, dynamic> toJson() => {
//         "instagram_username": instagramUsername,
//         "portfolio_url": portfolioUrl,
//         "twitter_username": twitterUsername,
//         "paypal_email": paypalEmail,
//       };
// }
