# Codepath-iOS-Prework
This Codepath iOS prework project is a simple app that I created that transforms the user's basic information into an introduction. The app takes the first and last name, the school, age, and year in school from the user's inputs. If the user does not fill in the information, the person's default name is John Smith. The default name of the school would be "an unspecified school."

The user can also enter the number of cats and dogs they own. The text adapts to the number of cats and dogs, showing that it can check if the person has either no cats or dogs or multiple cats and dogs. The user has the option to wish for more pets. I designed the app to match the theme of the University of Arizona.

https://courses.codepath.org/snippets/ios102/prework


# IOS102 Pre-work: Introduce Yourself

Welcome to the prework for iOS Intermediate Development! Together we will build a functional app that shows us the basics of navigating Xcode and Swift. This app will allow us to introduce ourselves by accepting user inputs in various forms, such as switches, text fields, segmented controls, and more. By the end of this prework, you will see how the storyboard and logic combine to make one functional app.

1. [Setup Xcode](#heading-1-setup-xcode)
2. [Familiarize yourself with Swift](#heading-2-familiarize-yourself-with-swift)
3. [Introduce Yourself](#heading-3-build-first-app)
4. [Submit your app for review](#heading-4-submit-on-the-application-dashboard)
5. [Common Errors](#heading-common-errors)
   

## 1. Setup Xcode

<a href="https://itunes.apple.com/us/app/xcode/id497799835?mt=12#" alt="**Download Xcode from the Mac App Store**" title="**Download Xcode from the Mac App Store**" target="_blank">**Download Xcode from the Mac App Store**</a>

**NOTE:* Membership in the iOS Developer Program is **not** required. This program costs $99 a year and is only required if you want to distribute your apps in the App Store and have access to beta iOS releases.

## 2. Familiarize yourself with Swift 

Learning Swift is essential to iOS development, but learning the nuances of its syntax will come with time and practice! There are many resources out there to learn Swift. We recommend taking a look at the following resources and bookmarking the Swift guides:


* Apple's <a href="https://docs.swift.org/swift-book/GuidedTour/GuidedTour.html" alt="**Official Swift Guide**" title="**Official Swift Guide**" target="_blank">**Official Swift Guide**</a>.
* CodePath's <a href="https://guides.codepath.com/ios/Understanding-Swift" alt="**Understanding Swift**" title="**Understanding Swift**" target="_blank">**Understanding Swift**</a>
* Download the <a href="https://docs.swift.org/swift-book/GuidedTour/GuidedTour.playground.zip" alt=" **Swift 5 Playground** " title=" **Swift 5 Playground** " target="_blank"> **Swift 5 Playground** </a> to experiment with the Swift 5 syntax.
* You can also find more resources <a href="https://developer.apple.com/swift/resources/" alt=" **here** " title=" **here** " target="_blank"> **here** </a>.


## 3. Introduce Yourself


### Let's begin developing! 

:::info
**🙋 What if I need help!?**

Help is here!  If you encounter any issues while completing your prework, please join our [🚀 **prework Support Workspace**](https://go.codepath.org/preworkslack).<br/>

Advantages:
- Created to support applicants with prework completion difficulties.  
- Help out your peers and learn from both peers and tech experts!
- Put your head together with other students encountering the same issue!

To join, just click the [🔗 **link**](https://go.codepath.org/preworkslack) and sign up with the same email you applied with.
:::

:::info
Expand the triangles below to collapse the tabs.
:::
 

<details>
<summary style="font-size:1.25em; font-weight: 600"> Step 0: Setting up the Project 🏗 </summary>

* Make sure you have the latest version of Xcode installed
*  Open Xcode and click "Create a new Xcode project"
*  Under the **"iOS"** Tab, click on **"App"**, then click "Next"
*  Name your project
*  Set the Interface to "Storyboard" and Language to "Swift"
*  Do not Use Core Data or Include Tests for now
*  Make sure you set up your project as shown in the gif below
*  Choose a location to save the project. *We recommend saving the project on your Desktop*

<a href="/course_images/ios102/prework/creatingProject.gif" target="_blank"><img src='/course_images/ios102/prework/creatingProject.gif' title='Walkthrough of creating new project' width='1000' alt='Walkthrough of creating new project' /></a>
</details>

<br>

<details>
<summary style="font-size:1.25em; font-weight: 600"> Step 1: Storyboard Layout 📱 </summary>

We want to set up a UI that prompts users to input information about themselves. We'll need to provide the following:
- [x] First name
- [x] Last name
- [x] School name
- [x] Academic year
- [x] Number of pets
- [x] Wants more pets?
- [x] Image of the school logo
- [x] Button to generate an introduction 

On the top right, select the "+" button or `Shift` +  `Command` + `L` to open the Objects Library

Drag 6 labels, 3 text fields, a segmented control bar, a switch, a button, and an image view from the Objects Library into `Main.Storyboard`. On the left side, Xcode defaults to hiding the type of file, so this appears as just ``Main`. 

<a href="/course_images/ios102/prework/addingElements.gif" target="_blank"><img src='/course_images/ios102/prework/addingElements.gif' title='Adding the necessary elements to our view controller' width='1000' alt='Adding the necessary elements to our view controller' /></a>

After adding the essential elements, we need to appropriately name them so that users know what corresponds to each element. We can do this through the attributes inspector on the far right panel. Click on the element that needs changing, either by directly clicking it or clicking on its name on the `View Controller Scene`. See the example below.

<a href="/course_images/ios102/prework/changeAttributes.png" target="_blank"><img src='/course_images/ios102/prework/changeAttributes.png' title='Accessing the attributes inspector' width='2500' alt='Accessing the attributes inspector' /></a>

After appropriately naming all of your new items, the view controller should look like the one shown below. 

There should be:
- [x] First label
- [x] Edit text for filling out the first name
- [x] Last label
- [x] Edit text for filling out the last name
- [x] School label
- [x] Edit text for filling out the school name
- [x] A segmented control for the academic year
- [x] Number of pets label
- [x] Wants more pets? Switch
- [x] A stepper to choose how many more
- [x] Image of the school logo
- [x] Button to generate an introduction 

<a href="/course_images/ios102/prework/Storyboard.png" target="_blank"><img src='/course_images/ios102/prework/Storyboard.png' title='View controller after dragging in all of the elements form the Objects Library' width='400' alt='View controller after dragging in all of the elements form the Objects Library' /></a>

Before connecting the Storyboard elements to the view controller, let's add the school logo to our assets folder. This is as simple as choosing the image you'd like to use and dragging it into your assets folder on Xcode. Then, click on your image view's attributes inspector to assign it the picture in your asset folder. 

<a href="/course_images/ios102/prework/addingAsset.gif" target="_blank"><img src='/course_images/ios102/prework/addingAsset.gif' title='View controller after dragging in all of the elements form the Objects Library' width='15000' alt='View controller after dragging in all of the elements form the Objects Library' /></a>



</details>

<br>


<details>
<summary style="font-size:1.25em; font-weight: 600"> Step 2: Connecting Storyboard Elements to ViewController 🚠</summary>

To connect the objects to our code, you'll need to open the Assistant Editor.
*Note: There are a few ways to open it.*

**1. Press and hold the `alt/option` button on your keyboard and click the file you want to open in the Assistant Editor.**

**2. Click the "Add Editor" button on the right button, click the top folder icon and click the `ViewController.swift` file, as shown below.**

**3. Click on the "Adjust Editor" options button and click "Assistant".**



We need to connect our items to our code in the `ViewController.swift` file. To connect the UI elements to your ViewController, press and hold the <kbd> control </kbd> key (also called control-dragging) from the item in the Storyboard and move the mouse cursor to the swift file under the `viewDidLoad()` function. See the gif below on control-dragging.

First, we will connect the three `IBOutlets` that can be added anywhere on your `ViewController.swift` class as shown below.

<a href="/course_images/ios102/prework/connectingOutlets.gif" target="_blank"><img src='/course_images/ios102/prework/connectingOutlets.gif' title='Adding the three textfield outlets' width='15000' alt='Adding the three textfield outlets' /></a>



Next, we create outlets for the number of pets label, which is originally set to 0, but will change based on the stepper amount. Additionally, we'll need a label for the stepper, the switch, and our segmented control. 

<a href="/course_images/ios102/prework/connectingOtherOutlets.gif" target="_blank"><img src='/course_images/ios102/prework/connectingOtherOutlets.gif' title='Additonal outlets' width='15000' alt='Additonal outlets' /></a>

The last thing we need to do is create a couple of actions. The first one will be when the stepper is pressed (up or down), we need to update the number of additions pets by 1, and when the Introduce Self button is tapped, we want to present the app below. We do this through `IBActions`.  Note: The stepper is both an Outlet (because it provides the user info it needs), and an Action because it is responsible for triggering an update in the app. 

<a href="/course_images/ios102/prework/connectingOtherOutlets.gif" target="_blank"><img src='/course_images/ios102/prework/connectingOtherOutlets.gif' title='Creating the two actions' width='15000' alt='Creating the two actions' /></a>


###### Checking Your Outlets

Make sure that your outlets are connected to your view controller by tapping the top left button above the view controller, and showing the `Connections Inspector` on the far right panel. 

<a href="/course_images/ios102/prework/ConnectionsChecked.png" target="_blank"><img src='/course_images/ios102/prework/ConnectionsChecked.png' title='Creating the two actions' width='15000' alt='Creating the two actions' /></a>

Another way to check is through the Document Outline. 

Check to make sure each item is connected by right-clicking the view controller in the `Main.storyboard` file, as shown below.

<a href="/course_images/ios102/prework/AnotherCheck.png" target="_blank"><img src='/course_images/ios102/prework/AnotherCheck.png' title='Creating the two actions' width='15000' alt='Creating the two actions' /></a>


:::warning
**NOTE:** If you see any outlets with a warning (⚠️) sign next to it, **remove it and reconnect them correctly!**
:::

</details>

<br>

<details>
<summary style="font-size:1.25em; font-weight: 600"> Step 3: Adding Logic to the App 🧠 </summary>

Now that everything is connected, the magic begins and we can begin coding logic into our app. All of the logic will be written in the `ViewController.swift` file, as this file is linked to the view controller with all of our UI elements and connections.

We know that users will provide information on the screen, and we would like to present that back to the user using an Alert Box after the user taps the `Introduce Self` button. However, we first have to pass all of the information to the alert box. 

##### Step 1: Adjusting the Number of Pets

Let us start by allowing our stepper to update the number of pets label. When we created the action, we left the sender as `Any`, let's update that to `UIStepper` as shown below. We'll also assign the numberOfPetsLabel to be adjusted by the number of clicks on the stepper. Don't worry if the Swift syntax is not obvious yet, you will pick it up with time. Here we are just retrieving a property from the sender, which is initially a double, cast into an Int, and wrapping our Int in a string for our label.

  ```swift
     @IBAction func stepperDidChange(_ sender: UIStepper) {
        
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
  ```

 At this point, you should be able to run your app and increase the number of pets as desired! 


##### Step 2: Creating an Introduction

Now we want to generate our introduction when the information is provided to our app. This will first be shown as a print statement to ensure that the app works as intended. We'll start by updating the sender from `Any` to `UIButton`.

```swift
     @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        // Lets us choose the title we have selected from the segmented control
        // In our example that is whether it is first, second, third or forth
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). 
        I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. 
        It is \(morePetsSwitch.isOn) that I want more pets.""
        
        print(introduction)
    }
  ```

It should be noted that the let constant `let introduction = "My name is...."` could be anything. Feel free to arrange the string in any way that lets you present an introduction about yourself. The only requirement is that you use string extrapolation `\(...)` to extract the information from the text fields, the labels, the segmented control, and the switch. Be as creative as you'd like to be! Feel free to make a unique alert box.

:::warning
A Note on Optionals! (no pun intended)
:::
You probably also noted a lot of fields are followed by an exclamation mark, such as `\(firstNameTextField.text!)`. This is called force unwrapping and should only be done when you are certain that a value exists. In our case, we know we are providing a first name, and if we dont, our textfield will provide an empty string. However, if you force unwrap a field that is nil it will crash your app. Optionals are one of the most improtant concepts in iOS development and it would be wise to start learning about their importance early on! <a href="https://guides.codepath.com/ios/Understanding-Swift#optionals" alt="iOS Guide" title="iOS Guide" target="_blank">iOS Guide</a>


##### Step 3: Creating the Alert Box

```swift
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        // Let's us chose the title we have selected from the segmented control
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided. 
        // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!).
         I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. 
         It is \(morePetsSwitch.isOn) that I want more pets."
        
        
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
  ```

 At the conclusion of these steps, your final app should look something like this.  

<a href="/course_images/ios102/prework/finalVersion.gif" target="_blank"><img src='/course_images/ios102/prework/finalVersion.gif' title='Creating the two actions' width='400' alt='Creating the two actions' /></a>

Congrats! You have just finished building your first iOS app. This little app applies many of the common features that you will see and use in any iOS application, so you are well on your way to becoming an iOS developer!

Copy and paste the following [README](prework_grading.md) into your GitHub README and update with features you have implemeneted. 

###### Some ideas to improve the app are:

    - Improve the UI by using different fonts/colors/background
    - Research persistence to learn how to store the information so when app reboots the informatoin remains
    - Add more fields to crease a more thorough introduction


</details>

<br>

## 4. Submit on the application dashboard

<details>
<summary style="font-size:1.25em; font-weight: 600"> Step 1: Submission Checklist ✅ </summary>

The preworked is considered complete when:

- [x] User can input name, last name, school name into textfield
- [x] Screen shows picture of school logo/name
- [x] User can select the academic year from segmented control
- [x] Increase the number of pets label using stepper
- [x] App presents an alert when the "Introduce Self" button is tapped


</details>

<br>

<details>
<summary style="font-size:1.25em; font-weight: 600"> Step 2: Create a GitHub Repository 📕 </summary>

1. If you are unfamiliar with GitHub, watch this short introduction video -> <a href="https://www.youtube.com/watch?v=w3jLJU7DT5E" alt="**What is GitHub?**" title="**What is GitHub?**" target="_blank">**What is GitHub?**</a> *(3:32)*
1. Create Repository, Commit, and Push using GitHub Desktop (10min)
		<iframe width="560" height="315" src="https://www.youtube.com/embed/PvUexC0-D2s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	- ⚠️ **IMPORTANT:** You will now have to **re-open** your XCode project in the new repository folder location your moved it to to continue working on it!
	- **Want to learn more about GitHub?** Understanding GitHub is **a must** for tech professionals. Although we will be learning it more in class, we highly recommend to start getting familiarized with it :)

1. If you are comfortable working with the command line, follow the steps on **Linking to a Remote Repository** to push your project to GitHub.<a href="https://guides.codepath.com/ios/Using-Git-with-Terminal" alt="**Git + Terminal**" title="**Git + Terminal**" target="_blank">**Git + Terminal**</a> 

</details>

<br>


<details>
<summary style="font-size:1.25em; font-weight: 600"> Step 3: Submit through the application portal 🙌 </summary>

1. Head to the <a href="https://apply.codepath.org/dashboard" alt="**application dashboard**" title="**application dashboard**" target="_blank">**application dashboard**</a> and click the **SUBMIT** button in the *Pre-work Status* section. 
<img src="https://i.imgur.com/WzXvbgU.png" height=400 /><br>  

**NOTE:** If you can't find this section, try to log out of your GitHub, refresh the page, and then log back in.

1. Complete the submission form

- **Field 1:** Enter your app's GitHub repo URL
- **Field 2:** Enter the URL of your App walkthrough gif
  - Example: `https://i.imgur.com/my_walkthrough.gif`
  	^ Make sure your GIF link ends with `.gif`, otherwise it won't work!
		^ You can test it in an *incognito/private mode* in your browser as well
- **Field 3:** Enter about how many hours you spent on the pre-work. (There is no right or wrong answer here)
- **Field 4:** Enter any additional info (optional).

1. Click the **Submit** button to submit your pre-work 👍

:::success
**🎉 Congratulations, you finished your first app! 🎉**
:::

When you've completed this, you'll hear from us soon with more information about the rest of the selection process. In the meantime, you can focus on **improving the functionality and user interface** of your app as outlined under **Bonuses!** section. While these remaining steps are optional, completing them will help you familiarize yourself with the coding environment, increasing your chances of thriving in the course. *However, the completion of these additional steps does not guarantee admission.*

</details>

<br>

## 5. Common Errors

<details>
<summary style="font-size:1.25em; font-weight: 600"> Error 1: GIF Not Showing 🙀</summary>

For the GIF to show, make sure that your link **contains** the file extension at the end (.gif)

Here is an example URL of how it should look:
`https://i.imgur.com/JL1snRo.gif`

^^ *Notice* the ***.gif*** extension at the end

On your readme md file, the markdown should look like this:
`![](https://i.imgur.com/JL1snRo.gif)`

We recommend using these tools to help you record GIFs on your computer:

:::warning

**GIF Recording Tools**

- <a href="https://getkap.co/" alt="**Kap**" title="**Kap**" target="_blank">**Kap**</a>
- <a href="https://gfycat.com/gifbrewery" alt="**GifBrewy**" title="**GifBrewy**" target="_blank">**GifBrewy**</a>

:::

</details>

<br>


<details>
<summary style="font-size:1.25em; font-weight: 600"> Error 2: GitHub Reference Error 🐙 </summary>

**ERROR: GitHub reference 'refs/heads/master' not found (-9)**

This problem has many solutions to it. Here a few links to help you fix it:

SOLUTIONS 

1. https://stackoverflow.com/questions/30809205/couldnt-set-refs-heads-master-when-commit
2. https://stackoverflow.com/questions/33262304/cannot-resolve-git-xcode-7-repository-issue-commit-fails-error-building-trees
3. https://github.com/desktop/desktop/issues/3838#issuecomment-359297523

If those solutions don't work, you can create another GitHub repo and simply copy/paste your project in that repo folder.

</details>

<br>



<details>
<summary style="font-size:1.25em; font-weight: 600"> Error 3: Any issue with Outlets 🔌</summary>

If you removed/renamed and added new outlets, it is possible you're having errors. When removing old outlets you need to remove them entirely. Go to the outlets menu on the storyboard and verify that your outlets are connected correctly.

This can be caused when you create and delete a current outlet and create a new one. 

The image below shows how an outlet is made correctly:

![](https://raw.githubusercontent.com/jonkykong/SideMenu/master/etc/Screenshot3.png)

The second image shows an outlet that was broken (first row with warning sign):

<a href="/course_images/ios102/prework/outleterror.png" target="_blank"><img src='/course_images/ios102/prework/outleterror.png' title='Oulets with a warning sign.' width='300' alt='Oulets with a warning sign.' /></a>

</details>

<br>


:::success
🎉 Congratulations, you've completed the prework! 🎉 <br/><br/>

You'll hear from us soon with more information about the rest of the selection process. In the meantime, feel free to explore further with Xcode and further familiarize yourself with the coding environment!
:::
