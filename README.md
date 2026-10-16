# Responsive Dashboard UI — Flutter

Cihaz genişliğine göre **iskelet değiştiren** responsive panel çalışması: mobil, tablet ve
masaüstü için ayrı scaffold'lar.

## Fikir

Tek bir `ResponsiveLayout` bileşeni genişliği ölçer ve doğru iskeleti seçer. İçerik aynı kalır,
yerleşim değişir — sayfa kodunu çoğaltmak yerine iskelet değiştirilir.

```
response_dashboard_ui/lib/
├── main.dart
├── constants.dart
├── responsive/
│   ├── responsive_layout.dart   # kırılım noktalarını ölçer ve seçer
│   ├── mobile_scaffold.dart     # < 800 px
│   ├── tablet_scaffold.dart     # 800–1200 px
│   └── desktop_scaffold.dart    # > 1200 px
└── util/
    ├── my_box.dart              # özet kutusu
    └── my_tile.dart             # liste satırı
```

## Çalıştırma

```bash
cd response_dashboard_ui
flutter pub get
flutter run
```

Pencereyi yeniden boyutlandırarak üç kırılımı canlı görebilirsiniz.

## Sınırlar

Veri sabit; API bağlantısı yok. Kırılım noktaları elle yazıldı — gerçek bir üründe bileşen
bazlı `LayoutBuilder` kararları daha esnek olur.
