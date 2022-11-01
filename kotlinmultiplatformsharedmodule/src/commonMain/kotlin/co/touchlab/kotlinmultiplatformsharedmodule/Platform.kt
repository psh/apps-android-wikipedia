package co.touchlab.kotlinmultiplatformsharedmodule

interface Platform {
    val name: String
    val type: Type
    val osType: String
        get() {
            return type.toString()
        }
}

expect fun getPlatform(): Platform

sealed class Type {
    object IOS : Type()
    object Android : Type()
}