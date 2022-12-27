//
//  PMainVC.swift
//  ViperExample
//
//  Created by Saveliy Radchyck on 27.12.2022.
//

import Foundation

protocol PMainVC: AnyObject {
    var descSegueName: String { get }
    var presenter: PMainPresenter? { get set }
    func reloadData()
}
