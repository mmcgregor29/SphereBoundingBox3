//
//  BoundingBoxParameters.swift
//  SphereBoundingBox
//
//  Created by IIT Phys 440 on 1/13/23.
//

import Foundation
import SwiftUI

struct BoundingBoxParameters {
    var sphereRadius = "0.0"
    var boundingBoxVolume = "0.0"
    var boundingBoxSurfaceArea = "0.0"
    
    ///Calculate the volume and surface area of a bounding box around a sphere given a radius. Since the radius of the sphere is only half of the side length of the box, each equation must multiply the radius by 2.
    ///Cube Volume = (2*r)^3
    ///Cube Surface Area = 6*(2*r)^2
    
    mutating func CalculateBoundingBox() {
        let Radius = Double(sphereRadius) ?? 0
        let boundingBoxV = pow(2*Radius, 3)
        let boundingBoxSA = 6 * pow(2*Radius, 2)
        
        boundingBoxVolume = String(format: "%.2f", boundingBoxV)
        boundingBoxSurfaceArea = String(format: "%.2f", boundingBoxSA)
    }
}
