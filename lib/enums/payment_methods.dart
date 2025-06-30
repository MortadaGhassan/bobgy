enum PaymentMethods {
  masterCard,
  visaCard,
  zainCash;

  String get name {
    return switch (this) {
      PaymentMethods.masterCard => 'MasterCard',
      PaymentMethods.visaCard => 'VisaCard',
      PaymentMethods.zainCash => 'ZainCash',
    };
  }
}
