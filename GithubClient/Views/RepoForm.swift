//
//  RepoForm.swift
//  GithubClient
//
//  Created by Usuario invitado on 8/7/26.
//

import SwiftUI

struct RepoForm: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Formulario de repositorios")
            }
            .navigationTitle("Formulario")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RepoForm()
}
