Controlled access of private datasets in Shiny
--

An example of controlling user-access to reactive datasets in a Shiny application with a secret key. 
Try it out, the key is `123`. The key is stored as an environment variable. 
If you're developing locally, you need to put it in your system `.Renviron` file. 
For deployment, you can put the a `.Renviron` file in the root directory of your app. 
If the code for your app is public, make sure `.Renviron` is in the project `.gitignore.`
I only included it here for demonstration purposes.
