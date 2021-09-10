require "minitest/autorun"
require "./lib/ikonic"

describe Ikonic do
  it "should render an icon" do
    expect(Ikonic.icon('ban'))
      .must_equal File.read(
        File.join(__dir__, 'results/heroicon-outline-ban.svg')
      )
  end

  it "should render a heroicon" do 
    expect(Ikonic.icon('ban', { theme: 'heroicons' }))
      .must_equal File.read(
        File.join(__dir__, 'results/heroicon-outline-ban.svg')
      )
  end

  it "should render an octicon" do 
    expect(Ikonic.icon('alert', { theme: 'octicons' }))
      .must_equal File.read(
        File.join(__dir__, 'results/octicon-alert.svg')
      )
  end

  it "should render a bootstrap icon" do 
    expect(Ikonic.icon('app', { theme: 'bootstrap' }))
      .must_equal File.read(
        File.join(__dir__, 'results/bootstrap-app.svg')
      )
  end

  it "should render an icon with specified stroke-width" do
    expect(Ikonic.icon('cash', { width: 1 }))
      .must_equal File.read(
        File.join(__dir__, 'results/heroicon-outline-width-1-cash.svg')
      )
  end

  it "should render an icon with specified style" do
    expect(Ikonic.icon('bookmark-alt', { size: 20, width: 1, style: 'solid' }))
      .must_equal File.read(
        File.join(__dir__, 'results/heroicon-solid-bookmark-alt.svg')
      )
  end

  it "should render an icon with specified class" do
    expect(Ikonic.icon('cake', { class: 'my-class' }))
      .must_equal File.read(
        File.join(__dir__, 'results/heroicon-outline-classed-cake.svg')
      )
  end

  it "should accept a title tag" do
    expect(Ikonic.icon('cake', { title: 'This is a cake' }))
      .must_equal File.read(
        File.join(__dir__, 'results/heroicon-cake-with-title.svg')
      )
  end
end