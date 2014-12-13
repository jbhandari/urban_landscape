#Info-Tech Developer Test

We are looking for the elite, the best of the best, the 5% of developers who are better than the remaining 95%.  We believe that great developers together create great products, and we want to add to our already great place to work.

The purpose of this test is to see how you work with a fairly minimal set of requirements.  We're looking for a final output that has clean, semantic HTML, well commented code, and uses current best practices for MVC development.

##The Task:
Create a simple list of images which allows a user to drill down to the individual images and see the details of each picture.

This should be a Rails application, and the images will be stored on S3.  We will provide you with an S3 bucket and credentials, as well as a github repository.  The rest is up to you.

All thumbnails should be 200x200 pixels.

Each image has:

   * A Picture
   * A Thumbnail
   * A Caption
   * A Description
   * Alternative Text

A user should be able to:

   * See all of the thumbnails on a page.
   * View an individual image.
   * 
      *  See the image’s picture, caption, description, and alt text in the appropriate spots.
   * Upload an image and associated metadata

Language: We’d prefer you use Ruby on Rails, since this is a Rails test.
Frameworks: You are free to use whatever frameworks you would like.
Gems: You are free to use any gems you would like to use.
Javascript Libraries: You are free to use any javascript libraries.

This is your mission.  Good luck.


###S3 Details:
**AWS Bucket:** codingtest-jbhandari

**Access Key Id:** AKIAIYQMQBOPWI3IFOJA

**Secret Access Key:** InpFGhf/W1QrPb9QDKm+dbU0FXw208o22hVPZIUz


---

###Dev Notes:

In completing this test the following gems were used:
- Image upload
  - carrierwave
  - aws-sdk
  - rmagick
- Authorization
  - Clearance
- Forms
  - SimpleForm
- Development
  - pry-rails
  - binding of caller
  - better errors

In addition for styling I stayed with CSS. From a user experience standpoint I kept colors very basic with thin fonts. For a gallery app I feel lots of whitespace seems like a good fit. The website is quite responsive as well, some tweaks can make it fully responsive. 

I put validations on everything uploaded. Found working with S3 to be quite difficult however I felt like I made some big strides in getting better at it. This was my first time using it and it is definitely something I will get better at as I see it is an excellent resource. Also I was never able to get the provided bucket and creds to work for me. You can see in secrets.yml that I have the provided keys commented out but my personal bucket works. I had sent an email out to see if it was perhaps a permissions issue. However this could be my inexperience with S3.  

In development and locally everything seems to run fine, however I uploaded it on heroku and I have a bucket naming issue according to the heroku logs which I will revisit soon. 

The most difficult part has been setting up rspec and capybara. I was not able to get my testing framework set up. I wrote this without TDD which is something I don't prefer. However I had to cut my losses with troubleshooting and carry on. I may run [suspenders](https://github.com/thoughtbot/suspenders) tomorrow and get some tests in there. I prefer to TDD my way through an app and this was a real downer for me, seems like a load issue or something in my configuration files. My current project had all testing frameworks already installed so it seems like setting up rspec, capybara, and factory girl, and configuring it is something that is important for my development as a dev. 

I will continue to add to this application until a firm answer is given! But overall it has been a real pleasure hammering out this app, I thoroughly enjoyed every bit of it and will continue to add to it. Thank you again for this opportunity!

Jatin. 
