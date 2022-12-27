//
//  DescConfigurator.swift
//  ViperExample
//
//  Created by Saveliy Radchyck on 27.12.2022.
//

import Foundation

final class DescConfigurator: PDescConfigurator {
    func config(with vc: PDescVC?, item: PDescItem) {
        let presenter = DescPresenter(view: vc, item: item)
        vc?.presenter = presenter
    }
}
