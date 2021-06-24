
package.cpath = require('config')

local gui = require('yue.gui')

local api_menu = {

    MENU = 'menu', SUBMENU = 'submenu',
    
    select_menu = function(menu, label, type)

        local menu_item = nil
        local len_menu = nil
        
        if type == 'menu' then

            len_menu = menu:itemcount()
            for i = 1, len_menu do
                menu_item = menu:itemat(i)
                if (menu_item:getlabel() == label) then
                    return menu_item
                end
            end

        elseif type == 'submenu' then

            len_submenu = menu:getsubmenu():itemcount()
            submenu = menu:getsubmenu();
            for i = 1, len_submenu do
                menu_item = submenu:itemat(i)
                if (menu_item:getlabel() == label) then
                    return menu_item
                end
            end

        end

        menu_item = nil
        return menu_item
    end,
    
    set_onclick = function(menu, listener)
        menu.onclick = function() listener:run() end
    end,

    onclick_newfile = function(tab_panel, title, text_area)

        local NewFile = setmetatable(
            {_tab_panel, _title, _text_area},
            {__index = 
                {
                    run = function(self)
                        self._tab_panel:addpage(self._title, self._text_area.newInstance())
                    end
                }
            }
        )

        NewFile._tab_panel = tab_panel
        NewFile._title = title
        NewFile._text_area = text_area

        return NewFile
    end,

    onclick_exit = function(tab_panel, message_loop)
        -- MessageBox
        local Exit = setmetatable(
            {_tab_panel, _message_loop},
            {__index =
                {
                    run = function(self)
                        return self._message_loop.quit()
                    end
                }
            }
        )

        Exit._tab_panel = tab_panel
        Exit._message_loop = message_loop

        return Exit

    end
}

return api_menu
