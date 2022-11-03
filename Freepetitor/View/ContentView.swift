//
//  ContentView.swift
//  Freepetitor
//
//  Created by Rashid Gaitov on 30.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var nameTextFieldText: String = ""
    @State private var surnameTextFieldText: String = ""
    @State private var profilePhoto: Image = Image("blank")
    @State private var descriptionTextFieldText: String = ""
    @State private var selectedUniversity: University = University.bogazici
    @State private var birthDate = Date()
    private var universities = University.allCases
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("Name", text: $nameTextFieldText)
                        TextField("Surname", text: $surnameTextFieldText)
                        TextField("Write about yourself", text: $descriptionTextFieldText)
                    }
                    
                    Section {
                        DatePicker("Birthdate", selection: $birthDate, displayedComponents: .date)
                        
                        Picker("University", selection: $selectedUniversity) {
                            ForEach(universities, id: \.self) { university in
                                Text(university.rawValue)
                            }
                        }
                        .pickerStyle(.automatic)
                    }
                    
                    NavigationLink {
//                        teachers.append(TeacherInfo(name: nameTextFieldText, surname: surnameTextFieldText, university: selectedUniversity, description: descriptionTextFieldText))
                        GalleryView()
                    } label: {
                        Text("Sign Up")
//                            .foregroundColor(.blue)
                    }
                    
                }
                .accentColor(.blue)
            }
            .navigationTitle("Sign Up")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
