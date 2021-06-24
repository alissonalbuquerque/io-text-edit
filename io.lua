
package.cpath = require('config')

local gui = require('yue.gui')
local api_menu = require('api.menu')
local api_window = require('api.window')

local strings = require('gui.resources.values.strings')

---
local windowMain = require('gui.components.Window').newInstance()

local listMenus = require('gui.components.menu.ListMenus').newInstance(strings.menu_bar)
local menuBar = require('gui.components.MenuBar').newInstance(listMenus)

local tabPanel = require('gui.components.TabPanel').newInstance()
local textArea = require('gui.components.TextArea')

local messageBox = require('gui.components.MessageBox')
local openFileDialog = require('gui.components.OpenFileDialog')
---

local window_main = require('gui.styles.window_main')

----------------------------------------------------------

local menuFile = api_menu.select_menu(menuBar, strings.menu_bar.FILE, api_menu.MENU)
local subNewFile = api_menu.select_menu(menuFile, strings.menu_bar.menu_file.NEW, api_menu.SUBMENU)
local subOpenFile = api_menu.select_menu(menuFile, strings.menu_bar.menu_file.OPEN, api_menu.SUBMENU)
local subSaveFile = api_menu.select_menu(menuFile, strings.menu_bar.menu_file.SAVE, api_menu.SUBMENU)
local subExit = api_menu.select_menu(menuFile, strings.menu_bar.menu_file.EXIT, api_menu.SUBMENU)

local newFile = api_menu.onclick_newfile(tabPanel, 'New File', textArea)
api_menu.set_onclick(subNewFile, newFile)

local exit = api_menu.onclick_exit(tabPanel, gui.MessageLoop, "MessageBox")
api_menu.set_onclick(subExit, exit)


tabPanel:addpage('New File', textArea.newInstance())

----------------------------------------------------------

windowMain.onclose = api_window.quit()

windowMain:setcontentsize(window_main.size)
windowMain:settitle('IO-Text-Edit')
windowMain:activate()

windowMain:setmenubar(menuBar)
windowMain:setcontentview(tabPanel)

api_window.run()
