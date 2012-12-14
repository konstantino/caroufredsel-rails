#= require jquery
#= require caroufredsel/jquery.mousewheel.min
#= require caroufredsel/jquery.touchSwipe.min
#= require caroufredsel/jquery.ba-throttle-debounce.min
#= require caroufredsel/jquery.carouFredSel-6.1.0

class @Carousel
  constructor: (@carousel, options = {}) ->
    if options.onChange
      @onChange = options.onChange
      delete options.onChange

    options.scroll ||= {}
    options.scroll.onBefore = (args) =>
      @onChange($(args.items.new[0]))

    @carousel.carouFredSel(options)
    @onChange($(@carousel.children()[0]))

  slideTo: (index, options = {}) =>
    @carousel.trigger('slideTo', index, true, options)
    this

  moveTo: (index) =>
    @slideTo(index, duration: 0)
    this

  pause: =>
    @carousel.trigger('pause')
    this

  prev: =>
    @carousel.trigger('prev')

  next: =>
    @carousel.trigger('next')

  play: =>
    @carousel.trigger('play')

  onChange: (item) ->
    null

