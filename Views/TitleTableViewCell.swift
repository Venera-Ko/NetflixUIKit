//
//  TitleTableViewCell.swift
//  NetflixUIKit
//
//  Created by V K on 20.11.2022.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    static let identifier = "TitleTableViewCell"
    
    private let playTitleButton: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "play.circle", withConfiguration: UIImage.SymbolConfiguration(pointSize: 30))
        button.setImage(image, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .white
        return button
    }()
    
    private let titleLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let titlesPosterUIImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titlesPosterUIImageView)
        contentView.addSubview(titleLable)
        contentView.addSubview(playTitleButton)
        
        applyConstraints()
    }
    
    private func applyConstraints() {
        let titlesPosterUIImageViewConstraints = [
            titlesPosterUIImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            titlesPosterUIImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            titlesPosterUIImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            titlesPosterUIImageView.widthAnchor.constraint(equalToConstant: 100)
        ]
        
        let titleLableConstraints = [
            titleLable.leadingAnchor.constraint(equalTo: titlesPosterUIImageView.trailingAnchor, constant: 20),
            titleLable.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ]
        
        let playTitleButtonConstraints = [
            playTitleButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            playTitleButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ]
        
        NSLayoutConstraint.activate(titlesPosterUIImageViewConstraints)
        NSLayoutConstraint.activate(titleLableConstraints)
        NSLayoutConstraint.activate(playTitleButtonConstraints)
    }
    
    
    public func configure(with model: TitleViewModel) {
        
//        guard let url = URL(string: model.posterURL) else { return }
        
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(model)") else { return }
        
        titlesPosterUIImageView.sd_setImage(with: url)
        titleLable.text = model.titleName
    }
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
    
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}
