//
//  SwiftUIView.swift
//  Restart
//
//  Created by Chad Eymard on 2/18/24.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
        .animation(.easeOut(duration: 0.4), value: isOnboardingViewActive)
    }
}

#Preview {
    ContentView()
}
