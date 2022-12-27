//
//  MainConfigurator.swift
//  ViperExample
//
//  Created by Saveliy Radchyck on 27.12.2022.
//

import Foundation

final class MainConfigurator: PMainConfigurator {
    func config(with vc: PMainVC) {
        let presenter = MainPresenter(view: vc)
        presenter.interactor = MainInteractor(presenter: presenter)
        presenter.router = MainRouter(vc: vc as? MainVC)
        vc.presenter = presenter
    }
}
