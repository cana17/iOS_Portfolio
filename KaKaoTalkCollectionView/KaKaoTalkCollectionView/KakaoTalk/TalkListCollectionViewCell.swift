//
//  KakaoTalkCollectionViewCell.swift
//  KaKaoTalkCollectionView
//
//  Created by woojin Choi on 2023/09/09.
//

import UIKit

class TalkListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var talkLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImage.layer.cornerRadius = 20
    }
    
    
    func configure(_ talk: Talk) {
        profileImage.image = UIImage(named: talk.name)
        nameLabel.text = talk.name
        talkLabel.text = talk.talk
        dateLabel.text = formattedDateString(dateString: talk.date)
    }
    
    func formattedDateString(dateString: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        
        if let date = formatter.date(from: dateString) {
            formatter.dateFormat = "M월 d일"
            return formatter.string(from: date)
        } else {
            return ""
        }
    }
}
