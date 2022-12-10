package com.example.platfrom_method

import android.app.Activity
import android.app.Dialog
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {

    private var CHANNEL = "Toast";
//    private lateinit var activity1 : Activity

    override fun configureFlutterEngine(flutterEngine: FlutterEngine){
        super.configureFlutterEngine(flutterEngine);

        val messenger = flutterEngine.dartExecutor.binaryMessenger

        MethodChannel(messenger, CHANNEL).setMethodCallHandler { call, result ->
           if(call.method == "showToast"){
//                var dialog = Dialog(activity1)
//                dialog.setTitle("Hi THis is trial")
//               dialog.show()
           }

        }
    }

//    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
//        activity1 = binding.activity
//    }
//
//    override fun onDetachedFromActivityForConfigChanges() {
//        TODO("Not yet implemented")
//    }
//
//    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
//        activity1 = binding.activity
//    }
//
//    override fun onDetachedFromActivity() {
//        TODO("Not yet implemented")
//    }
}
