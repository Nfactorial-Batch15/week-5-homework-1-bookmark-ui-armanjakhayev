//
//  ViewController2.swift
//  BookmarkUIKit
//
//  Created by Arman on 1/18/22.
//

import UIKit
import SnapKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        inizialize()
        // Do any additional setup after loading the view.
    }

    private func inizialize(){
        view.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 238/255, alpha: 1)
        
        lazy var label = UILabel()
        label.text = "Bookmark App"
        label.font = UIFont(name: "SFProText-Semibold", size: 17)
        label.font = .systemFont(ofSize: 17, weight: .semibold)
        label.textColor = .black
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(130)
            make.top.equalToSuperview().inset(56)
        }
        
        lazy var labelText = UILabel()
        labelText.text = "Save your first\n bookmark"
        labelText.numberOfLines = 0
        labelText.font = UIFont(name: "SFProText-Semibold", size: 36)
        labelText.font = .systemFont(ofSize: 36, weight: .bold)
        labelText.textColor = .black
        labelText.textAlignment = .center
        view.addSubview(labelText)
        labelText.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(16)
            make.centerY.equalToSuperview()
        }
        
        let button = UIButton()
        button.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        button.setTitle("Add bookmark", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 18, left: 24, bottom: 18, right: 24)
        button.layer.cornerRadius = 16
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.left.right.equalToSuperview().inset(16)
            make.height.equalTo(58)
            make.bottom.equalToSuperview().inset(50)
        }
        
    }
}
