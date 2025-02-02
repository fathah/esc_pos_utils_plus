enum PosAlign { left, center, right }
enum PosCutMode { full, partial }
enum PosFontType { fontA, fontB }
enum PosDrawer { pin2, pin5 }

/// Choose image printing function
/// bitImageRaster: GS v 0 (obsolete)
/// graphics: GS ( L
enum PosImageFn { bitImageRaster, graphics }

class PosTextSize {
  const PosTextSize._internal(this.value);
  final int value;
  static const size1 = PosTextSize._internal(1);
  static const size2 = PosTextSize._internal(2);
  static const size3 = PosTextSize._internal(3);
  static const size4 = PosTextSize._internal(4);
  static const size5 = PosTextSize._internal(5);
  static const size6 = PosTextSize._internal(6);
  static const size7 = PosTextSize._internal(7);
  static const size8 = PosTextSize._internal(8);

  static int decSize(PosTextSize height, PosTextSize width) =>
      16 * (width.value - 1) + (height.value - 1);
}

class PaperSize {
  const PaperSize._internal(this.value);
  final int value;
  static const mm58 = PaperSize._internal(1);
  static const mm72 = PaperSize._internal(2);
  static const mm80 = PaperSize._internal(3);
   static const mm100 = PaperSize._internal(4);  // Added for 100mm width
   static const mm120 = PaperSize._internal(5);  // Added for 100mm width


  int get width {
    if (value == PaperSize.mm58.value) {
      return 384;
    } else if (value == PaperSize.mm72.value) {
      return 512;
    }
     else if (value == PaperSize.mm100.value) {  // Added for 100mm width
      return 800;  // 100mm width in dots
    }
      else if (value == PaperSize.mm120.value) {  // Added for 100mm width
      return 1200;  // 100mm width in dots
    }
    else {
      return 576;
    }
    // value == PaperSize.mm58.value ? 384 : 558;
  }
}

class PosBeepDuration {
  const PosBeepDuration._internal(this.value);
  final int value;
  static const beep50ms = PosBeepDuration._internal(1);
  static const beep100ms = PosBeepDuration._internal(2);
  static const beep150ms = PosBeepDuration._internal(3);
  static const beep200ms = PosBeepDuration._internal(4);
  static const beep250ms = PosBeepDuration._internal(5);
  static const beep300ms = PosBeepDuration._internal(6);
  static const beep350ms = PosBeepDuration._internal(7);
  static const beep400ms = PosBeepDuration._internal(8);
  static const beep450ms = PosBeepDuration._internal(9);
}
