//
//  MainInteractor.swift
//  ViperExample
//
//  Created by Saveliy Radchyck on 27.12.2022.
//

import Foundation

final class MainInteractor {
    // MARK: - Property
    private unowned var presenter: PMainInteractorOutput
    // MARK: - Init
    init(presenter: PMainInteractorOutput) {
        self.presenter = presenter
    }
}

// MARK: - MainInteractor + PMainInteractor -
extension MainInteractor: PMainInteractor {
    func getItems() {
        ItemsLoader.getItems { [weak self] in
            self?.presenter.itemsDidReceive($0)
        }
    }
}
