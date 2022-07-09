//
//  BoardViewController.swift
//  LEDBoard
//
//  Created by CHOI on 2022/07/06.
//

import UIKit

class BoardViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var editView: UIView!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet var buttonList: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designButton(sendButton, buttonTitle: "전송", highlightedTitle: "보내!", bgColor: .cyan)
        designButton(textColorButton, buttonTitle: "색상", highlightedTitle: "바꿔!", bgColor: .yellow)
        designTextField()
        
        self.userTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

    func studyOutletCollection() {
        // 1. 반복문
        let buttonArray: [UIButton] = [sendButton, textColorButton]
        
        for item in buttonArray {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
        
        // 2. 아웃렛
        for item in buttonList {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
    }

    // textField 디자인 바꾸기
    func designTextField() {
        userTextField.placeholder = "내용을 작성해주세요"
        userTextField.text = "안녕하세요"
        userTextField.keyboardType = .emailAddress
        userTextField.font = .systemFont(ofSize: 14)
        
    }
    
    // buttonOutletVariableName: 외부 매개변수, Argument Label -> 생략 가능 (_ : 와일드 카드 식별자)
    // buttonName: 내부 매개변수, Parameter Name
    func designButton(_ buttonName: UIButton, buttonTitle: String, highlightedTitle: String, bgColor: UIColor) {
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle(highlightedTitle, for: .highlighted)
        buttonName.backgroundColor = bgColor
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.layer.borderWidth = 3
        buttonName.setTitleColor(.red, for: .normal)
        buttonName.setTitleColor(.blue, for: .highlighted)
    }
    

    @IBAction func sendButtonClicked(_ sender: Any) {
        resultLabel.text = userTextField.text
    }
    
    @IBAction func tapGestureClicked(_ sender: Any) {
        view.endEditing(true)
        
        // View isHidden toggle 구현
        if editView.isHidden == false {
            editView.isHidden = true
        } else {
            editView.isHidden = false
        }
    }

    @IBAction func userTextFieldAction(_ sender: Any) {
    }
    
    // 연결 관계 다 끊어보고 Any 타입으로 연결, 기능이 같은 것 합치기
    
}
