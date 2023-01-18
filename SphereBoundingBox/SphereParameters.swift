//
//  SphereParameters.swift
//  SphereBoundingBox
//
//  Created by IIT Phys 440 on 1/13/23.
//

import Foundation
import SwiftUI

struct SphereParameters {
    @State var sphereRadius: String = ""
    @State var sphereVolume: String = ""
    @State var sphereSurfaceArea: String = ""
    
    func CalculateSphere() {
        let Radius = Double(sphereRadius) ?? 0
        let sphereV = (4/3) * Double.pi * pow(Radius, 3)
        let sphereSA = 4 * Double.pi * pow(Radius, 2)
        
        sphereVolume = String(format: "%.2f", sphereV)
        sphereSurfaceArea = String(format: "%.2f", sphereSA)
    }
    
    
}
