# Ikonic

A pure ruby wrapper around your favourite icon libraries.

 - [Heroicons](https://heroicons.com/)
 - [Bootstrap Icons](https://icons.getbootstrap.com/)
 - [Hugeicons (free)](https://hugeicons.com/icons?style=Stroke&type=Rounded)
 - [Octicons](https://primer.style/foundations/icons)
 - [UntitledUI icons (free)](https://www.untitledui.com/free-icons)


## Installation

  $ gem install ikonic


## Usage

Use the following whenever you want an icon...

```ruby
Ikonic.icon 'ban'
```

<img src="./assets/heroicons/outline/ban.svg" width="24px" height="24px">

Or with options...

```ruby
Ikonic.icon 'bookmark-alt', { theme: 'heroicons', style: 'outline', width: 1, title: 'This is an icon' }
```

<img src="./assets/heroicons/outline/bookmark-alt.svg" width="24px" height="24px">

or create a helper method with custom default...

```ruby
def ikon(name, options = {})

  # custom default options
  options = options.dup
  options.fetch(:theme, 'bootstrap')
  options.fetch(:class, 'icon')
  options.fetch(:size, 18)

  raw(Ikonic.icon(name, options))
end
```


## Options

**Defaults**

    theme: 'heroicons'  # Icon set name
    style: 'outline'    # Icon subset name (only applicable to Heroicons)
    size: 24            # Size. 24px
    width: 2            # Stroke width
    title:              # Title attribute (no default)
    class:              # Class name (no default)


**Themes (icon sets)**

    - heroicons
    - bootstrap
    - hugeicons (free version)
    - octicons
    - untitled-ui (free version)