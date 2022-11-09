// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "BluetoothLinux",
    products: [
        .library(
            name: "BluetoothLinux",
            targets: ["BluetoothLinux"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/blocks-lockers/Bluetooth",
            .branch("swift-5.6")
        )
    ],
    targets: [
        .target(
            name: "BluetoothLinux",
            dependencies: ["Bluetooth", "CSwiftBluetoothLinux"]
        ),
        .target(
            name: "CSwiftBluetoothLinux"
        ),
        .target(
            name: "CSwiftBluetoothLinuxTest"
        ),
        .testTarget(
            name: "BluetoothLinuxTests",
            dependencies: [
                "BluetoothLinux",
                "CSwiftBluetoothLinuxTest"
            ]
        )
    ]
)
