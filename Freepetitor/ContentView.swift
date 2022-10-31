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
    @State var selectedCountry = " "
    @State var countries = [
        "Kazakhstan",
        "Poland",
        "Turkey",
        "Japan"]
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                TextField("Name", text: $nameTextFieldText)
                TextField("Surname", text: $surnameTextFieldText)
                }
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    saveText(text: nameTextFieldText)
                    saveText(text: surnameTextFieldText)
                    nameTextFieldText = ""
                    surnameTextFieldText = ""

                }, label: {
                    Text("LOGIN")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue.cornerRadius(15))
                        .foregroundColor(Color.white)
                        .font(.headline)
                })
                .padding()
                
                Text("Selected country: \(selectedCountry)")
                Picker(selection: $selectedCountry) {
                    Text("Choose country")
                    ForEach(countries, id: \.self) { country in
                        Text(country)
                    }
                } label: {
                    
                }
                .pickerStyle(.inline)

                
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
