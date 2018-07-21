#!/usr/bin/env ruby

require 'tk'

root = TkRoot.new do 
    title 'Hello World!'
end

TkLabel.new root do
    text 'Hello World'
    pack do
        padx 15
        pady 15
        side 'left'
    end
end

Tk.mainloop

