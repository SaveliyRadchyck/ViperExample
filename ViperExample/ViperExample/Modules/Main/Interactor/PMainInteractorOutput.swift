//
//  PMainInteractorOutput.swift
//  ViperExample
//
//  Created by Saveliy Radchyck on 27.12.2022.
//

import Foundation

protocol PMainInteractorOutput: AnyObject {
    func itemsDidReceive(_ items: [Item])
}
