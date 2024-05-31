// swift-tools-version:5.3
//
//  Package.Swift
//  Starscream
//
//  Created by Dalton Cherry on 5/16/15.
//  Copyright (c) 2014-2016 Dalton Cherry.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import PackageDescription

// let package = Package(
//     name: "Starscream",
//     dependencies: [
//         .Package(url: "https://github.com/daltoniam/zlib-spm.git",
//     majorVersion: 1, minor: 1),
//         .Package(url: "https://github.com/daltoniam/common-crypto-spm",
//                  majorVersion: 1, minor: 1),
//         ],
//     exclude: ["Tests", "examples"]
// )

let package = Package(
        name: "Starscream",
        products: [
            .library(name: "Starscream", targets: ["Starscream"])
        ],
        dependencies: [
//             .package(url: "https://github.com/apple/swift-nio-zlib-support.git", from: "1.0.0")
            .package(url: "github.com/daltoniam/zlib-spm.git", branch: "master"),
            .package(url: "https://github.com/daltoniam/common-crypto-spm", branch: "master"),
        ],
        targets: [
            .target(name: "Starscream",
                    path: "Sources",
                    resources: [.copy("PrivacyInfo.xcprivacy")])
        ]
)
