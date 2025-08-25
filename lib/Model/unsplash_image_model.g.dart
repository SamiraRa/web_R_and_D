// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsplash_image_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UnsplashImgDataAdapter extends TypeAdapter<UnsplashImgData> {
  @override
  final int typeId = 0;

  @override
  UnsplashImgData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UnsplashImgData(
      id: fields[0] as String?,
      slug: fields[1] as String?,
      alternativeSlugs: fields[2] as AlternativeSlugs?,
      createdAt: fields[3] as String?,
      updatedAt: fields[4] as String?,
      promotedAt: fields[5] as String?,
      width: fields[6] as int,
      height: fields[7] as int,
      color: fields[8] as String?,
      blurHash: fields[9] as String?,
      description: fields[10] as String?,
      altDescription: fields[11] as String?,
      urls: fields[12] as Urls?,
      links: fields[13] as UnsplashImgDatumLinks?,
      likes: fields[14] as int,
      likedByUser: fields[15] as bool,
      assetType: fields[16] as String?,
      user: fields[17] as User?,
    );
  }

  @override
  void write(BinaryWriter writer, UnsplashImgData obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.slug)
      ..writeByte(2)
      ..write(obj.alternativeSlugs)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt)
      ..writeByte(5)
      ..write(obj.promotedAt)
      ..writeByte(6)
      ..write(obj.width)
      ..writeByte(7)
      ..write(obj.height)
      ..writeByte(8)
      ..write(obj.color)
      ..writeByte(9)
      ..write(obj.blurHash)
      ..writeByte(10)
      ..write(obj.description)
      ..writeByte(11)
      ..write(obj.altDescription)
      ..writeByte(12)
      ..write(obj.urls)
      ..writeByte(13)
      ..write(obj.links)
      ..writeByte(14)
      ..write(obj.likes)
      ..writeByte(15)
      ..write(obj.likedByUser)
      ..writeByte(16)
      ..write(obj.assetType)
      ..writeByte(17)
      ..write(obj.user);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnsplashImgDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AlternativeSlugsAdapter extends TypeAdapter<AlternativeSlugs> {
  @override
  final int typeId = 1;

  @override
  AlternativeSlugs read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AlternativeSlugs(
      en: fields[0] as String?,
      es: fields[1] as String?,
      ja: fields[2] as String?,
      fr: fields[3] as String?,
      it: fields[4] as String?,
      ko: fields[5] as String?,
      de: fields[6] as String?,
      pt: fields[7] as String?,
      id: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AlternativeSlugs obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.en)
      ..writeByte(1)
      ..write(obj.es)
      ..writeByte(2)
      ..write(obj.ja)
      ..writeByte(3)
      ..write(obj.fr)
      ..writeByte(4)
      ..write(obj.it)
      ..writeByte(5)
      ..write(obj.ko)
      ..writeByte(6)
      ..write(obj.de)
      ..writeByte(7)
      ..write(obj.pt)
      ..writeByte(8)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlternativeSlugsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UnsplashImgDatumLinksAdapter extends TypeAdapter<UnsplashImgDatumLinks> {
  @override
  final int typeId = 2;

  @override
  UnsplashImgDatumLinks read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UnsplashImgDatumLinks(
      self: fields[0] as String?,
      html: fields[1] as String?,
      download: fields[2] as String?,
      downloadLocation: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UnsplashImgDatumLinks obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.self)
      ..writeByte(1)
      ..write(obj.html)
      ..writeByte(2)
      ..write(obj.download)
      ..writeByte(3)
      ..write(obj.downloadLocation);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnsplashImgDatumLinksAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UrlsAdapter extends TypeAdapter<Urls> {
  @override
  final int typeId = 3;

  @override
  Urls read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Urls(
      raw: fields[0] as String?,
      full: fields[1] as String?,
      regular: fields[2] as String?,
      small: fields[3] as String?,
      thumb: fields[4] as String?,
      smallS3: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Urls obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.raw)
      ..writeByte(1)
      ..write(obj.full)
      ..writeByte(2)
      ..write(obj.regular)
      ..writeByte(3)
      ..write(obj.small)
      ..writeByte(4)
      ..write(obj.thumb)
      ..writeByte(5)
      ..write(obj.smallS3);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UrlsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 4;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      id: fields[0] as String?,
      updatedAt: fields[1] as DateTime?,
      username: fields[2] as String?,
      name: fields[3] as String?,
      firstName: fields[4] as String?,
      lastName: fields[5] as String?,
      twitterUsername: fields[6] as String?,
      portfolioUrl: fields[7] as String?,
      bio: fields[8] as String?,
      location: fields[9] as String?,
      links: fields[10] as UserLinks?,
      profileImage: fields[11] as ProfileImage?,
      instagramUsername: fields[12] as String?,
      totalCollections: fields[13] as int,
      totalLikes: fields[14] as int,
      totalPhotos: fields[15] as int,
      totalPromotedPhotos: fields[16] as int,
      totalIllustrations: fields[17] as int,
      totalPromotedIllustrations: fields[18] as int,
      acceptedTos: fields[19] as bool,
      forHire: fields[20] as bool,
      social: fields[21] as Social?,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(22)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.updatedAt)
      ..writeByte(2)
      ..write(obj.username)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.firstName)
      ..writeByte(5)
      ..write(obj.lastName)
      ..writeByte(6)
      ..write(obj.twitterUsername)
      ..writeByte(7)
      ..write(obj.portfolioUrl)
      ..writeByte(8)
      ..write(obj.bio)
      ..writeByte(9)
      ..write(obj.location)
      ..writeByte(10)
      ..write(obj.links)
      ..writeByte(11)
      ..write(obj.profileImage)
      ..writeByte(12)
      ..write(obj.instagramUsername)
      ..writeByte(13)
      ..write(obj.totalCollections)
      ..writeByte(14)
      ..write(obj.totalLikes)
      ..writeByte(15)
      ..write(obj.totalPhotos)
      ..writeByte(16)
      ..write(obj.totalPromotedPhotos)
      ..writeByte(17)
      ..write(obj.totalIllustrations)
      ..writeByte(18)
      ..write(obj.totalPromotedIllustrations)
      ..writeByte(19)
      ..write(obj.acceptedTos)
      ..writeByte(20)
      ..write(obj.forHire)
      ..writeByte(21)
      ..write(obj.social);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserLinksAdapter extends TypeAdapter<UserLinks> {
  @override
  final int typeId = 5;

  @override
  UserLinks read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserLinks(
      self: fields[0] as String?,
      html: fields[1] as String?,
      photos: fields[2] as String?,
      likes: fields[3] as String?,
      portfolio: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserLinks obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.self)
      ..writeByte(1)
      ..write(obj.html)
      ..writeByte(2)
      ..write(obj.photos)
      ..writeByte(3)
      ..write(obj.likes)
      ..writeByte(4)
      ..write(obj.portfolio);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserLinksAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ProfileImageAdapter extends TypeAdapter<ProfileImage> {
  @override
  final int typeId = 6;

  @override
  ProfileImage read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProfileImage(
      small: fields[0] as String?,
      medium: fields[1] as String?,
      large: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ProfileImage obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.small)
      ..writeByte(1)
      ..write(obj.medium)
      ..writeByte(2)
      ..write(obj.large);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileImageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SocialAdapter extends TypeAdapter<Social> {
  @override
  final int typeId = 7;

  @override
  Social read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Social(
      instagramUsername: fields[0] as String?,
      portfolioUrl: fields[1] as String?,
      twitterUsername: fields[2] as String?,
      paypalEmail: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Social obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.instagramUsername)
      ..writeByte(1)
      ..write(obj.portfolioUrl)
      ..writeByte(2)
      ..write(obj.twitterUsername)
      ..writeByte(3)
      ..write(obj.paypalEmail);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SocialAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
