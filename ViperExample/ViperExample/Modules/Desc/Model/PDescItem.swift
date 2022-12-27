//
//  PDescItem.swift
//  ViperExample
//
//  Created by Saveliy Radchyck on 27.12.2022.
//

import Foundation

protocol PDescItem: PItem {
    var descText: String { get }
}

extension Item: PDescItem {
    var descText: String { description }
}
