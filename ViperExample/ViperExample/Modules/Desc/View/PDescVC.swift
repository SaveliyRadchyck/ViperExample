//
//  PDescVC.swift
//  ViperExample
//
//  Created by Saveliy Radchyck on 27.12.2022.
//

import Foundation

protocol PDescVC: AnyObject {
    var presenter: PDescPresenter? { get set }
    func showTitle(_ text: String)
    func showDesc(_ text: String)
}
