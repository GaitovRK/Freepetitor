//
//  ContentView.swift
//  Freepetitor
//
//  Created by Rashid Gaitov on 30.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State var nameTextFieldText: String = ""
    @State var surnameTextFieldText: String = ""
    @State var profilePhoto: Image = Image("blank")
    @State var universityTextFieldText: String = ""
    @State var departmentTextFieldText: String = ""
    @State var descriptionTextFieldText: String = ""
    @State var selectedUniversity: University = University.bogazici
    var universities = University.allCases
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    TextField("Name", text: $nameTextFieldText)
                    TextField("Surname", text: $surnameTextFieldText)
                    TextField("Department", text: $departmentTextFieldText)
                    TextField("Description", text: $descriptionTextFieldText)
                    
                    Picker("University", selection: $selectedUniversity) {
                        ForEach(universities, id: \.self) { university in
                            Text(university.rawValue)
                        }
                    }
                    .pickerStyle(.automatic)
                }
                
                NavigationLink {
                    GalleryView()
                } label: {
                    Text("Sign Up")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue.cornerRadius(15))
                        .foregroundColor(Color.white)
                        .font(.headline)
                }
                .padding()
                
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
