import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'profilepage_widget.dart' show ProfilepageWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilepageModel extends FlutterFlowModel<ProfilepageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nomePerfil widget.
  FocusNode? nomePerfilFocusNode;
  TextEditingController? nomePerfilTextController;
  String? Function(BuildContext, String?)? nomePerfilTextControllerValidator;
  // State field(s) for emailPerfil widget.
  FocusNode? emailPerfilFocusNode;
  TextEditingController? emailPerfilTextController;
  String? Function(BuildContext, String?)? emailPerfilTextControllerValidator;
  // State field(s) for dataPerfil widget.
  FocusNode? dataPerfilFocusNode;
  TextEditingController? dataPerfilTextController;
  String? Function(BuildContext, String?)? dataPerfilTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nomePerfilFocusNode?.dispose();
    nomePerfilTextController?.dispose();

    emailPerfilFocusNode?.dispose();
    emailPerfilTextController?.dispose();

    dataPerfilFocusNode?.dispose();
    dataPerfilTextController?.dispose();
  }
}
