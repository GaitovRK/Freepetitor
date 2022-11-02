//
//  GalleryView.swift
//  Freepetitor
//
//  Created by Rashid Gaitov on 31.10.2022.
//

import SwiftUI

struct GalleryView: View {
//    var teachers: [TeacherInfo]
    
    @State private var showFilterView = false
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                List {
                    Button {
                        self.showFilterView.toggle()
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $showFilterView) {
                        FilterView()
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
        GalleryView()
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
