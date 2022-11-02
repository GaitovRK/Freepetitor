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
    
    var body: some View {
        NavigationView {
            
            VStack {
                VStack {
                TextField("Name", text: $nameTextFieldText)
                TextField("Surname", text: $surnameTextFieldText)
                TextField("University", text: $universityTextFieldText)
                TextField("Department", text: $departmentTextFieldText)
                TextField("Description", text: $descriptionTextFieldText)
                }
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                NavigationLink {
                    GalleryView()
                } label: {
                    Text("Register")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue.cornerRadius(15))
                        .foregroundColor(Color.white)
                        .font(.headline)
                }
                .padding()

                Spacer()
            }
            .navigationTitle("Login")
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
