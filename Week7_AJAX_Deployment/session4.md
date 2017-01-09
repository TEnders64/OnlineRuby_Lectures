#Asset Pipeline
####What's the Asset Pipeline Good For?
1. Combines all JS files into one file. Same with CSS files and images.
  - This saves on the requests needed to load up individual JS or CSS or image files.
2. Places a timestamp on the JS, CSS, and image files
  - Browsers can rely on cached versions of JS, CSS, and image files to save time but they do not notice updates.  Now they will.
####How do we use it?
`rake assets:precompile` at any point.  This will target the `app > assets` folder

In our views, specifically dealing with images, we use `<%= image_tag 'myimage.png' %>`

####Activity: Use Asset Pipeline to Display 3 Images
1. Create a new rails app with one controller that has one method.
2. Set up your root route.
3. Load up a single view and use the image_tag to display 3 separate images. Don't forget about where to place the image files in your app
4. Inspect Element on your images to see how they've changed
