package co.touchlab.kotlinmultiplatformsharedmodule

interface Platform {
    val version: Int
    val name: String
    val type: Type
    val osType: String
        get() {
            return type.toString()
        }
}

expect fun getPlatform(): Result<Platform>

sealed class Type {
    object IOS : Type()
    object Android : Type()
}