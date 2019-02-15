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
        let sun = planet(geometry: SCNSphere(radius: 0.35), diffuse: UIImage(named: "sun")!, specular: nil, emission: nil, normal: nil, position:  SCNVector3(0,0,-3))
        let earthCenterPoint = SCNNode();
        earthCenterPoint.position = sun.position
        let moonCenterPoint = SCNNode();
        moonCenterPoint.position = sun.position
        let venusCenterPoint = SCNNode();
        venusCenterPoint.position = sun.position
        let mercuryCenterPoint = SCNNode();
        mercuryCenterPoint.position = sun.position
        let marsCenterPoint = SCNNode();
        marsCenterPoint.position = sun.position
        let jupiterCenterPoint = SCNNode();
        jupiterCenterPoint.position = sun.position
        let saturnCenterPoint = SCNNode();
        saturnCenterPoint.position = sun.position
        let neptuneCenterPoint = SCNNode();
        neptuneCenterPoint.position = sun.position
        let uranusCenterPoint = SCNNode();
        uranusCenterPoint.position = sun.position
        
        let venus = planet(geometry: SCNSphere(radius: 0.1), diffuse: UIImage(named: "venus")! ,specular: nil,emission:UIImage(named: "venus atmos"), normal: nil, position:  SCNVector3(0.7,0,0))
        let mercury = planet(geometry: SCNSphere(radius: 0.05), diffuse: UIImage(named: "mercury")! ,specular: nil,emission:nil, normal: nil, position:  SCNVector3(0.5,0,0))
        let earth = planet(geometry: SCNSphere(radius: 0.2), diffuse: UIImage(named: "earth day")!, specular: UIImage(named: "earth specular"), emission: UIImage(named: "earth clouds"), normal: UIImage(named: "earth textures"), position: SCNVector3(1.1,0,0))
        let moon = planet(geometry: SCNSphere(radius: 0.02), diffuse: UIImage(named: "moon")!, specular: nil, emission: nil, normal: nil, position: SCNVector3(1.35,0,0))
        let mars = planet(geometry: SCNSphere(radius: 0.05), diffuse: UIImage(named: "mars")! ,specular:
            nil,emission:nil, normal: nil, position:  SCNVector3(1.5,0,0))
        let jupiter = planet(geometry: SCNSphere(radius: 0.3), diffuse: UIImage(named: "jupiter")! ,specular: nil,emission:nil, normal: nil, position:  SCNVector3(2,0,0))
        let saturn = planet(geometry: SCNSphere(radius: 0.25), diffuse: UIImage(named: "saturn")! ,specular: nil,emission:nil, normal: nil, position:  SCNVector3(2.8,0,0))
        let uranus = planet(geometry: SCNSphere(radius: 0.22), diffuse: UIImage(named: "uranus")! ,specular: nil,emission:nil, normal: nil, position:  SCNVector3(3.5,0,0))
        let neptune = planet(geometry: SCNSphere(radius: 0.22), diffuse: UIImage(named: "neptune")! ,specular: nil,emission:nil, normal: nil, position:  SCNVector3(4.5,0,0))
    
        let earthRotation = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(360.degreesToRadians), z: 0, duration: 9))
        let moonRotation = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(360.degreesToRadians), z: 0, duration: 8.5))
        let venusRotation = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(360.degreesToRadians), z: 0, duration:10))
        let mercuryRotation = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(360.degreesToRadians), z: 0, duration: 11))
        let marsRotation = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(360.degreesToRadians), z: 0, duration: 8))
        let jupiterRotation = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(360.degreesToRadians), z: 0, duration: 7))
        let saturnRotation = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(360.degreesToRadians), z: 0, duration: 6))
        let uranusRotation = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(360.degreesToRadians), z: 0, duration: 5))
        let neptuneRotation = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(360.degreesToRadians), z: 0, duration: 4))
        let sunRotation = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(360.degreesToRadians), z: 0, duration: 15))
        
        earthCenterPoint.addChildNode(earth)
        earthCenterPoint.runAction(earthRotation)
        
        moonCenterPoint.addChildNode(moon)
        moonCenterPoint.runAction(moonRotation)
        
        venusCenterPoint.addChildNode(venus)
        venusCenterPoint.runAction(venusRotation)
        
        mercuryCenterPoint.addChildNode(mercury)
        mercuryCenterPoint.runAction(mercuryRotation)
        
        marsCenterPoint.addChildNode(mars)
        marsCenterPoint.runAction(marsRotation)
        
        jupiterCenterPoint.addChildNode(jupiter)
        jupiterCenterPoint.runAction(jupiterRotation)
        
        saturnCenterPoint.addChildNode(saturn)
        saturnCenterPoint.runAction(saturnRotation)
        
        uranusCenterPoint.addChildNode(uranus)
        uranusCenterPoint.runAction(uranusRotation)
        
        neptuneCenterPoint.addChildNode(neptune)
        neptuneCenterPoint.runAction(neptuneRotation)
        

        sun.runAction(sunRotation)
        earth.runAction(earthRotation)
        
        self.sceneView.scene.rootNode.addChildNode(sun);
        self.sceneView.scene.rootNode.addChildNode(earthCenterPoint);
        self.sceneView.scene.rootNode.addChildNode(moonCenterPoint);
        self.sceneView.scene.rootNode.addChildNode(venusCenterPoint);
        self.sceneView.scene.rootNode.addChildNode(mercuryCenterPoint);
        self.sceneView.scene.rootNode.addChildNode(marsCenterPoint)
        self.sceneView.scene.rootNode.addChildNode(jupiterCenterPoint);
        self.sceneView.scene.rootNode.addChildNode(uranusCenterPoint);
        self.sceneView.scene.rootNode.addChildNode(neptuneCenterPoint);
    }
    
    func planet(geometry: SCNGeometry, diffuse: UIImage, specular: UIImage?, emission: UIImage?, normal: UIImage?, position: SCNVector3) -> SCNNode {
        let planet = SCNNode(geometry: geometry)
        planet.geometry?.firstMaterial?.diffuse.contents = diffuse
        planet.geometry?.firstMaterial?.specular.contents = specular
        planet.geometry?.firstMaterial?.emission.contents = emission
        planet.geometry?.firstMaterial?.normal.contents = normal
        planet.position = position
        return planet
        
    }


}


extension Int {
    
    var degreesToRadians: Double { return Double(self) * .pi/180}
}
