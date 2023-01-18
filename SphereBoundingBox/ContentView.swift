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

                    Button(action: calculate) {
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

            func calculate() {
                let Radius = Double(sphereRadius) ?? 0
                let sphereV = (4/3) * Double.pi * pow(Radius, 3)
                let sphereSA = 4 * Double.pi * pow(Radius, 2)
                let boundingBoxV = 2 * pow(Radius, 3)
                let boundingBoxSA = 12 * pow(Radius, 2)

                sphereVolume = String(format: "%.2f", sphereV)
                sphereSurfaceArea = String(format: "%.2f", sphereSA)
                boundingBoxVolume = String(format: "%.2f", boundingBoxV)
                boundingBoxSurfaceArea = String(format: "%.2f", boundingBoxSA)
            }
        }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
