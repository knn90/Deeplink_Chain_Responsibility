//
//  DeepLinkHandler.swift
//  DeepLinkChainResponsibility
//
//  Created by Khoi Nguyen on 02/08/2023.
//

import Foundation

protocol DeepLinkHandler {
    func canHandle(url: URL) -> Bool
    func handle()
}

class LoginDeepLinkHandler: DeepLinkHandler {
    func canHandle(url: URL) -> Bool {
        url.absoluteString.contains("/login")
    }

    func handle() {
        // Navigate to Login screen
    }
}

class ProductsDeepLinkHandler: DeepLinkHandler {
    func canHandle(url: URL) -> Bool {
        url.absoluteString.contains("/products")
    }

    func handle() {
        // Navigate to Products screen
    }
}

class PaymentDeepLinkHandler: DeepLinkHandler {
    func canHandle(url: URL) -> Bool {
        url.absoluteString.contains("/payment")
    }

    func handle() {
        // Navigate to Payment screen
    }
}

class HomeDeepLinkHandler: DeepLinkHandler {
    func canHandle(url: URL) -> Bool {
        true
    }

    func handle() {
        // Navigate to Home screen
    }
}
