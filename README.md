# Lab3
iOS deCal Lab 3: Countdown

# iOS DeCal - Lab 3 (MVC) #

## Due Date ##
Tuesday, February 21st at 11:59 pm 

## Overview ##

In today's lab, you will be creating a simple app completely from scratch, while keeping in mind which components of your app are considered part of the of the model and which are part of the controller.

-place cool gif thing of app here-

To get checked off, your app must satisfy the following requirements:

1. Your app must include a **Model** file for your Timer, a **View** for your UI elements, and a **Controller** linking your timer model to your view. 

2. Your view should include a text field that allows the user to input an integer value to count down from (this text field **should not*** allow non-integer characters to be entered).

3. Your view should include a UILabel displaying the amount of time remaining.

4. Your view should include a Start / Stop button for starting and stopping the timer.

5. When your timer hits 0, your device should sound an alarm.

6. Improper input, including a lack of input, non-positive numbers, strings, etc. should be handled without crashing the app.


While this lab is not particularly difficult, chances are you don't know both the classes that will make this counter work offhand, take this as an opportunity to get used to reading documentations, asking TAs any questions about the way Swift code is documented along the way.

**Extra Fun**
If you found this a bit too easy or want extra practice, feel free to try the following:

1. Make the keypad go away when you hit the start button

2. Use DateFormatter (or something with similar functionality) to format the countdown into the hh:mm:ss format you might expect from a timer

3. Add a popup instead of/along with your alarm for when the timer goes off.
