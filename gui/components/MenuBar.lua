
package.cpath = require('config')

local gui = require('yue.gui')

local MenuBar = {
    
    newInstance = function(menus)
        return gui.MenuBar.create(menus)
    end
}

return MenuBar
