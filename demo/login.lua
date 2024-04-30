--[[
-- Copyright (c) 2019 �人˴������, All Rights Reserved
-- Created: 2019/3/6
--
-- @brief	��¼���豸
-- @author	������
-- @see https://github.com/lishaoliang/l_sdk_doc
--]]
local l_sdk = require("l_sdk")
local to_json =  require("demo.to_json")


-- @brief ��¼���豸
-- @param [in]  	ip[string]			�豸ip
-- @param [in]		port[number]		�˿�
-- @param [in]		username[string]	�û���
-- @param [in]		passwd[string]		����
-- @return err_id[number]	 0.�ɹ�; ��0.������
--	\n		login_id[number] ��¼�ɹ�֮��ĵ�¼id	
-- @see https://github.com/lishaoliang/l_sdk_doc/blob/master/protocol/auth.md
--  \n 'err_id'������: https://github.com/lishaoliang/l_sdk_doc/blob/master/protocol/net_err.md
local login = function (ip, port, username, passwd)
	local req = {
		ip = ip,
		port = port,
		
		login = {
			username = username,
			passwd = passwd
		}
	}
	
	local json = to_json(req)
	--print('login json:', json)
	
	local err_id, login_id = l_sdk.login(json)
	
	return err_id, login_id
end

return login