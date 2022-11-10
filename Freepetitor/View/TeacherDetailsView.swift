//
//  TeacherDetailsView.swift
//  Freepetitor
//
//  Created by Rashid Gaitov on 10.11.2022.
//

import SwiftUI

struct TeacherDetailsView: View {
    var body: some View {
        
        Header()
        
    }
}

struct TeacherDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TeacherDetailsView()
    }
}

struct Header: View {
    var body: some View {
        VStack {
            HStack(spacing: 40) {
                Image("img1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .cornerRadius(40)
                
            }
            VStack {
                Text("Rashid Gaitov")
                    .font(.title2)
                Text("iOS Developer")
                    .font(.subheadline)
            }
            
            List {

                EducationView()
                
                ExperienceView()
                
                
            }
            Spacer()
        }
    }
}


struct EducationView: View {
    var body: some View {
        
        Section {
            VStack(alignment: .leading) {
                Text("Bogazici University")
                    .font(.headline)
                Text("Master's Degree in Software Engineering")
                    .font(.callout)
            }
            VStack(alignment: .leading) {
                Text("Nazarbayev University")
                    .font(.headline)
                Text("Bachelor's Degree in Civil Engineering")
                    .font(.callout)
            }

        } header: {
            Text("Education")
        }
        
    }
}


struct ExperienceView: View {
    var body: some View {
        
        Section {
            Text("Experience 1")
            Text("Experience 2")

        } header: {
            Text("Experience")
        }
        
    }
}
