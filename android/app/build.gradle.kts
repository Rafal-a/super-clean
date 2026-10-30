import org.jetbrains.kotlin.gradle.dsl.JvmTarget

plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
    id("dev.flutter.flutter-gradle-plugin")
}

// 1. Modern Android Extension Configuration for AGP 9+
extensions.configure<com.android.build.api.dsl.ApplicationExtension> {
    namespace = "com.example.super_clean"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.example.super_clean"
        minSdk = flutter.minSdkVersion
        targetSdk = 35
        versionCode = 1
        versionName = "1.0.0"
    }

    buildTypes {
        release {
            isMinifyEnabled = true
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }
}

// 2. Modern Kotlin Compiler Options DSL (Replaces old kotlinOptions)
kotlin {
    compilerOptions {
        jvmTarget.set(JvmTarget.JVM_11)
    }
}
flutter {
    source = "../.."
}

dependencies {
    // Leave blank unless you manually added specific native dependencies here
}
