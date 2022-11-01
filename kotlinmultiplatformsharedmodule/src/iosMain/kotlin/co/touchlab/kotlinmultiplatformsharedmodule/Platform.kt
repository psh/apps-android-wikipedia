package co.touchlab.kotlinmultiplatformsharedmodule

import platform.UIKit.UIDevice

class IOSPlatform: Platform {
    override val name: String = UIDevice.currentDevice.systemName() + " " + UIDevice.currentDevice.systemVersion
    override val type: Type = Type.IOS
    override val version: Int = 1
}

actual fun getPlatform(): Result<Platform> = Result.success(IOSPlatform())