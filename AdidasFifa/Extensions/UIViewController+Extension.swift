//
//  UIViewController+Extension.swift
//  AdidasFifa
//
//  Created by Josue German Hernandez Gonzalez on 24-03-23.
//

import UIKit

extension UIViewController {
    
    func showModalView(title: String, message: String, buttonTitle: String) {
        let alertVC = ModalViewController(title: title, message: message, buttonTitle: buttonTitle)
        alertVC.modalPresentationStyle = .overFullScreen
        alertVC.modalTransitionStyle = .crossDissolve
        present(alertVC, animated: true)
    }
}
