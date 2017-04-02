/*
 * DynamicButton
 *
 * Copyright 2015-present Yannick Loriot.
 * http://yannickloriot.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 */

import UIKit

/// Upwards arrow style: ↑
public struct DynamicButtonStyleArrowUp: DynamicButtonBuildableStyle {
  public let pathVector: DynamicButtonPathVector

  public init(center: CGPoint, size: CGFloat, offset: CGPoint, lineWidth: CGFloat) {
    let bottomPoint = CGPoint(x: center.x, y: offset.y + size)
    let headPoint   = CGPoint(x: center.x, y: offset.y + lineWidth)
    let leftPoint   = CGPoint(x: center.x - size / 3.2, y: offset.y + size / 3.2)
    let rightPoint  = CGPoint(x: center.x + size / 3.2, y: offset.y + size / 3.2)

    let p1 = PathHelper.line(from: bottomPoint, to: headPoint)
    let p2 = PathHelper.line(from: headPoint, to: leftPoint)
    let p3 = PathHelper.line(from: headPoint, to: rightPoint)

    pathVector = DynamicButtonPathVector(p1: p1, p2: p2, p3: p3, p4: p1)
  }

  /// "Arrow Up" style.
  public static var styleName: String {
    return "Arrow Up"
  }
}
