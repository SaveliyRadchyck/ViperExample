//
//  MainPresenter.swift
//  ViperExample
//
//  Created by Saveliy Radchyck on 27.12.2022.
//

import Foundation

final class MainPresenter: PMainPresenter {
    // MARK: - Property
    var itemsCount: Int { items.count }
    var interactor: PMainInteractor?
    var router: PMainRouter?
    private unowned let view: PMainVC
    private var items: [Item] = []
    // MARK: - Init
    init(view: PMainVC) {
        self.view = view
    }
    // MARK: - Methods
    func viewDidLoad() {
        interactor?.getItems()
    }
    func getItem(at indexPath: IndexPath) -> PItem?  {
        items[indexPath.row]
    }
    func openDetail(at indexPath: IndexPath) {
        router?.openDetail(item: items[indexPath.row])
    }
    // MARK: - Actions
    func shuffledItems() {
        items = items.shuffled()
        view.reloadData()
    }
}

// MARK: - MainPresenter + PMainInteractorOutput -
extension MainPresenter: PMainInteractorOutput {
    func itemsDidReceive(_ items: [Item]) {
        self.items = items
        view.reloadData()
    }
}
