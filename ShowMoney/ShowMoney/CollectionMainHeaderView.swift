//
//  CollectionHeaderView.swift
//  ShowMoney
//
//  Created by 이민재 on 4/14/24.
//

import UIKit

class CollectionMainHeaderView: UICollectionReusableView {
    static let identifier = "CollectionMainHeaderView"
    private var mainMoneyLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = .boldSystemFont(ofSize: 20)
        lb.textAlignment = .center
        return lb
    }()
    
    private func addView() {
        addSubview(mainMoneyLabel)
    }
    
    private func configureConstraints() {
        mainMoneyLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        mainMoneyLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.backgroundColor = .systemPink
        addView()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configure(model: MainSectionModel) {
        self.mainMoneyLabel.text = model.moneyGoal
    }
}
