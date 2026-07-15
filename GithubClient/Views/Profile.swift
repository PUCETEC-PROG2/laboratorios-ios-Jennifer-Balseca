//
//  Profile.swift
//  GithubClient
//
//  Created by Jennifer Balseca invitado on 8/7/26.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationStack{
            VStack {
                Text("Jennifer Balseca")
                    .font(.title)
                Image(uiImage: .githublogo)
                    .resizable()
                    .scaledToFit()
                Text("jenniferbalseca")
                    .font(.headline)
                    .padding(.vertical)
                Text("Ejemplo de BIO que va en github. Este es un ejemplo de descripción que va abajo del perfil de cada usuario. ")
                    .font(.caption)
            }
            .padding()
            .navigationTitle("Perfil de usuario")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    Profile()
}
