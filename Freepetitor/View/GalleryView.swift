//
//  GalleryView.swift
//  Freepetitor
//
//  Created by Rashid Gaitov on 31.10.2022.
//

import SwiftUI

struct TeacherInfo: Hashable {
    var name: String
    var surname: String
    var description: String
    var image: String
}

struct GalleryView: View {
    var teachers: [TeacherInfo]
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                List {
                    Button {
                        FilterView()
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                    
                    ForEach(teachers, id: \.self) { teacher in
                        TeacherView(teacherName: teacher.name, teacherSurname: teacher.surname, teacherDescription: teacher.description, teacherImage: teacher.image)
                    }
                }
            }
            .navigationTitle("Teachers")
        }
        
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView(teachers: [
                                TeacherInfo(name: "Rashid", surname: "Gaitov", description: "Physics teacher", image: "img1"),
                                TeacherInfo(name: "Nazife", surname: "Kirca", description: "English and math teacher", image: "nazo"),
                                TeacherInfo(name: "Chingiz", surname: "Aitmatov", description: "Literature teacher", image: " "),
                                TeacherInfo(name: "Leonardo", surname: "Da Vinci", description: "Engineering teacher", image: " ")
        ])
    }
}

struct TeacherView: View {
    var teacherName = "No name"
    var teacherSurname = " "
    var teacherDescription = "No description"
    var teacherImage = "img1"
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(teacherName + " " + teacherSurname)
                    .fontWeight(.bold)
                Text(teacherDescription)
                    .fontWeight(.light)
            }
            Spacer()
            Image(teacherImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 60)
                .cornerRadius(8)
        }
    }
    
}
