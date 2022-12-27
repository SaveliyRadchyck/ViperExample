//
//  MainRouter.swift
//  ViperExample
//
//  Created by Saveliy Radchyck on 27.12.2022.
//

import Foundation

final class MainRouter {
    private unowned let vc: MainVC?
    init(vc: MainVC?) {
        self.vc = vc
    }
}

// MARK: - MainRouter + PMainRouter -
extension MainRouter: PMainRouter {
    func openDetail(item: PDescItem) {
        guard let vc else { return }
        vc.performSegue(
            withIdentifier: vc.descSegueName,
            sender: item)
    }
}
