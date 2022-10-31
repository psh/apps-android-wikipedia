package co.touchlab.kotlinmultiplatformsharedmodule

class Greeting {
    private val platform: Result<Platform> = getPlatform()

    fun greeting(): String {
        return "Hello, ${platform.getOrNull()?.name}!"
    }
}