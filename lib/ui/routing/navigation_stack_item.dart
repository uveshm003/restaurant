
import 'package:freezed_annotation/freezed_annotation.dart';
part 'navigation_stack_item.freezed.dart';

@freezed
class NavigationStackItem with _$NavigationStackItem{
  const factory NavigationStackItem.home() = NavigationStackItemHome;
}