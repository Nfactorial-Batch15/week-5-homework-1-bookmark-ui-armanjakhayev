//
//  ViewController.swift
//  BookmarkUIKit
//
//  Created by Arman on 1/18/22.
//

import UIKit
import SnapKit


class ViewController: UIViewController {
//    lazy var label: UILabel = {
//        let label = UILabel()
//        label.font = .systemFont(ofSize: 36, weight: .bold)
//        label.text = "Save all interesting links in one app"
//        label.numberOfLines = 0
//        label.frame = CGRect(x: 0, y: 0, width: 358, height: 92)
//        label.textColor = .white
//        return label
//    }()
//
//    lazy var button: UIButton = {
//        let button = UIButton()
//        button.setTitle("Let’s start collecting", for: .normal)
//        button.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
//        button.frame = CGRect(x: 0, y: 0, width: 358, height: 58)
//        button.setTitleColor(.black, for: .normal)
//        button.contentEdgeInsets = UIEdgeInsets(top: 18, left: 24, bottom: 18, right: 24)
//        button.layer.cornerRadius = 16
//        return button
//    }()
//
//    lazy var stackView: UIStackView = {
//        UIStackView()
//    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        inizialize()
//        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
//        backgroundImage.image = UIImage(named: "BG")
//        backgroundImage.contentMode = .scaleAspectFill
//        view.insertSubview(backgroundImage, at: 0)
        
//        [view, label, button, stackView].forEach {
//            $0?.translatesAutoresizingMaskIntoConstraints = false
//        }
//
//        stackView.addArrangedSubview(label)
//        stackView.addArrangedSubview(button)
//        stackView.axis = .vertical
//        stackView.spacing = 16
//        stackView.alignment = .center
//        view.addSubview(stackView)
//
//        NSLayoutConstraint.activate([
//            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//        ])
    }
    
    private func inizialize(){
        //        view.backgroundColor = .black
        lazy var backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "BG")
        backgroundImage.contentMode = .scaleAspectFill
        view.insertSubview(backgroundImage, at: 0)
        backgroundImage.snp.makeConstraints { make in
            make.height.equalTo(614)
            make.bottom.equalToSuperview().inset(230)
        }
        
        lazy var label = UILabel()
        label.text = "Save all interesting links in one app"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 36, weight: .bold)
        label.textColor = .white
        view.addSubview(label)
        label.backgroundColor = .black
        label.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(620)
        }
        
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        button.setTitle("Let’s start collecting", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 18, left: 24, bottom: 18, right: 24)
        button.layer.cornerRadius = 16
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.left.right.equalToSuperview().inset(16)
//            make.width.equalTo(358)
            make.height.equalTo(58)
            make.bottom.equalToSuperview().inset(50)
        }
        
    }

}

