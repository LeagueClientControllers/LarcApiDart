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

/// Indicates type of an event.
enum CommandEventType {
  /// Command has been sent.
  @_i1.JsonValue("CommandSent")
  commandSent,

  /// Command has been executed.
  @_i1.JsonValue("CommandExecuted")
  commandExecuted
}
