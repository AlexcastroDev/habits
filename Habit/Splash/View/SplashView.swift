//
//  SplashView.swift
//  Habit
//
//  Created by Alexandro castro on 06/11/2021.
//

import SwiftUI

struct SplashView: View {
    
    @State var screenState: SplashUIState = .loading
    
    var body: some View {
        switch screenState {
        case .loading:
            loadingView()
        case .goToSignInScreen:
            Text("Loading 1")
        case .goToHomeScreen:
            Text("Loading 2")
        case .error(let msg):
            Text("Loading 4 \(msg)")
        }
    }
}

// Exemplos de componentes

// Shared Component
struct LoadingView: View {
    var body: some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .padding(20)
                .background(Color.white)
        }
    }
}

// Variable component
extension SplashView {
    var loading: some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .padding(20)
                .background(Color.white)
        }
    }
}

// Function Component
extension SplashView {
    func loadingView() -> some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .padding(20)
                .background(Color.white)
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
