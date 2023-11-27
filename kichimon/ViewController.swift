//
//  ViewController.swift
//  kichimon
//
//  Created by Issei Ueda on 2023/07/05.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadOwl()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }
    
    //2023/07/28
    @IBAction func shotButton(_ sender: Any) {
        arView.snapshot(saveToHDR: false, completion: { image in
            UIImageWriteToSavedPhotosAlbum(image!, nil, nil, nil)
        })
    }
    
//    func shot() {
//    }
    
}
