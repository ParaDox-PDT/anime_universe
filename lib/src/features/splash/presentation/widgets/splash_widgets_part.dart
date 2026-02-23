import 'dart:ui';
import 'package:anime_universe/gen/assets.gen.dart';
import 'package:anime_universe/src/config/router/routes.dart';
import 'package:anime_universe/src/config/theme/colors.dart';
import 'package:anime_universe/src/config/theme/typography_x.dart';
import 'package:anime_universe/src/core/extensions/build_context_extension.dart';
import 'package:anime_universe/src/core/extensions/color_extension.dart';
import 'package:anime_universe/src/core/extensions/sized_box_extension.dart';
import 'package:anime_universe/src/core/extensions/widget_extension.dart';
import 'package:anime_universe/src/core/utils/app_utils.dart';
import 'package:anime_universe/src/features/splash/presentation/bloc/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

part 'splash_background.dart';
part 'splash_content.dart';
part 'splash_progress.dart';