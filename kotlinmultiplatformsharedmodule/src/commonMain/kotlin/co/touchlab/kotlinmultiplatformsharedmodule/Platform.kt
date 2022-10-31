package co.touchlab.kotlinmultiplatformsharedmodule

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform