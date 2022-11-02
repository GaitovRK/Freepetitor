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
    @State var savedText: [String] = []
    
    
    var body: some View {
        NavigationView {
            
            VStack {
                VStack {
                TextField("Name", text: $nameTextFieldText)
                TextField("Surname", text: $surnameTextFieldText)
                }
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                NavigationLink {
                    GalleryView()
                } label: {
                    Text("LOGIN")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue.cornerRadius(15))
                        .foregroundColor(Color.white)
                        .font(.headline)
                }
                .padding()

                
//                Button(action: {
//                    saveText(text: nameTextFieldText)
//                    saveText(text: surnameTextFieldText)
//                    nameTextFieldText = ""
//                    surnameTextFieldText = ""
//                    GalleryView()
//                }, label: {
//                    Text("LOGIN")
//                        .frame(maxWidth: .infinity)
//                        .padding()
//                        .background(Color.blue.cornerRadius(15))
//                        .foregroundColor(Color.white)
//                        .font(.headline)
//                })
//                .padding()
                
                Spacer()
            }
            .navigationTitle("Login")

        }

    }
    
    func saveText(text: String) {
        savedText.append(text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
