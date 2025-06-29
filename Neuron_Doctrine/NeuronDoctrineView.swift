//
//MIT License
//
//Copyright © 2025 Cong Le
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.
//
//
//  NeuronDoctrineView.swift
//  Neuron_Doctrine
//
//  Created by Cong Le on 6/29/25.
//


//
//  NeuronDoctrineView.swift
//  NeuroScienceExhibits
//
//  Created by AI Assistant
//  Copyright © 2023 Neural Insights. All rights reserved.
//
//  This SwiftUI view provides a detailed visual and textual explanation of the
//  historical debate between the Reticular Theory and the Neuron Doctrine,
//  which is a foundational concept in modern neuroscience.
//

import SwiftUI

// MARK: - Main View: Neuron Doctrine History
/// A SwiftUI view that presents the historical context and principles of the Neuron Doctrine.
///
/// This view serves as a digital exhibit, explaining the pivotal scientific debate
/// between Camillo Golgi's Reticular Theory and Santiago Ramón y Cajal's Neuron Doctrine.
/// It visualizes the core ideas of each theory and lists the foundational principles
/// that emerged from this debate.
struct NeuronDoctrineView: View {

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                // MARK: - Header
                VStack(alignment: .leading, spacing: 8) {
                    Text("4. A Historical Perspective")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.secondary)
                    
                    Text("The Neuron Doctrine")
                        .font(.system(size: 34, weight: .bold, design: .rounded))
                        .foregroundColor(.primary)
                    
                    Text("The foundational debate that shaped our understanding of the nervous system.")
                        .font(.body)
                        .foregroundStyle(.secondary)
                }
                .padding(.horizontal)

                Divider()

                // MARK: - The Great Debate Section
                VStack(alignment: .leading, spacing: 16) {
                    Text("The Great Debate")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal)

                    // The two competing theories are displayed side-by-side for easy comparison.
                    // On smaller devices, this will adapt gracefully.
                    HStack(alignment: .top, spacing: 16) {
                        TheoryCardView(
                            theoryName: "Reticular Theory",
                            proponent: "Camillo Golgi",
                            description: "The nervous system is a single, continuous, interconnected network or 'reticulum.' All nerve cells are physically fused together.",
                            analogy: "A seamless road network.",
                            iconName: "circle.grid.cross",
                            accentColor: .red
                        )
                        
                        TheoryCardView(
                            theoryName: "Neuron Doctrine",
                            proponent: "Santiago Ramón y Cajal",
                            description: "The nervous system is composed of discrete, individual cells called neurons. These are the fundamental, separate units.",
                            analogy: "Individual roads connected by intersections.",
                            iconName: "point.3.connected.trianglepath.dotted",
                            accentColor: .blue
                        )
                    }
                    .padding(.horizontal)
                }

                // MARK: - The Verdict
                VStack(alignment: .leading, spacing: 10) {
                    Text("The Verdict")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text("Through meticulous work using a silver staining method (ironically, developed by Golgi), Santiago Ramón y Cajal provided overwhelming evidence for his theory. The **Neuron Doctrine** prevailed and became the cornerstone of modern neuroscience.")
                        .font(.body)
                        .lineSpacing(5)
                }
                .padding()
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(12)
                .padding(.horizontal)

                Divider()

                // MARK: - Core Principles Section
                VStack(alignment: .leading, spacing: 16) {
                    Text("Core Principles of the Neuron Doctrine")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    DoctrinePrincipleView(
                        iconName: "brain.head.profile",
                        title: "The Neuron is the Fundamental Unit",
                        description: "Neurons are the distinct structural, metabolic, and functional units of the nervous system."
                    )
                    
                    DoctrinePrincipleView(
                        iconName: "point.topleft.down.curvedto.point.bottomright.up",
                        title: "Neurons are Discrete Cells",
                        description: "Neurons are not continuous with other cells; they are separated by a tiny gap called a synapse."
                    )
                    
                    DoctrinePrincipleView(
                        iconName: "arrow.right.circle.fill",
                        title: "Law of Dynamic Polarization",
                        description: "Information flows in a consistent, predictable direction within a neuron: from the dendrites/soma to the axon."
                    )
                }
                .padding(.horizontal)

            }
            .padding(.vertical)
        }
        .navigationTitle("Neuron Doctrine") // For use within a NavigationView
    }
}

// MARK: - Reusable Subview: Theory Card
/// A card view designed to present a scientific theory in a compact and visually distinct format.
///
/// This view encapsulates the details of a single theory, including its name, proponent,
/// description, a simple analogy, and a representative icon and color.
struct TheoryCardView: View {
    // MARK: - Properties
    let theoryName: String
    let proponent: String
    let description: String
    let analogy: String
    let iconName: String
    let accentColor: Color

    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: iconName)
                    .font(.title)
                    .foregroundColor(accentColor)
                Spacer()
            }
            
            Text(theoryName)
                .font(.headline)
                .fontWeight(.bold)
            
            Text("Proponent: \(proponent)")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
            
            Divider()
            
            Text(description)
                .font(.footnote)
            
            Spacer() // Pushes content to the top
            
            VStack(alignment: .leading) {
                 Text("Analogy:")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(.secondary)
                
                Text("“\(analogy)”")
                    .font(.footnote)
                    .italic()
            }
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(16)
        .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}


// MARK: - Reusable Subview: Doctrine Principle
/// A view to display a single principle of the Neuron Doctrine with an icon, title, and description.
/// This component ensures consistent styling for each listed principle.
struct DoctrinePrincipleView: View {
    // MARK: - Properties
    let iconName: String
    let title: String
    let description: String

    // MARK: - Body
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Image(systemName: iconName)
                .font(.title)
                .foregroundColor(.blue)
                .frame(width: 40) // Fixed width for alignment

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Text(description)
                    .font(.body)
                    .foregroundStyle(.secondary)
            }
        }
    }
}


// MARK: - SwiftUI Preview
/// Provides a live preview of the `NeuronDoctrineView` in the Xcode canvas.
/// This allows for rapid UI development and testing without needing to build and run the app.
#Preview {
    NavigationView {
        NeuronDoctrineView()
    }
}
