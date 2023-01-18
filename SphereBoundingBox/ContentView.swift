//
//  ContentView.swift
//  SphereBoundingBox
//
//  Created by IIT Phys 440 on 1/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var sphereRadius: String = ""
    @State private var sphereVolume: String = ""
    @State private var sphereSurfaceArea: String = ""
    @State private var boundingBoxVolume: String = ""
    @State private var boundingBoxSurfaceArea: String = ""

    var body: some View {
        VStack {
            TextField("Enter radius of sphere", text: $sphereRadius)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()

                    Button(action: calculateVolumeandSurfaceAreaofSphere) {
                        Text("Calculate")
                    }

                    HStack {
                        Text("Sphere Volume:")
                        Text(sphereVolume)
                    }
                    .padding()

                    HStack {
                        Text("Sphere Surface Area:")
                        Text(sphereSurfaceArea)
                    }
                    .padding()

                    HStack {
                        Text("Bounding Box Volume:")
                        Text(boundingBoxVolume)
                    }
                    .padding()

                    HStack {
                        Text("Bounding Box Surface Area:")
                        Text(boundingBoxSurfaceArea)
                    }
                    .padding()
                }
            }
            
            func calculateVolumeandSurfaceAreaofSphere(){
                var sphereParameters = SphereParameters()
                sphereParameters.sphereRadius = sphereRadius
                
                sphereParameters.CalculateSphere()

                sphereVolume = sphereParameters.sphereVolume
                sphereSurfaceArea = sphereParameters.sphereSurfaceArea
                
                

                var boundingBoxParameters = BoundingBoxParameters()
                boundingBoxParameters.sphereRadius = sphereRadius
                
                boundingBoxParameters.CalculateBoundingBox()
                boundingBoxVolume = boundingBoxParameters.boundingBoxVolume
                boundingBoxSurfaceArea = boundingBoxParameters.boundingBoxSurfaceArea

                



            }
        }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
