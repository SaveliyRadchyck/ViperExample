//
//  DescPresenter.swift
//  ViperExample
//
//  Created by Saveliy Radchyck on 27.12.2022.
//

import Foundation

final class DescPresenter {
    // MARK: - Property
    private weak var view: PDescVC?
    private var item: PDescItem
    // MARK: - Init
    init(view: PDescVC?, item: PDescItem) {
        self.view = view
        self.item = item
    }
}

// MARK: - DescPresenter + PDescPresenter -
extension DescPresenter: PDescPresenter {
    func showData() {
        view?.showTitle(item.titleText)
        view?.showDesc(item.descText)
    }
}
