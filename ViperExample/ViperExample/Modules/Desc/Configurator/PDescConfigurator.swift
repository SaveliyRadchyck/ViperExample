//
//  PDescConfigurator.swift
//  ViperExample
//
//  Created by Saveliy Radchyck on 27.12.2022.
//

import Foundation

protocol PDescConfigurator: AnyObject {
    func config(with vc: PDescVC?, item: PDescItem)
}
