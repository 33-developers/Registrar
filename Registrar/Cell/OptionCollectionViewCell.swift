//
//  OptionCollectionViewCell.swift
//  Registrar
//
//  Created by Айдар Оспанов on 02.02.2023.
//

import UIKit

class OptionCollectionViewCell: UICollectionViewCell {
    
    let carImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupViews()
        setConstraints()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.addSubview(carImageView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            carImageView.heightAnchor.constraint(equalToConstant: 150),
            carImageView.widthAnchor.constraint(equalToConstant: 150),
            
            carImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            carImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            carImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            carImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }

}
