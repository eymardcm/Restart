//
//  CircleGroupView.swift
//  Restart
//
//  Created by Chad Eymard on 2/19/24.
//

import SwiftUI

struct CircleGroupView: View {
    
    // MARK: - PROPERTIES
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(
                    ShapeColor.opacity(ShapeOpacity),
                lineWidth: 80)
                .frame(width: 260, height: 260,
                       alignment: .center)
        } //: ZSTACK
    }
}

#Preview {
    ZStack {
        Color(.colorBlue)
            .ignoresSafeArea(.all, edges: .all)
        CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
    }
}
