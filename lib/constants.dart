import 'package:flutter/material.dart';

const kInputDecoration = InputDecoration(
                  hintText: 'Eneter a value',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20.0
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0))
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(32))
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent,
                      width: 2.0
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(32))
                  ),
                );


      