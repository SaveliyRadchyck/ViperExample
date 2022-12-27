//
//  MainVC.swift
//  ViperExample
//
//  Created by Saveliy Radchyck on 27.12.2022.
//

import UIKit

final class MainVC: UIViewController {
    // MARK: - Outlets property
    @IBOutlet private var tvItem: UITableView! {
        didSet { tvItem.register(UINib(nibName: ItemTVCell.id, bundle: nil), forCellReuseIdentifier: ItemTVCell.id) }
    }
    @IBOutlet private var bShuffled: UIButton!
    // MARK: - Property
    var presenter: PMainPresenter?
    var descSegueName = "desc"
    private let configurator: PMainConfigurator = MainConfigurator()
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.config(with: self)
        presenter?.viewDidLoad()
        setupBBlend()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == descSegueName {
            guard let item = sender as? PDescItem else { return }
            let descVC = segue.destination as? PDescVC
            let configurator: PDescConfigurator = DescConfigurator()
            configurator.config(with: descVC, item: item)
        }
    }
    // MARK: - Private methods
    private func setupBBlend() {
        bShuffled.addTarget(presenter, action: #selector(presenter?.shuffledItems), for: .touchUpInside)
    }
}

// MARK: - MainVC + UITableViewDataSource -
extension MainVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter?.itemsCount ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTVCell",
                                                 for: indexPath) as? ItemTVCell
        if let item = presenter?.getItem(at: indexPath) {
            cell?.config(item: item)
        }
        return cell ?? UITableViewCell()
    }
}

// MARK: - MainVC + UITableViewDelegate -
extension MainVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.openDetail(at: indexPath)
    }
}

// MARK: - MainVC + PMainVC -
extension MainVC: PMainVC {
    func reloadData() {
        tvItem.reloadData()
    }
}
