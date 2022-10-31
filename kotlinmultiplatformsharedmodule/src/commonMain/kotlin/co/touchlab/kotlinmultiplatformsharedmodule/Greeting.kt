package co.touchlab.kotlinmultiplatformsharedmodule

class Greeting {
    private val platform: Platform = getPlatform()

    fun greeting(): String {
        return "Hello, ${platform.name}!"
    }
}