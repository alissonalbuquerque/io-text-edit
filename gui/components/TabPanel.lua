
package.cpath = require('config')

local gui = require('yue.gui')

local TabPanel = {

    newInstance = function()
        return gui.Tab.create()
    end

}

return TabPanel
