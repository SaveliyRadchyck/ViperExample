//
//  ItemsLoader.swift
//  ViperExample
//
//  Created by Saveliy Radchyck on 27.12.2022.
//

import Foundation

// for example get data service
struct ItemsLoader {
    private init() {}
    static func getItems(completion: @escaping([Item]) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            completion(ItemsMock.items)
        }
    }
}
