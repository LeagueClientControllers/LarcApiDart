//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

import 'package:json_annotation/json_annotation.dart' as _i1;
import 'package:json_annotation/json_annotation.dart';

/// Identifies exactly what was happened in the champ select phase.
enum PickEventType {
  ///
  @_i1.JsonValue("SkinChanged")
  SkinChanged,

  ///
  @_i1.JsonValue("ActionChanged")
  ActionChanged,

  ///
  @_i1.JsonValue("ActionRequested")
  ActionRequested,

  ///
  @_i1.JsonValue("ChampSelectEnded")
  ChampSelectEnded,

  ///
  @_i1.JsonValue("ChampSelectStarted")
  ChampSelectStarted
}