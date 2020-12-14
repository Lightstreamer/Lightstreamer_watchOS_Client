# Lightstreamer SDK for watchOS Clients

This SDK includes the resources needed to develop an application for Apple Watch that works as a client of Lightstreamer Server.

This client implements the Lightstreamer Unified Client API. The goal of the Unified API is to offer a common set of interfaces and functionalities across different languages and platforms.

This SDK is compatible with watchOS 2.0 and newer.

The library is distributed as an XCFramework that supports compilations targeted to a simulator and to a physical device with ARMv7k or ARM64_32 architectures. Bitcode segments are also included.

The library is available for import through Swift Package Manager or via direct traditional download.

## Importing the Library via Swift Package Manager

Follow these simple steps:

* Select your Xcode project, then click on "Swift Packages".
* Click on the "+" button and enter the following repository URL: https://github.com/Lightstreamer/Lightstreamer_watchOS_Client.git
* In the Package Options panel select the "Exact" version rule specifying the latest version, or whatever other rule you consider appropriate.
* Once completed, add the framework in the appropriate targets of your project.
* In the target's Build Phases page, also add the following libraries in the Link Binary With Libraries section:
  Security.framework, libiconv
* Finally, add the following import line wherever you need the client library's services:

  ```
  #import <Lightstreamer_watchOS_Client/Lightstreamer_watchOS_Client.h>
  ```

Check the [Client library repository](https://github.com/Lightstreamer/Lightstreamer_watchOS_Client) for any newer version.

## Importing the Library Traditionally

If Swift Package Manager is not for you, you can still install the library more traditionally by following these steps:

* Download the watchOS client library's distribution from [our website](https://www.lightstreamer.com/repo/cocoapods/ls-watchos-client/4.3.0/ls-watchos-client-4.3.0.zip).
* Unzip the library's distribution and copy the framework inside your project.
* Once completed, add the framework in the appropriate targets of your project.
* In the target's Build Phases page, also add the following libraries in the Link Binary With Libraries section:
  Security.framework, libiconv
* Finally, add the following import line wherever you need the client library's services:

  ```
  #import <Lightstreamer_watchOS_Client/Lightstreamer_watchOS_Client.h>
  ```

Check the [download site](https://www.lightstreamer.com/repo/cocoapods/ls-watchos-client) for any newer version.