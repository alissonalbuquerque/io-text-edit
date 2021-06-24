
package.cpath = require('config')

local gui = require('yue.gui')

local MessageBox = {
    
    newInstance = function()
        return gui.MessageBox.create()
    end
}

return MessageBox
