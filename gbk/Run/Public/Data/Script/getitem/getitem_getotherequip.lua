x950005_g_ScriptId = 950005

--以上是动态**************************************************************

--任务文本描述
x950005_g_MissionName="领取其余装备"


x950005_g_Items	=	{
										{
										},
										{
										},
										{
										}
									}

--MisDescEnd
--**********************************
--任务入口函数
--**********************************
function x950005_OnDefaultEvent( sceneId, selfId, targetId )	--点击该任务后执行此脚本

	local ret;
	local itemcount = 0;
	
	for i, items in pairs(x950005_g_Items) do
		
		BeginAddItem(sceneId);
		for j, item in pairs(items) do
			AddItem( sceneId, item.id, item.num );
			itemcount = itemcount + 1;
		end
		ret = EndAddItem(sceneId,selfId);
		if ret > 0 and itemcount > 0 then
			AddItemListToHuman(sceneId,selfId);
		end
	end
	
end

--**********************************
--列举事件
--**********************************
function x950005_OnEnumerate( sceneId, selfId, targetId )
	AddNumText(sceneId,x950005_g_ScriptId,x950005_g_MissionName);
end