//
//  ViewController.swift
//  Planets
//
//  Created by Sven Schöni on 14.02.19.
//  Copyright © 2019 Sven Schoeni. All rights reserved.
//

import UIKit
import ARKit
class ViewController: UIViewController {

    @IBOutlet weak var sceneView: ARSCNView!
    let config = ARWorldTrackingConfiguration()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sceneView.session.run(config)
        self.sceneView.autoenablesDefaultLighting = true
    }
    override func viewDidAppear(_ animated: Bool) {
        let earth = SCNNode(geometry: SCNSphere(radius: 0.2))
        earth.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "Earth day")
        earth.geometry?.firstMaterial?.specular.contents = UIImage(named: "Earth specular")
        earth.geometry?.firstMaterial?.emission.contents = UIImage(named: "clouds")
        earth.geometry?.firstMaterial?.normal.contents = UIImage(named: "textures")
        earth.position = SCNVector3(0,0,-3)
        self.sceneView.scene.rootNode.addChildNode(earth);
        
        let action = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(360.degreesToRadians), z: 0, duration: 8))
        
        earth.runAction(action)
    }

}


extension Int {
    
    var degreesToRadians: Double { return Double(self) * .pi/180}
}
