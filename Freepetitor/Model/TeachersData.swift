//
//  File.swift
//  Freepetitor
//
//  Created by Rashid Gaitov on 01.11.2022.
//

import Foundation

struct TeacherInfo: Hashable {
    var name: String
    var surname: String
    var description: String
    var image: String
}

var teachers = [TeacherInfo(name: "Rashid", surname: "Gaitov", description: "Physics teacher", image: "img1"),
TeacherInfo(name: "Nazife", surname: "Kirca", description: "English and math teacher", image: "nazo"),
TeacherInfo(name: "Chingiz", surname: "Aitmatov", description: "Literature teacher", image: " "),
TeacherInfo(name: "Leonardo", surname: "Da Vinci", description: "Engineering teacher", image: " ")]
