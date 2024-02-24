import 'package:flutter/material.dart';
import 'package:gap/gap.dart' as gap;

class Gap {
  // Standard gaps
  static Widget get g2 => const gap.Gap(2);
  static Widget get g4 => const gap.Gap(4);
  static Widget get g8 => const gap.Gap(8);
  static Widget get g12 => const gap.Gap(12);
  static Widget get g16 => const gap.Gap(16);
  static Widget get g24 => const gap.Gap(24);
  static Widget get g32 => const gap.Gap(32);
  static Widget get g48 => const gap.Gap(48);
  static Widget get g64 => const gap.Gap(64);
  static Widget get g96 => const gap.Gap(96);
  // List
  static Widget get listSmall => g12;
  static Widget get listMedium => g24;
}
