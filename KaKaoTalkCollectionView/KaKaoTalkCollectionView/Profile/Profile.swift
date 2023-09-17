//
//  Profile.swift
//  KaKaoTalkCollectionView
//
//  Created by woojin Choi on 2023/09/17.
//

import Foundation

struct Profile {
    let name: String
    let stateMessage: String?
    let profileMusic: String?
}

extension Profile {
    static let list: [Profile] = [
        Profile(name: "오승미", stateMessage: nil, profileMusic: nil),
        Profile(name: "정여진", stateMessage: "경찰대가즈아", profileMusic: nil),
        Profile(name: "진채민", stateMessage: "수능대박", profileMusic: "Speedometer - Post Malon"),
        Profile(name: "최정원", stateMessage: nil, profileMusic: "Hate You - 백예린")
    ]
}
