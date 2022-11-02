//
//  SettingsData.swift
//  Freepetitor
//
//  Created by Rashid Gaitov on 01.11.2022.
//

import Foundation

struct Settings {
    var countryOfResidence: Country
    var countryOfSearch: Country
    var studyLanguage: Language
    var speakingLanguage: Language
}

enum Country: String, CaseIterable {
    case turkey = "Turkey",
         kazakhstan = "Kazakhstan",
         poland = "Poland"
}

enum Language: String, CaseIterable {
    case turkish = "Türkçe",
         kazakh = "Казакша",
         polish = "Польски",
         english = "English"
}

var userSettings = Settings(
    countryOfResidence: Country.turkey,
    countryOfSearch: Country.kazakhstan,
    studyLanguage: Language.turkish,
    speakingLanguage: Language.english)

