plugins {
    kotlin("multiplatform")
    kotlin("native.cocoapods")
    id("com.android.library")
    `maven-publish`
    id("co.touchlab.faktory.kmmbridge") version "1.1"
}

kotlin {
    android()
    iosX64()
    iosArm64()
    iosSimulatorArm64()

    cocoapods {
        summary = "Some description for the Shared Module"
        homepage = "Link to the Shared Module homepage"
        version = "1.0"
        ios.deploymentTarget = "14.1"
    }
    
    sourceSets {
        val commonMain by getting
        val commonTest by getting {
            dependencies {
                implementation(kotlin("test"))
            }
        }
        val androidMain by getting
        val androidTest by getting
        val iosX64Main by getting
        val iosArm64Main by getting
        val iosSimulatorArm64Main by getting
        val iosMain by creating {
            dependsOn(commonMain)
            iosX64Main.dependsOn(this)
            iosArm64Main.dependsOn(this)
            iosSimulatorArm64Main.dependsOn(this)
        }
        val iosX64Test by getting
        val iosArm64Test by getting
        val iosSimulatorArm64Test by getting
        val iosTest by creating {
            dependsOn(commonTest)
            iosX64Test.dependsOn(this)
            iosArm64Test.dependsOn(this)
            iosSimulatorArm64Test.dependsOn(this)
        }
    }
}

android {
    namespace = "co.touchlab.kotlinmultiplatformsharedmodule"
    compileSdk = 32
    defaultConfig {
        minSdk = 29
        targetSdk = 32
    }
}

val gitLabPrivateToken: String by project
val specRepoUser: String by project
val specRepoPath: String by project
val projectId: String by project

group = "the-group"
version = "123"

kmmbridge {
    manualVersions()

    mavenPublishArtifacts()

    spm()

    cocoapods("https://${specRepoUser}:${gitLabPrivateToken}@gitlab.com/${specRepoPath}.git")

    versionPrefix.set("0.8.24")
}

publishing {
    repositories {
        maven {
            name = "myRepo"
            url = uri(layout.buildDirectory.dir("my-local-repo"))
        }

//        maven {
//            url = uri("https://gitlab.com/api/v4/projects/${projectId}/packages/maven")
//            name = "GitLab"
//            credentials(HttpHeaderCredentials::class) {
//                name = "Private-Token"
//                value = gitLabPrivateToken
//            }
//            authentication {
//                create<HttpHeaderAuthentication>("header")
//            }
//        }
    }
}
