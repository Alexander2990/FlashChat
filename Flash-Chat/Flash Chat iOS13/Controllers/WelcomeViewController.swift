//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
//      Скрываем верхнюю панель навигации
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
//      Показываем верхнюю панель навигации, кроме главного экрана
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Способ анимации через CocoaPods: 'CLTypingLabel'
        
        titleLabel.text = K.appName
        
//        Способ анимации lable, без использовани CocoaPods
        
//        titleLabel.text = ""
//        var charIndex = 0.0
//        let tittleText = "⚡️FlashChat"
//        for letter in tittleText {
//            print("-")
//            print(charIndex)
//            print(letter)
//            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { timer in
//                self.titleLabel.text?.append(letter)
//            }
//            charIndex += 1
//        }
    }
    
    
}
