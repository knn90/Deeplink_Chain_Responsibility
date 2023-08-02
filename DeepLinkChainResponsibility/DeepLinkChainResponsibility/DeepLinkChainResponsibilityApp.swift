//
//  DeepLinkChainResponsibilityApp.swift
//  DeepLinkChainResponsibility
//
//  Created by Khoi Nguyen on 02/08/2023.
//

import SwiftUI

@main
struct DeepLinkChainResponsibilityApp: App {
    let registry: Registry

    init() {
        registry = Registry(handlers: [
            LoginDeepLinkHandler(),
            ProductsDeepLinkHandler(),
            PaymentDeepLinkHandler(),
            HomeDeepLinkHandler()
        ])
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL { url in
                    registry.handle(url)
                }
        }
    }
}
