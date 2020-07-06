//
//  ZNView.swift
//  Draw
//
//  Created by 张聪 on 2020/5/21.
//  Copyright © 2020 李煜. All rights reserved.
//

import UIKit

class ZNView: UIView {
    var lineColor: UIColor = UIColor()
     
    lazy var paths = [ZNBezierPath]()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            
            let bp = ZNBezierPath()
            let point = touch.location(in: touch.view)
            bp.move(to: point)
            bp.znlineColor = self.lineColor
            
            paths.append(bp)
        }
        
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches {
            let point = t.location(in: t.view)
            paths.last?.addLine(to: point)
            setNeedsDisplay()
        }
    }
    override func draw(_ rect: CGRect) {
        for t in paths {
            t.znlineColor.setStroke()
            t.stroke()
        }

    }

}
