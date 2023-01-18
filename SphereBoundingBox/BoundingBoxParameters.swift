//
//  BoundingBoxParameters.swift
//  SphereBoundingBox
//
//  Created by IIT Phys 440 on 1/13/23.
//

import Foundation
import SwiftUI

struct BoundingBoxParameters {
    @State var sphereRadius: String = ""
    @State var boundingBoxVolume: String = ""
    @State var boundingBoxSurfaceArea: String = ""
    
    func CalculateBoundingBox() {
        let Radius = Double(sphereRadius) ?? 0
        let boundingBoxV = 2 * pow(Radius, 3)
        let boundingBoxSA = 12 * pow(Radius, 2)
        
        boundingBoxVolume = String(format: "%.2f", boundingBoxV)
        boundingBoxSurfaceArea = String(format: "%.2f", boundingBoxSA)
    }
}
