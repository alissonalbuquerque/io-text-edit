
package.cpath = require('config')

local gui = require('yue.gui')

local api_window = {

    run = function()
        return gui.MessageLoop.run()
    end,

    quit = function() 
        return gui.MessageLoop.quit
    end

}

return api_window
