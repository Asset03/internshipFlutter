package com.example.aza;

import com.yandex.mapkit.MapKitFactory
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        MapKitFactory.setApiKey('eb52e492-8f04-42da-80cb-9f06d2e8a75a')
        GeneratedPluginRegistrant.registerWith(flutterEngine)
    }
}