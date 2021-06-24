
package.cpath = require('config')

local gui = require('yue.gui')

local TextArea = {
    
    newInstance = function()
        return gui.TextEdit.create()
    end
}

return TextArea
