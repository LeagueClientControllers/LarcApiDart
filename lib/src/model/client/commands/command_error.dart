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

/// Indicates what error occurred during execution of the command.
enum CommandError {
  /// Occurs when executing commands 'AcceptMatch' and 'DeclineMatch' if current game flow phase is not 'ReadyCheck'.
  @_i1.JsonValue("ReadyCheckError")
  ReadyCheckError
}
