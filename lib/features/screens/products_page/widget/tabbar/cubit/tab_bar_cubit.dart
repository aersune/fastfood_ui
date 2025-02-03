import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products_ui/common/base/base_cubit.dart';

part 'tab_bar_state.dart';
part 'tab_bar_cubit.freezed.dart';


class TabBarCubit extends BaseCubit<TabBarBuildable, TabBarListenable> {
  TabBarCubit() : super(const TabBarBuildable.initial());
}
