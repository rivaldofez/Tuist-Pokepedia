import ProjectDescription

let project = Project(
    name: "Pokepedia",
    targets: [
        .target(
            name: "Pokepedia",
            destinations: .iOS,
            product: .app,
            bundleId: "com.rivaldofez.pokepedia",
            infoPlist: .extendingDefault(
                with: [
                    "UIAppFonts": [
                        "Poppins-Black.ttf",
                        "Poppins-BlackItalic.ttf",
                        "Poppins-Bold.ttf",
                        "Poppins-BoldItalic.ttf",
                        "Poppins-ExtraBold.ttf",
                        "Poppins-ExtraLight.ttf",
                        "Poppins-ExtraLightItalic.ttf",
                        "Poppins-Italic.ttf",
                        "Poppins-Light.ttf",
                        "Poppins-Medium.ttf",
                        "Poppins-MediumItalic.ttf",
                        "Poppins-Regular.ttf",
                        "Poppins-SemiBold.ttf",
                        "Poppins-SemiBoldItalic.ttf",
                        "Poppins-Thin.ttf",
                        "Poppins-ThinItalic.ttf",
                        "Comfortaa-Bold.ttf",
                        "Comfortaa-Light.ttf",
                        "Comfortaa-Medium.ttf",
                        "Comfortaa-Regular.ttf",
                        "Comfortaa-SemiBold.ttf"
                    ],
                    "UILaunchStoryboardName": "LaunchScreen",
                    "UIApplicationSceneManifest": [
                        "UISceneConfigurations": [
                            "UIWindowSceneSessionRoleApplication": [
                                [
                                    "UISceneConfigurationName": "Default Configuration",
                                    "UISceneDelegateClassName": "$(PRODUCT_MODULE_NAME).SceneDelegate"
                                ]
                            ]
                        ]
                    ]
                ]
            ),
            sources: ["Pokepedia/Sources/**"],
            resources: ["Pokepedia/Resources/**"],
            dependencies: [
                .external(name: "PokepediaCommon"),
                .external(name: "PokepediaPokemon"),
                .external(name: "PokepediaSpecies"),
                .external(name: "Lottie"),
                .external(name: "SDWebImage"),
                .external(name: "DGCharts"),
                .external(name: "RxSwift"),
                .external(name: "RealmSwift"),
                .external(name: "Realm")
            ],
            settings: .settings(
                base: [
                    "OTHER_LDFLAGS": "-ObjC"
                ]
            )
        ),
    ]
)
