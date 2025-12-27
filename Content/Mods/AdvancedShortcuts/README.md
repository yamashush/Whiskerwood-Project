## Advanced Shortcuts

Adds some useful keyboard shortcuts to quickly use core features.

Top menu

- Ctrl + 1: Population Stat
- Ctrl + 2: Construction Workers

Right sidebar

- Shift + 1: Colony Office
- Shift + 2: Total Resources
- Shift + 3: Tax Report
- Shift + 4: Quest Log
- Shift + 5: Policies Board
- Shift + 6: Production Limits
- Shift + 7: Research

Install by unziping to the folder: %localappdata%/Whiskerwood/Saved/Mods

Latest version: 

## dump memo

- Ctrl + 1
  - RevUi_StatResource_C /Game/UI/BP_PlayHud.BP_PlayHud_C:WidgetTree.Stat_Population
  - (action="openAgentManager",paramString="",paramName="",paramInt=0,paramFloat=0.000000,paramGrid=(X=0,Y=0,Z=0),paramBool=False,paramVector=(X=0.000000,Y=0.000000,Z=0.000000))
- Ctrl + 2
  - RevUi_StatResource_C /Engine/Transient.GameEngine_2147482613:BP_ArcoGameInstance_C_2147482507.BP_PlayHud_C_2147480056.WidgetTree_2147480055.Stat_FreeWorkers
  - (action="selectIdler",paramString="",paramName="",paramInt=0,paramFloat=0.000000,paramGrid=(X=0,Y=0,Z=0),paramBool=False,paramVector=(X=0.000000,Y=0.000000,Z=0.000000))
- Shift + 1
  - btn_whiskers 
  - (action="agentmenu",paramString="",paramName="",paramInt=0,paramFloat=0.000000,paramGrid=(X=0,Y=0,Z=0),paramBool=False,paramVector=(X=0.000000,Y=0.000000,Z=0.000000))
- Shift + 2
  - btn_storage
  - (action="stockpileview",paramString="",paramName="",paramInt=0,paramFloat=0.000000,paramGrid=(X=0,Y=0,Z=0),paramBool=False,paramVector=(X=0.000000,Y=0.000000,Z=0.000000))
- Shift + 3
  - btn_taxes
  - (action="openDebtView",paramString="",paramName="",paramInt=0,paramFloat=0.000000,paramGrid=(X=0,Y=0,Z=0),paramBool=False,paramVector=(X=0.000000,Y=0.000000,Z=0.000000))
- Shift + 4
  - btn_quests
  - (action="openQuestLog",paramString="",paramName="",paramInt=0,paramFloat=0.000000,paramGrid=(X=0,Y=0,Z=0),paramBool=False,paramVector=(X=0.000000,Y=0.000000,Z=0.000000))
- Shift + 5
  - btn_policies
  - (action="openPolicyView",paramString="",paramName="",paramInt=0,paramFloat=0.000000,paramGrid=(X=0,Y=0,Z=0),paramBool=False,paramVector=(X=0.000000,Y=0.000000,Z=0.000000))
- Shift + 6
  - btn_research_1
  - (action="openProductionLimitControls",paramString="",paramName="",paramInt=0,paramFloat=0.000000,paramGrid=(X=0,Y=0,Z=0),paramBool=False,paramVector=(X=0.000000,Y=0.000000,Z=0.000000))
- Shift + 7
  - btn_research
  - (action="openTechTree",paramString="",paramName="",paramInt=0,paramFloat=0.000000,paramGrid=(X=0,Y=0,Z=0),paramBool=False,paramVector=(X=0.000000,Y=0.000000,Z=0.000000))


```
Warehouse_C /Game/GridActors/Warehouse.Default__Warehouse_C

tradedock_C /Game/GridActors/industries/tradedock.Default__tradedock_C
MulticastSparseDelegateProperty /Script/Engine.Actor:OnClicked

Arco_Button_CommonRound_C /Game/UI/NewUnlockPreviewer/EmergencyQuest_Resolve_Notif.EmergencyQuest_Resolve_Notif_C:WidgetTree.Button_Close
(action="closeAnnouncement",paramString="",paramName="",paramInt=0,paramFloat=0.000000,paramGrid=(X=0,Y=0,Z=0),paramBool=False,paramVector=(X=0.000000,Y=0.000000,Z=0.000000))

button /Game/UI/Events_Revisit/EventNotif.EventNotif_C:WidgetTree.button_71
MulticastInlineDelegateProperty /Script/UMG.button:OnClicked
```
