//: # Gig Poster 6
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![superdrag-no-grid](superdrag-no-grid.png "Talking Heads")
 ![superdrag-with-grid](superdrag-with-grid.png "Talking Heads")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * use of arithmetic operators in expressions
 * functions
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 
 ## Use Source Control
 
 To create evidence that supports your case for exceeding expectations for thread 3:

 * You *must* commit and push regularly ... *not* just at the end of this task.

 * You *must* complete your work prior to 1:00 PM on Friday, March 6, 2020.
 
 Good luck! You've got this! 👊🏻👊🏼👊🏽👊🏾👊🏿
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let lightBlue = Color(hue: 193, saturation: 100, brightness: 86, alpha: 100)
let offWhite = Color(hue: 85, saturation: 8, brightness: 88, alpha: 100)
let translucentPink = Color(hue: 325, saturation: 100, brightness: 81, alpha: 75)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

// Begin your solution here...


// change the background color
canvas.fillColor = lightBlue
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// write the text
canvas.drawText(message: "superdrag", at: Point(x: 15, y: 100), size: 50)

canvas.drawText(message: "with\nthe shambles\nand lifter", at: Point(x: 15, y: 20), size: 9)

canvas.drawText(message: "thursday\njune 13 1996 / 8:30\nno age limit", at: Point(x: 110, y: 20), size: 9)

canvas.drawText(message: "at briek by briek\n1130 buenos avenue\nsan diego, ca", at: Point(x: 285, y: 20), size: 9)


// begin with the frist shape
//translate to the coordinates
canvas.translate(to: Point(x: 200, y: 400))

// activate borders
canvas.fillColor = offWhite
canvas.drawShapesWithBorders = true
canvas.borderColor = offWhite
canvas.defaultBorderWidth = 10
canvas.drawShapesWithFill = false

// use a loop to draw the first shape
//define a variable for the diameter
var diameter = 10

for _ in 1...9 {
    print(diameter)
    canvas.drawEllipse(at: Point(x: 0, y: 0), width: diameter, height: diameter)
    diameter += 48
}

//change the color
canvas.borderColor = translucentPink

//translate 100 points upwards
canvas.translate(to: Point(x: 0, y: 100))
//define a variable for the diameter
var diameter2 = 10

for _ in 1...9 {
    print(diameter2)
    canvas.drawEllipse(at: Point(x: 0, y: 0), width: diameter2, height: diameter2)
    diameter2 += 48
}








/*:
 ## Use Source Control
 
 To create evidence that supports your case for exceeding expectations for thread 3:

 * You *must* commit and push regularly ... *not* just at the end of this task.

 * You *must* complete your work prior to 1:00 PM on Friday, March 6, 2020.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas


