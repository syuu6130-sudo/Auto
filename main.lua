-- Rayfield Interface Suite
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- ウィンドウ作成
local Window = Rayfield:CreateWindow({
    Name = "Syu_uhub",
    LoadingTitle = "Syu_uhub",
    LoadingSubtitle = "by Syu_u",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "Syu_uhub",
        FileName = "Settings"
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = true
    },
    KeySystem = false,
})

-- タブ1: Main (オート機能メイン)
local MainTab = Window:CreateTab("Main", 4483362458)
local AutoSection = MainTab:CreateSection("オート機能一覧")

-- オートファーム機能
local AutoFarmToggle = MainTab:CreateToggle({
    Name = "オートファーム",
    CurrentValue = false,
    Flag = "AutoFarm",
    Callback = function(Value)
        if Value then
            -- オートファーム機能を開始
            getgenv().AutoFarm = true
            while getgenv().AutoFarm do
                -- ここにファームロジックを追加
                task.wait(0.1)
            end
        else
            getgenv().AutoFarm = false
        end
    end,
})

-- オートコレクト機能
local AutoCollectToggle = MainTab:CreateToggle({
    Name = "オートコレクト",
    CurrentValue = false,
    Flag = "AutoCollect",
    Callback = function(Value)
        if Value then
            -- オートコレクト機能を開始
            getgenv().AutoCollect = true
            while getgenv().AutoCollect do
                -- ここにコレクトロジックを追加
                task.wait(0.5)
            end
        else
            getgenv().AutoCollect = false
        end
    end,
})

-- オートアプグレード機能
local AutoUpgradeToggle = MainTab:CreateToggle({
    Name = "オートアプグレード",
    CurrentValue = false,
    Flag = "AutoUpgrade",
    Callback = function(Value)
        if Value then
            -- オートアプグレード機能を開始
            getgenv().AutoUpgrade = true
            while getgenv().AutoUpgrade do
                -- ここにアプグレードロジックを追加
                task.wait(1)
            end
        else
            getgenv().AutoUpgrade = false
        end
    end,
})

-- オートリボーン機能
local AutoRebirthToggle = MainTab:CreateToggle({
    Name = "オートリボーン",
    CurrentValue = false,
    Flag = "AutoRebirth",
    Callback = function(Value)
        if Value then
            -- オートリボーン機能を開始
            getgenv().AutoRebirth = true
            while getgenv().AutoRebirth do
                -- ここにリボーンロジックを追加
                task.wait(5)
            end
        else
            getgenv().AutoRebirth = false
        end
    end,
})

-- オートテレポート機能
local AutoTeleportSection = MainTab:CreateSection("オートテレポート")
local TeleportDropdown = MainTab:CreateDropdown({
    Name = "テレポート先を選択",
    Options = {"スポーン", "ファームエリア", "ボス", "秘密の場所"},
    CurrentOption = "スポーン",
    Flag = "TeleportLocation",
    Callback = function(Option)
        -- テレポートロジックを追加
    end,
})

local AutoTeleportToggle = MainTab:CreateToggle({
    Name = "オートテレポート",
    CurrentValue = false,
    Flag = "AutoTeleport",
    Callback = function(Value)
        if Value then
            -- オートテレポート機能を開始
            getgenv().AutoTeleport = true
            while getgenv().AutoTeleport do
                -- 選択された場所にテレポート
                task.wait(3)
            end
        else
            getgenv().AutoTeleport = false
        end
    end,
})

-- オートコンバット機能セクション
local AutoCombatSection = MainTab:CreateSection("オートコンバット")
local AutoAttackToggle = MainTab:CreateToggle({
    Name = "オートアタック",
    CurrentValue = false,
    Flag = "AutoAttack",
    Callback = function(Value)
        if Value then
            getgenv().AutoAttack = true
            while getgenv().AutoAttack do
                -- 自動攻撃ロジック
                task.wait(0.2)
            end
        else
            getgenv().AutoAttack = false
        end
    end,
})

local AutoEquipToggle = MainTab:CreateToggle({
    Name = "オート装備",
    CurrentValue = false,
    Flag = "AutoEquip",
    Callback = function(Value)
        if Value then
            getgenv().AutoEquip = true
            while getgenv().AutoEquip do
                -- 自動装備ロジック
                task.wait(1)
            end
        else
            getgenv().AutoEquip = false
        end
    end,
})

-- オートセーブ機能
local AutoSaveToggle = MainTab:CreateToggle({
    Name = "オートセーブ",
    CurrentValue = false,
    Flag = "AutoSave",
    Callback = function(Value)
        if Value then
            getgenv().AutoSave = true
            while getgenv().AutoSave do
                -- 自動セーブロジック
                task.wait(30)
            end
        else
            getgenv().AutoSave = false
        end
    end,
})

-- すべてのオート機能を一括制御
local AllAutoSection = MainTab:CreateSection("一括制御")
local AllAutoToggle = MainTab:CreateToggle({
    Name = "すべてのオート機能をON/OFF",
    CurrentValue = false,
    Flag = "AllAuto",
    Callback = function(Value)
        if Value then
            -- すべてのオート機能を有効化
            AutoFarmToggle:Set(true)
            AutoCollectToggle:Set(true)
            AutoUpgradeToggle:Set(true)
            AutoRebirthToggle:Set(true)
            AutoAttackToggle:Set(true)
            AutoEquipToggle:Set(true)
            AutoSaveToggle:Set(true)
        else
            -- すべてのオート機能を無効化
            AutoFarmToggle:Set(false)
            AutoCollectToggle:Set(false)
            AutoUpgradeToggle:Set(false)
            AutoRebirthToggle:Set(false)
            AutoAttackToggle:Set(false)
            AutoEquipToggle:Set(false)
            AutoSaveToggle:Set(false)
        end
    end,
})

-- タブ2: 設定
local SettingsTab = Window:CreateTab("設定", 4483362458)

-- UI設定セクション
local UISettingsSection = SettingsTab:CreateSection("UI設定")
local UIModeToggle = SettingsTab:CreateToggle({
    Name = "ダークモード",
    CurrentValue = false,
    Flag = "DarkMode",
    Callback = function(Value)
        -- UIのテーマ変更ロジックを追加
    end,
})

local UIScaleSlider = SettingsTab:CreateSlider({
    Name = "UIスケール",
    Range = {50, 150},
    Increment = 5,
    Suffix = "%",
    CurrentValue = 100,
    Flag = "UIScale",
    Callback = function(Value)
        -- UIスケール変更ロジック
    end,
})

-- ゲーム設定セクション
local GameSettingsSection = SettingsTab:CreateSection("ゲーム設定")
local WalkSpeedSlider = SettingsTab:CreateSlider({
    Name = "歩行速度",
    Range = {16, 200},
    Increment = 1,
    Suffix = "studs/s",
    CurrentValue = 16,
    Flag = "WalkSpeed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
})

local JumpPowerSlider = SettingsTab:CreateSlider({
    Name = "ジャンプパワー",
    Range = {50, 200},
    Increment = 5,
    Suffix = "power",
    CurrentValue = 50,
    Flag = "JumpPower",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end,
})

-- 通知設定
local NotificationSection = SettingsTab:CreateSection("通知設定")
local NotifyToggle = SettingsTab:CreateToggle({
    Name = "通知を有効化",
    CurrentValue = true,
    Flag = "Notifications",
    Callback = function(Value)
        -- 通知設定ロジック
    end,
})

local NotifySoundToggle = SettingsTab:CreateToggle({
    Name = "通知音",
    CurrentValue = true,
    Flag = "NotifySound",
    Callback = function(Value)
        -- 通知音設定ロジック
    end,
})

-- セーフティ設定
local SafetySection = SettingsTab:CreateSection("セーフティ設定")
local AntiAFKToggle = SettingsTab:CreateToggle({
    Name = "Anti-AFK",
    CurrentValue = true,
    Flag = "AntiAFK",
    Callback = function(Value)
        if Value then
            -- Anti-AFKロジック
            getgenv().AntiAFK = true
        else
            getgenv().AntiAFK = false
        end
    end,
})

local AutoReconnectToggle = SettingsTab:CreateToggle({
    Name = "自動再接続",
    CurrentValue = false,
    Flag = "AutoReconnect",
    Callback = function(Value)
        if Value then
            getgenv().AutoReconnect = true
        else
            getgenv().AutoReconnect = false
        end
    end,
})

-- キーバインド設定
local KeybindSection = SettingsTab:CreateSection("キーバインド")
local ToggleUIKeybind = SettingsTab:CreateKeybind({
    Name = "UI表示/非表示",
    CurrentKeybind = "RightControl",
    HoldToInteract = false,
    Flag = "ToggleUIKeybind",
    Callback = function(Keybind)
        -- UIトグルロジック
    end,
})

local ToggleAllAutoKeybind = SettingsTab:CreateKeybind({
    Name = "すべてのオート機能切り替え",
    CurrentKeybind = "F1",
    HoldToInteract = false,
    Flag = "ToggleAllAutoKeybind",
    Callback = function(Keybind)
        AllAutoToggle:Set(not AllAutoToggle.CurrentValue)
    end,
})

-- 保存/リセットセクション
local SaveResetSection = SettingsTab:CreateSection("保存/リセット")
SettingsTab:CreateButton({
    Name = "設定を保存",
    Callback = function()
        Rayfield:Notify({
            Title = "設定",
            Content = "設定を保存しました",
            Duration = 3,
            Image = 4483362458,
        })
    end,
})

SettingsTab:CreateButton({
    Name = "設定をリセット",
    Callback = function()
        -- 設定リセットロジック
        Rayfield:Notify({
            Title = "設定",
            Content = "設定をリセットしました",
            Duration = 3,
            Image = 4483362458,
        })
    end,
})

-- 情報セクション
local InfoSection = SettingsTab:CreateSection("情報")
SettingsTab:CreateLabel("Syu_uhub v1.0.0")
SettingsTab:CreateLabel("Developed by Syu_u")

-- 初期化完了通知
Rayfield:Notify({
    Title = "Syu_uhub",
    Content = "読み込みが完了しました！",
    Duration = 5,
    Image = 4483362458,
})

-- 全てのオート機能を管理するグローバル変数
getgenv().AutoFunctions = {
    Farm = false,
    Collect = false,
    Upgrade = false,
    Rebirth = false,
    Teleport = false,
    Attack = false,
    Equip = false,
    Save = false
}

print("Syu_uhub loaded successfully!")
