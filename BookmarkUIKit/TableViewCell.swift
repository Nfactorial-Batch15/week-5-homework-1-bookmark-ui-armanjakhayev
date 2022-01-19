//
//  TableViewCell.swift
//  BookmarkUIKit
//
//  Created by Arman on 1/18/22.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {
    
    private let customView: UIView = {
        let view = UIView()
//        view.backgroundColor = .red
        view.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 238/255, alpha: 1)
        return view
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let iconLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }

    private func setUI() {
        self.addSubview(customView)
        
        customView.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(19)
            make.top.equalToSuperview().inset(39)
            make.bottom.equalToSuperview().inset(11)
            make.height.equalTo(74)
        }
        
        customView.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(24)
        }
        
        customView.addSubview(iconLabel)
        iconLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(24)
        }
        
    }
    
    func configure(name: String, icon: String) {
        nameLabel.text = name
        iconLabel.text = icon
    }
}
