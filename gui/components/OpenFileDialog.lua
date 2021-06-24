
package.cpath = require('config')

local gui = require('yue.gui')

local OpenFileDialog = {
    
    newInstance = function() 
        return gui.FileOpenDialog.create()
    end
}

return OpenFileDialog