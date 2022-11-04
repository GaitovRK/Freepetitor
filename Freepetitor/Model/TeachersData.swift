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
    var university: University
    var description: String
    var image: String = "blank"
}

struct TeachersData {
    
    private var teachers = [TeacherInfo(name: "Rashid", surname: "Gaitov", university: .nazarbayev, description: "Physics teacher", image: "img1"),
                            TeacherInfo(name: "Nazife", surname: "Kirca", university: .bogazici, description: "English and math teacher", image: "nazo"),
                            TeacherInfo(name: "Chingiz", surname: "Aitmatov", university: .nazarbayev, description: "Literature teacher"),
                            TeacherInfo(name: "Leonardo", surname: "Da Vinci", university: .harvard, description: "Engineering teacher"),
                            TeacherInfo(name: "Ahmet", surname: "Mehmet", university: .harvard, description: "Engineering teacher"),
                            TeacherInfo(name: "Burak", surname: "CZN", university: .bogazici, description: "Cooking teacher"),
                            TeacherInfo(name: "Kazbek", surname: "Sakenov", university: .nazarbayev, description: "Sport teacher"),
                            TeacherInfo(name: "Amadeus", surname: "Mozart", university: .harvard, description: "Music teacher"),
                            TeacherInfo(name: "Che", surname: "Gevara", university: .harvard, description: "Politics teacher"),
                            TeacherInfo(name: "Kasym-Zhomart", surname: "Tokayev", university: .nazarbayev, description: "Politics teacher"),
                            TeacherInfo(name: "Mikkey", surname: "Mouse", university: .harvard, description: "Animation teacher"),
                            TeacherInfo(name: "Steve", surname: "Jobs", university: .stanford, description: "iOS Teacher")
     ]
    
    func getTeachers() -> [TeacherInfo] {
        return teachers
    }
}




enum University: String, CaseIterable {
    case bogazici = "Boğaziçi University"
    case nazarbayev = "Nazarbayev University"
    case harvard = "Harvard College"
    case stanford = "Stanford University"
}

