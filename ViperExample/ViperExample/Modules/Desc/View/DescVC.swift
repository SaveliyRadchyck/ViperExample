//
//  DescVC.swift
//  ViperExample
//
//  Created by Saveliy Radchyck on 27.12.2022.
//

import UIKit

final class DescVC: UIViewController {
    // MARK: - IBOutlet property
    @IBOutlet private var lTitle: UILabel!
    @IBOutlet private var lDesc: UILabel!
    var presenter: PDescPresenter?
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.showData()
    }
}

// MARK: - DescVC + PDescVC -
extension DescVC: PDescVC {
    func showTitle(_ text: String) {
        lTitle.text = text
    }
    func showDesc(_ text: String) {
        lDesc.text = text
    }
}
