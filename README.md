# Pre-work - *TipApp*

**TipApp** is a tip calculator application for iOS.

Submitted by: **Akyya Mayberry**

Time spent: **7** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [x] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] List anything else that you can get done to improve the app functionality!
1.) When user changes default, it will be nice to receive a simple confirmation note or green check mark
2.) Providing a better tipping range
3.) Give graphical tip recommendations based on a provided quality of service user received (bad, ok, great, superb!)
4.) Better UI (clear text-box fields and buttons, color etc.)

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='https://cloud.githubusercontent.com/assets/13710170/23842786/165e8592-0774-11e7-8a55-9bbb9f62326d.gif' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.
1.) There was some differences in syntax for Swift between when the pre-work and video tutorial was made and now.
2.) Apples Swift documentation is different from other language documentation (no example code snippets), so finding information quickly and knowing if you implemented a function or something properly takes a bit more effort.
3.) When saving users input data across multiple app restarts, I started with using UserDefaults to implement this feature then tried to use Swift's preserve/restore states. Trying to use preserve/restore states took a chunk a time and I eventually doubted that it was the right approach.
4.) It's good that Swift is very descriptive language, it makes code easier to read. But even with XCode, writing Swift can be challenging for newbees.
## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
