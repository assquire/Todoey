//
//  SectionTableViewCell.swift
//  Todoey
//
//  Created by Askar on 21.02.2023.
//

import UIKit

final class SectionTableViewCell: UITableViewCell {
    
    static let IDENTIFIER = "SectionTableViewCell"
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Section"
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with name: String) {
        nameLabel.text = name
    }
}

//MARK: - Setup views and constraints

private extension SectionTableViewCell {
    
    func setupViews() {
        contentView.addSubview(nameLabel)
    }
    
    func setupConstraints() {
        nameLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.centerY.equalToSuperview()
        }
    }
}
