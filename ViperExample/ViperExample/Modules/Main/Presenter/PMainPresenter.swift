//
//  PMainPresenter.swift
//  ViperExample
//
//  Created by Saveliy Radchyck on 27.12.2022.
//

import Foundation

protocol PMainPresenter: PMainPresenterActions {
    var interactor: PMainInteractor? { get set }
    var router: PMainRouter? { get set }
    var itemsCount: Int { get }
    func getItem(at indexPath: IndexPath) -> PItem?
    func openDetail(at indexPath: IndexPath)
    func viewDidLoad()
}

@objc protocol PMainPresenterActions: AnyObject {
    func shuffledItems()
}
