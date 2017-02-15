# Lab3
iOS deCal Lab 3: Countdown

In today's lab, you will be creating a simple app from scratch, -paying mind to what components of your app are considered part of the of the model and which are part of the controller.-

Your final app should have the following functionality:

1. A text field that allows you to enter **only** numbers, which also counts down with time.

2. A single button that allows for the starting of a timer, along with the pausing of said timer. This button's text should change between "Start" and "Pause" under appropriate circumstances.

3. When your timer hits 0, your device should sound an alarm.

4. Improper input, including a lack of input, non-positive numbers, strings, etc. should be handled without crashing the app.

Without knowledge of delegation and other techniques that bridge the model, view, and the controller, upholding MVC for this app will be difficult, but you do need to start thinking about that seperation. To this end, while you may put all of your code in the ViewController file, **please use comments to indicate which parts of your code should belong in a model, and which parts belong in the controller.** You must show these to be checked off/receive credit for the lab.

While this lab is not particularly difficult, chances are you don't know both the classes that will make this counter work offhand, take this as an opportunity to get used to reading documentations, asking TAs any questions about the way Swift code is documented along the way.

**Extra Fun**
If you found this a bit too easy or want extra practice, feel free to try the following:

1. Make the keypad go away when you hit the start button

2. Use DateFormatter (or something with similar functionality) to format the countdown into the hh:mm:ss format you might expect from a timer

3. Add a popup instead of/along with your alarm for when the timer goes off.
