package co.touchlab.kotlinmultiplatformsharedmodule

class AndroidPlatform : Platform {
    override val name: String = "Android ${android.os.Build.VERSION.SDK_INT}"
    override val type: Type = Type.Android
}

actual fun getPlatform(): Platform = AndroidPlatform()