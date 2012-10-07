Use [CarouFredSel](http://caroufredsel.frebsite.nl/) with Rails. It's pretty good!

`Gemfile`:

``` ruby
gem 'caroufredsel-rails', :git => 'git://github.com/johnbintz/caroufredsel-rails.git'
```

`app/assets/javascripts/application.js`:

``` javascript
//= require caroufredsel

carousel = new Carousel(
  $('#carousel_items'),
  {
    onChange: function(items) {
      // something when the items change
    },
    otherCarouFredSelOptions: 'go here'_
  }
);
```

`Carousel` objects respond to the following:

* `slideTo(index)`: Slide to the target original index
* `moveTo(index)`: Immediately move to the target original index
* `pause`: Pause the carousel

Get at the original carousel with `Carousel#carousel`

Needs CoffeeScript, 'cause I'm lazy right now!

