package co.touchlab.kotlinmultiplatformsharedmodule

class AndroidPlatform : Platform {
    override val name: String = "Android ${android.os.Build.VERSION.SDK_INT}"
    override val type: Type = Type.Android
    override val version: Int = 1
}

actual fun getPlatform(): Result<Platform> = Result.success(AndroidPlatform())