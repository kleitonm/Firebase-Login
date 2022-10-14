//
//  Alert.swift
//  M21-Firebase
//
//  Created by Kleiton Mendes on 06/10/22.
//

import Foundation
import UIKit

extension UIViewController {
    
    //MARK: Alerts
    func dispatchAlert(_ title: String?, message: String, handler: @escaping() -> Void = {}) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let dismissAction = UIAlertAction(title: "Fechar", style: .default, handler: { (action) -> Void in
        })
        alert.addAction(dismissAction)
        self.present(alert, animated: true, completion: nil)
    }
    
//    func alert(title: String, message: String) {
//        let alertController: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        let ok:UIAlertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
//        alertController.addAction(ok)
//        self.present(alertController, animated: true, completion: nil)
//    }
    
}
