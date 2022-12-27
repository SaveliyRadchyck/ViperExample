//
//  ItemTVCell.swift
//  ViperExample
//
//  Created by Saveliy Radchyck on 27.12.2022.
//

import UIKit

protocol PItem {
    var titleText: String { get }
}

extension Item: PItem {
    var titleText: String { title }
}

final class ItemTVCell: UITableViewCell {
    // MARK: - IBOutlet property
    @IBOutlet private var lTitle: UILabel!
    // MARK: - Property
    static let id = "ItemTVCell"
    // MARK: - Public methods
    func config(item: PItem?) {
        lTitle.text = item?.titleText
    }
}
