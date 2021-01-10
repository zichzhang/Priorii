import 'package:flutter/material.dart';
import 'package:Priorii/models/global.dart';

const textInputDecoration = InputDecoration(
  fillColor: greyColor,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: greyColor,
      width: 2.0,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: lilacColor,
      width: 2.0,
    ),
  ),
);