
package.cpath = require('config')

local ListMenus = {
    
    newInstance = function(labels)

        local menus = {

            -- File
            {
                label = labels.FILE,
                onclick = function() end,
                submenu = {
                    {
                        label = labels.menu_file.NEW,
                        onclick = function() end
                    },
                    {
                        label = labels.menu_file.OPEN,
                        onclick = function() end
                    },
                    {
                        label = labels.menu_file.SAVE,
                        onclick = function() end
                    },
                    {
                        label = labels.menu_file.EXIT,
                        onclick = function() end
                    }
                }
            },
            ---------------------

            -- Edit
            {
                label = labels.EDIT,
                onclick = function() end,
                submenu = {
                    {
                        label = labels.menu_edit.UNDO,
                        onclick = function() end
                    },
                    {
                        label = labels.menu_edit.REDO,
                        onclick = function() end
                    }
                }
            },
            ---------------------
            
            -- View
            {
                label = labels.VIEW,
                onclick = function() end,
                submenu = {

                }
            },
            ---------------------

            -- Format
            {
                label = labels.FORMAT,
                onclick = function() end,
                submenu = {
                    
                }
            },
            ---------------------

            -- Help
            {
                label = labels.HELP,
                onclick = function() end,
                submenu = {
                    {
                        label = labels.menu_help.ABOUT,
                        onclick = function() end
                    }
                }
            }
            ---------------------
        }

        return menus
    end

}

return ListMenus
