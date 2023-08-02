//
//  Registry.swift
//  DeepLinkChainResponsibility
//
//  Created by Khoi Nguyen on 02/08/2023.
//

import Foundation

class Registry {
    private let handlers: [DeepLinkHandler]

    init(handlers: [DeepLinkHandler]) {
        self.handlers = handlers
    }

    func handle(_ url: URL) {
        handlers.first(where: {
            $0.canHandle(url: url)
        })?.handle()
    }
}
