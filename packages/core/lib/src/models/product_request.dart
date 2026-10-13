/// Demande de produit envoyee par un client (collection `productRequests`).
class ProductRequest {
  const ProductRequest({
    required this.id,
    required this.clientId,
    required this.caracteristiques,
    this.title,
    this.photoUrls = const [],
    this.deliveryAddress,
    this.createdAt,
  });

  final String id;
  final String clientId;
  final String caracteristiques;
  final String? title;
  final List<String> photoUrls;
  final String? deliveryAddress;
  final DateTime? createdAt;

  factory ProductRequest.fromMap(String id, Map<String, dynamic> map) {
    return ProductRequest(
      id: id,
      clientId: map['clientId'] as String,
      title: map['title'] as String?,
      caracteristiques: map['caracteristiques'] as String? ?? '',
      photoUrls: (map['photoUrls'] as List<dynamic>? ?? const [])
          .map((url) => url as String)
          .toList(),
      deliveryAddress: map['deliveryAddress'] as String?,
      createdAt: (map['createdAt'] as dynamic).toString().isNotEmpty
          ? (map['createdAt'] as dynamic) is String
              ? DateTime.tryParse(map['createdAt'] as String)
              : (map['createdAt'] as dynamic).toDate()
          : null,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'title': title,
      'caracteristiques': caracteristiques,
      'photoUrls': photoUrls,
      'deliveryAddress': deliveryAddress,
      'createdAt': createdAt,
    };
  }
}