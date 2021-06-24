
package.cpath = require('config')

local gui = require('yue.gui')

local ContainerRoot = {

    newInstance = function()
        return gui.Container.create()
    end
    
}

return ContainerRoot
