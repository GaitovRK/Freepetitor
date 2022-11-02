//
//  FilterView.swift
//  Freepetitor
//
//  Created by Rashid Gaitov on 01.11.2022.
//

import SwiftUI

struct FilterView: View {
    
    @State var selectedCountry = Country.turkey
    @State var selectedLanguage = Language.turkish
    @State var languages = Language.allCases
    @State var countries = Country.allCases
    
    var body: some View {
        NavigationView {
            List {
                Picker("Preferred Languages", selection: $selectedLanguage) {
                    ForEach(languages, id: \.self) { language in
                        Text(language.rawValue)
                    }
                    
                    Button {
                    } label: {
                        Text("Add Language...")
                    }
                    
                }
                .pickerStyle(.inline)
                
                Picker("Region", selection: $selectedCountry) {
                    ForEach(countries, id: \.self) { country in
                        Text(country.rawValue)
                    }
                }
                .pickerStyle(.automatic)
                
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
