//
//  ViewController4.swift
//  BookmarkUIKit
//
//  Created by Arman on 1/18/22.
//

import UIKit
import SnapKit

class ViewController4: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var names: [String] = ["Google", "nFactorial School", "NY Times", "Bloomberg"]
    private var icon: [String] = ["Group", "Group", "Group", "Group"]

    private let tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 238/255, alpha: 1)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? UITableViewCell else {return TableViewCell()}
        
//        cell.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 238/255, alpha: 1)

        cell.configure (name: names[indexPath.row], icon: icon[indexPath.row])
//        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Hello")
    }

}
