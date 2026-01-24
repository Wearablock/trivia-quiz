import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String id; // "geography", "history" 등
  final int order; // 정렬 순서
  final Map<String, String> name; // 다국어 이름 {"en": "Geography", "ko": "지리"}
  final Map<String, String>? description; // 다국어 설명 (선택)
  final String? color; // 테마 색상 (hex)
  final String? icon; // Material 아이콘 이름

  const Category({
    required this.id,
    required this.order,
    required this.name,
    this.description,
    this.color,
    this.icon,
  });

  /// 현재 로케일에 맞는 이름 반환
  String getName(String locale) {
    return name[locale] ?? name['en'] ?? name.values.first;
  }

  /// 현재 로케일에 맞는 설명 반환
  String? getDescription(String locale) {
    if (description == null) return null;
    return description![locale] ?? description!['en'];
  }

  /// JSON에서 Category 생성
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] as String,
      order: json['order'] as int,
      name: Map<String, String>.from(json['name'] as Map),
      description: json['description'] != null
          ? Map<String, String>.from(json['description'] as Map)
          : null,
      color: json['color'] as String?,
      icon: json['icon'] as String?,
    );
  }

  /// Category를 JSON으로 변환
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'order': order,
      'name': name,
      if (description != null) 'description': description,
      if (color != null) 'color': color,
      if (icon != null) 'icon': icon,
    };
  }

  @override
  List<Object?> get props => [id, order, name, description, color, icon];
}
