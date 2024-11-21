//
//  ViewController.swift
//  calculatorApp
//
//  Created by t2023-m0149 on 11/21/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let label = UILabel()
    
    // 첫번째 줄 요소
    let plusButton = UIButton()
    let sevenButton = UIButton()
    let eightButton = UIButton()
    let nineButton = UIButton()
    
    // 두번째 줄 요소
    let fourButton = UIButton()
    let fiveButton = UIButton()
    let sixButton = UIButton()
    let minusButton = UIButton()
    
    // 세번째 줄 요소
    let oneButton = UIButton()
    let twoButton = UIButton()
    let threeButton = UIButton()
    let multiplyButton = UIButton()
    
    // 네번째 줄 요소
    let resetButton = UIButton()
    let zeroButton = UIButton()
    let equalButton = UIButton()
    let dividButton = UIButton()
    
    // StackView 요소
    let StackView = UIStackView()
    let StackView1 = UIStackView()
    let StackView2 = UIStackView()
    let StackView3 = UIStackView()
    
    // 수직 StackView
    let verticalStackView = UIStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = .black
        
        // 라벨 설정
        label.text = "12345"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 60)
        label.textAlignment = .right
        
        view.addSubview(label) // 라벨을 뷰에 추가하기
        
        label.snp.makeConstraints { // 라벨 레이아웃 설정
            $0.leading.trailing.equalToSuperview().inset(30)
            $0.top.equalToSuperview().offset(200)
            $0.height.equalTo(100)
        }
        // 버튼 설정
        let buttons = [
            sevenButton, eightButton, nineButton, plusButton,
            fourButton, fiveButton, sixButton, minusButton,
            oneButton, twoButton, threeButton, multiplyButton,
            resetButton, zeroButton, equalButton, dividButton
        ]
        
        let titles = ["7", "8", "9", "+", "4", "5", "6", "-", "1", "2", "3", "*", "AC", "0", "=", "/"]
        
        // 버튼 스타일 설정
        for (index, button) in buttons.enumerated() {
            button.setTitle(titles[index], for: .normal)
            button.titleLabel?.font = .boldSystemFont(ofSize: 30)
            button.backgroundColor = .darkGray // 이렇게 써도 되더라..
//            button.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
            button.layer.cornerRadius = 40
            button.snp.makeConstraints {
                $0.height.equalTo(80)
                $0.width.equalTo(80)
            }
        }
        // 수평 스택뷰 설정
        
        // 첫번째 줄
        StackView.axis = .horizontal
        StackView.spacing = 10
        StackView.distribution = .fillEqually
        [sevenButton, eightButton, nineButton, plusButton].forEach {
            StackView.addArrangedSubview($0)
        }
        verticalStackView.addArrangedSubview(StackView)
        
        // 두 번째 줄
        StackView1.axis = .horizontal
        StackView1.spacing = 10
        StackView1.distribution = .fillEqually
        [fourButton, fiveButton, sixButton, minusButton].forEach {
            StackView1.addArrangedSubview($0)
        }
        verticalStackView.addArrangedSubview(StackView1)
        
        // 세 번째 줄
        StackView2.axis = .horizontal
        StackView2.spacing = 10
        StackView2.distribution = .fillEqually
        [oneButton, twoButton, threeButton, multiplyButton].forEach {
            StackView2.addArrangedSubview($0)
        }
        verticalStackView.addArrangedSubview(StackView2)
        
        // 네 번째 줄
        StackView3.axis = .horizontal
        StackView3.spacing = 10
        StackView3.distribution = .fillEqually
        [resetButton, zeroButton, equalButton, dividButton].forEach {
            StackView3.addArrangedSubview($0)
        }
        verticalStackView.addArrangedSubview(StackView3)
        
        // 수직 스택뷰 설정
        verticalStackView.axis = .vertical
        verticalStackView.spacing = 10
        verticalStackView.distribution = .fillEqually
        view.addSubview(verticalStackView)
        
        // 수직 스택뷰 레이아웃 설정
        verticalStackView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(label.snp.bottom).offset(60)
            $0.width.equalTo(350)
        }
        plusButton.backgroundColor = .orange
        minusButton.backgroundColor = .orange
        multiplyButton.backgroundColor = .orange
        dividButton.backgroundColor = .orange
        resetButton.backgroundColor = .orange
        equalButton.backgroundColor = .orange
    }
    
    
}

