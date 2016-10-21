local function do_keyboard_aboutus()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = 'Team owners 🤓', callback_data = '!owners'},
			},
			{
			{text = 'عضو های گروه 👥', callback_data = '!members'},
			},
			{
			{text = 'دوستان ما🌹', callback_data = '!friends'},
			},
			{
	    {text = '🔙', callback_data = '!home'},
	    }
    }
    return keyboard
end
local function do_keyboard_owners()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '● hiddeneye ●', url = 'http://telegram.me/hidden_eye'},},
			{{text = '🔙', callback_data = '!aboutus'},
	    }
    }
    return keyboard
end
local function do_keyboard_members()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
			{text = '● hidden_eye ●' , url = 'telegram.me/hidden_eye'},
			{text = '● mikail ●', url = 'telegram.me/MikailVigeo'},
			},
			{
	    {text = '🔙', callback_data = '!aboutus'},
        }
    }
    return keyboard
end
local function do_keyboard_friends()
    local keyboard = {}
    keyboard.inline_keyboard = {
	        {
			{text = '● m.kh ●', url = 'telegram.me/cruel'},
			},
			{
			{text = '● amir db ●', url = 'telegram.me/dudo1'},
			},
			{
						{text = '● armin sudo ●', url = 'telegram.me/Sudo_1_BOOMBANG'},
},
			{
	    {text = '🔙', callback_data = '!aboutus'},
        }
    }
    return keyboard
end
local action = function(msg,blocks)
local msg_id = msg.message_id
local chat = msg.chat.id
local query = blocks[1]
    if msg.cb then
	if query == 'aboutus' then
		local keyboard = do_keyboard_aboutus()
		local text = [[_لطفا یکی از گزینه های زیر را انتخاب نمایید ..._]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'owners' then
		local keyboard = do_keyboard_owners()
		local text = [[* owners 🤓 :*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'members' then
		local keyboard = do_keyboard_members()
		local text = [[*ادمین ها 👥 :*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'friends' then
		local keyboard = do_keyboard_friends()
		local text = [[*دوستان ما 🌹 :*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	end
	end
return {
  action = action,
triggers = {
	    '^###cb:!(aboutus)',
	    '^###cb:!(owners)',
	    '^###cb:!(members)',
	    '^###cb:!(friends)',
    }
}
