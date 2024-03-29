//
//  UIViewController+Extension.swift
//  Backpack
//
//  Created by Sylvain Druaux on 30/01/2023.
//

import UIKit

extension UIViewController {
    enum ErrorType {
        case connectionFailed, missingApiKey

        var message: String {
            switch self {
            case .connectionFailed:
                """
                Unable to connect to the service.
                Please check your connection and try again.
                """
            case .missingApiKey:
                """
                Service unavailable.
                Please contact our support if the problem persists.
                """
            }
        }
    }

    func presentAlert(_ error: ErrorType) {
        let alertVC = UIAlertController(title: "Error", message: error.message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .cancel))
        alertVC.view.tintColor = UIColor(.text)
        present(alertVC, animated: true)
    }
}
