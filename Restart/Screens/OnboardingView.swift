//
//  OnboardingView.swift
//  Restart
//
//  Created by Chad Eymard on 2/18/24.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        VStack(spacing: 20, content: {
            Text("Onboarding")
                    .font(.largeTitle)
            Button(action: {
                isOnboardingViewActive = false
            }, label: {
                Text("Start")
            })
        }) //: VSTACK
    }
}

#Preview {
    OnboardingView()
}
