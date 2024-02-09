package uz.mlSoft.technomart_project


import android.app.Application

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import com.yandex.mapkit.MapKitFactory

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        //MapKitFactory.setLocale("RU") // Your preferred language. Not required, defaults to system language
        MapKitFactory.setApiKey("8b193c26-b7eb-45a8-83ee-0944af979437") // Your generated API key
        super.configureFlutterEngine(flutterEngine)
    }
}
