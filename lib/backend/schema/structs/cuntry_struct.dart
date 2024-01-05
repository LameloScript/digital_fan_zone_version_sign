// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CuntryStruct extends BaseStruct {
  CuntryStruct({
    bool? isEmpty,
  }) : _isEmpty = isEmpty;

  // "isEmpty" field.
  bool? _isEmpty;
  bool get isEmpty => _isEmpty ?? true;
  set isEmpty(bool? val) => _isEmpty = val;
  bool hasIsEmpty() => _isEmpty != null;

  static CuntryStruct fromMap(Map<String, dynamic> data) => CuntryStruct(
        isEmpty: data['isEmpty'] as bool?,
      );

  static CuntryStruct? maybeFromMap(dynamic data) =>
      data is Map ? CuntryStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'isEmpty': _isEmpty,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isEmpty': serializeParam(
          _isEmpty,
          ParamType.bool,
        ),
      }.withoutNulls;

  static CuntryStruct fromSerializableMap(Map<String, dynamic> data) =>
      CuntryStruct(
        isEmpty: deserializeParam(
          data['isEmpty'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'CuntryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CuntryStruct && isEmpty == other.isEmpty;
  }

  @override
  int get hashCode => const ListEquality().hash([isEmpty]);
}

CuntryStruct createCuntryStruct({
  bool? isEmpty,
}) =>
    CuntryStruct(
      isEmpty: isEmpty,
    );
