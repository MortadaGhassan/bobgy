enum CustodyStateType {
  active,
  paused,
  expired;

  String get state {
    return switch (this) {
      CustodyStateType.active => 'نشطة',
      CustodyStateType.expired => 'منتهية',
      CustodyStateType.paused => 'متوقفة',
    };
  }
}
