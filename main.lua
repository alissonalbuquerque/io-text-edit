
package.cpath = require('config')

local gui = require('yue.gui')

function newTextArea()
    return gui.TextEdit.create()
end

local win = gui.Window.create()
local container = gui.Container.create()
local tab = gui.Tab.create()

tab:addpage("Doc 1", newTextArea())
tab:addpage("Doc 2", newTextArea())

print(tab:pagecount())

win.onclose = gui.MessageLoop.quit

win:setcontentsize({ width=400, height=400 })
win:activate()

win:setcontentview(tab)
gui.MessageLoop.run()