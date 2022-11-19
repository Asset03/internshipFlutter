package com.example.aza;

import androidx.annotation.NonNull;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;

import com.yandex.mapkit.MapKitFactory;

public class MainActivity extends FlutterActivity {
    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        MapKitFactory.setApiKey("eb52e492-8f04-42da-80cb-9f06d2e8a75a");
        super.configureFlutterEngine(flutterEngine);
    }
}