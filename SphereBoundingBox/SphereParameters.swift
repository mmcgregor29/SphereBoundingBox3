//
//  SphereParameters.swift
//  SphereBoundingBox
//
//  Created by IIT Phys 440 on 1/13/23.
//

import Foundation
import SwiftUI

struct SphereParameters {
    var sphereRadius = "0.0"
    var sphereVolume = "0.0"
    var sphereSurfaceArea = "0.0"
    
    
    
    ///Calculate the volume and surface area of a sphere given a radius
    ///Volume = 4/3*pi*r^3
    ///Surface Area = 4*pi*r^2
    
    mutating func CalculateSphere() {
        let Radius = Double(sphereRadius) ?? 0
        let sphereV = (4/3) * Double.pi * pow(Radius, 3)
        let sphereSA = 4 * Double.pi * pow(Radius, 2)
        
        sphereVolume = String(format: "%.2f", sphereV)
        sphereSurfaceArea = String(format: "%.2f", sphereSA)

    }
    
    
}
