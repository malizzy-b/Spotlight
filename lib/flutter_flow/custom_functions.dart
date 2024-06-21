import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String? searchShows() {
  Future<List<Map<String, dynamic>>> searchShows(String searchTerm) async {
    final response = await Supabase.instance.client
        .from('shows_show')
        .select()
        .ilike('nome',
            '%$searchTerm%'); // Ajuste 'nome' para o nome da coluna correta na sua tabela

    if (response.error != null) {
      print('Error: ${response.error.message}');
      return [];
    }
    return response.data as List<Map<String, dynamic>>;
  }
}
