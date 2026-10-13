/// Statut d'une commande.
enum OrderStatus {
  pendingQuote,
  awaitingPayment,
  purchased,
  shipped,
  inShop,
  delivered,
  cancelled;

  String get label {
    switch (this) {
      case OrderStatus.pendingQuote:
        return 'Devis en attente';
      case OrderStatus.awaitingPayment:
        return 'Paiement en attente';
      case OrderStatus.purchased:
        return 'Achete au Canada';
      case OrderStatus.shipped:
        return 'Envoi vers le Cameroun';
      case OrderStatus.inShop:
        return 'Disponible en boutique';
      case OrderStatus.delivered:
        return 'Remis au client';
      case OrderStatus.cancelled:
        return 'Annulee';
    }
  }

  static OrderStatus fromString(String value) {
    return OrderStatus.values.firstWhere(
      (status) => status.name == value,
      orElse: () => OrderStatus.pendingQuote,
    );
  }
}

/// Etapes du suivi de colis (Canada vers Cameroun).
enum TrackingStage {
  ordered,
  purchased,
  shipped,
  arrived,
  delivered;

  String get label {
    switch (this) {
      case TrackingStage.ordered:
        return 'Commande passee';
      case TrackingStage.purchased:
        return 'Produit achete';
      case TrackingStage.shipped:
        return 'Expedie';
      case TrackingStage.arrived:
        return 'Arrive en boutique';
      case TrackingStage.delivered:
        return 'Remis au client';
    }
  }
}