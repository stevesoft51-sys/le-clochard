import 'order_status.dart';

/// Commande d'un client (collection `orders`).
class Order {
  const Order({
    required this.id,
    required this.clientId,
    required this.productRequestId,
    required this.status,
    this.productTitle,
    this.photoUrls = const [],
    this.quoteAmount,
    this.paidAmount,
    this.currency,
    this.createdAt,
    this.updatedAt,
  });

  final String id;
  final String clientId;
  final String productRequestId;
  final OrderStatus status;
  final String? productTitle;
  final List<String> photoUrls;
  final double? quoteAmount;
  final double? paidAmount;
  final String? currency;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory Order.fromMap(String id, Map<String, dynamic> map) {
    return Order(
      id: id,
      clientId: map['clientId'] as String,
      productRequestId: map['productRequestId'] as String,
      status: OrderStatus.fromString(map['status'] as String? ?? ''),
      productTitle: map['productTitle'] as String?,
      photoUrls: (map['photoUrls'] as List<dynamic>? ?? const [])
          .map((url) => url as String)
          .toList(),
      quoteAmount: (map['quoteAmount'] as num?)?.toDouble(),
      paidAmount: (map['paidAmount'] as num?)?.toDouble(),
      currency: map['currency'] as String?,
      createdAt: (map['createdAt'] as dynamic).toString().isNotEmpty
          ? (map['createdAt'] as dynamic) is String
              ? DateTime.tryParse(map['createdAt'] as String)
              : (map['createdAt'] as dynamic).toDate()
          : null,
      updatedAt: (map['updatedAt'] as dynamic).toString().isNotEmpty
          ? (map['updatedAt'] as dynamic) is String
              ? DateTime.tryParse(map['updatedAt'] as String)
              : (map['updatedAt'] as dynamic).toDate()
          : null,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'productRequestId': productRequestId,
      'status': status.name,
      'productTitle': productTitle,
      'photoUrls': photoUrls,
      'quoteAmount': quoteAmount,
      'paidAmount': paidAmount,
      'currency': currency,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}