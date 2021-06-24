
package.cpath = require('config')

local gui = require('yue.gui')

local Window = {
    
    newInstance = function(options) 
        return gui.Window.create(options)
    end
}

return Window
