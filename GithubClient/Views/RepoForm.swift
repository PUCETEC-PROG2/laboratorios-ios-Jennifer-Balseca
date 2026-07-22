//
//  RepoForm.swift
//  GithubClient
//
//  Created by Jennifer Balseca invitado on 8/7/26.
//

import SwiftUI

struct RepoForm: View {
    @StateObject private var viewController = RepoFormViewController()
    @Binding var selectedTab: Int
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                
                if viewController.isLoading{
                    ProgressView("Creando repositorio...")
                } else {
                    
                    Spacer()
                    
                    TextField(
                        "",
                        text: $viewController.repoName,
                        prompt: Text("Nombre del Repositorio")
                            .foregroundStyle(.black.opacity(0.6))
                    )
                    .textFieldStyle(.roundedBorder)
                    .padding(.vertical)
                    
                    TextField(
                        "",
                        text: $viewController.repoDescription,
                        prompt: Text("Descripción del Repositorio")
                            .foregroundStyle(.black.opacity(0.6)),
                        axis: .vertical,
                        
                    )
                    .textFieldStyle(.roundedBorder)
                    .lineLimit(4...10)
                    .padding(.vertical)
                    
                    if let errorMsg = viewController.errorMsg {
                        Spacer()
                        Text(errorMsg)
                            .foregroundStyle(.red)
                            .padding()
                    }
                    
                    
                    Spacer()
                    
                    Button(action: {
                        Task {
                            await viewController.createRepository()
                            if viewController.errorMsg == nil {
                                selectedTab = 0
                            }
                        }
                    }){
                        Label("Guardar Repo", systemImage: "square.and.arrow.down")
                            .padding(.all, 7)
                            .frame(maxWidth:.infinity)
                    }
                    .buttonStyle(.borderedProminent)
                    //.buttonBorderShape(.roundedRectangle(radius: 16))
                }
            }
            .padding()
            .navigationTitle("Formulario de Repositorio")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RepoForm(selectedTab: .constant(1))
}
