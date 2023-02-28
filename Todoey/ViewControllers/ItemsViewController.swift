//
//  ItemsViewController.swift
//  Todoey
//
//  Created by Askar on 21.02.2023.
//

import UIKit

final class ItemsViewController: UIViewController {

    private lazy var itemsTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(SectionTableViewCell.self, forCellReuseIdentifier: SectionTableViewCell.IDENTIFIER)
        tableView.separatorStyle = .none
        tableView.layer.borderWidth = 2
        tableView.layer.borderColor = .init(red: 0, green: 0, blue: 0, alpha: 1)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemCyan

        setupViews()
        setupConstraints()
    }
}

//MARK: - Table view data source methods

extension ItemsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SectionTableViewCell.IDENTIFIER, for: indexPath) as! SectionTableViewCell
        cell.selectionStyle = .none
        let num = CGFloat.random(in: 120...255)
        cell.backgroundColor = UIColor(red: num/255, green: num/255, blue: num/255, alpha: 1)
        return cell
    }
}

//MARK: - Table view delegate methods

extension ItemsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height * 0.1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = ItemsViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }
}

//MARK: - Setup views and constraints

private extension ItemsViewController {
    
    func setupViews() {
        view.addSubview(itemsTableView)
    }
    
    func setupConstraints() {
        itemsTableView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
    }
}
