# Ikonic

## A pure ruby wrapper around your favourite icon libraries

## Installation

  $ gem install ikonic


## Usage

Use the following when ever you want an icon ...

    Ikonic.icon 'ban'

  <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M18.364 18.364A9 9 0 005.636 5.636m12.728 12.728A9 9 0 015.636 5.636m12.728 12.728L5.636 5.636"/></svg>

Or with options ...    

    Ikonic.icon 'bookmark-alt', { theme: 'heroicon', style: 'outline', width: 1, title: 'This is an icon' }

   <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M16 4v12l-4-2-4 2V4M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z"/></svg>


## Options

**Defaults**

    theme: 'heroicons'  # Icon set name
    style: 'outline'    # Icon subset name (only applicable to Heroicons)
    size: 24            # Size. 24px
    width: 2            # Stroke width
    title:              # Title attribute (no default)


**Themes (icon sets)**

    - heroicons
    - bootstrap
    - hugeicons (free version)
    - octicons
    - untitled-ui (free version)