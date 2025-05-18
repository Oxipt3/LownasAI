local library = {}

-- Animation service for smooth transitions
local TweenService = game:GetService("TweenService")

-- Sound function with volume control
function play(id, volume)
    volume = volume or 6
    for _, v in next, workspace:GetChildren() do
        if v.Name == "GUISound" then
            v:Destroy()
        end
    end
    local Sound = Instance.new("Sound", workspace)
    Sound.Name = "GUISound"
    Sound.Volume = volume
    Sound.SoundId = id
    Sound:Play()
end

-- Tween helper function
local function tween(object, properties, duration, style, direction)
    style = style or Enum.EasingStyle.Quad
    direction = direction or Enum.EasingDirection.Out
    local tweenInfo = TweenInfo.new(duration or 0.2, style, direction)
    local tween = TweenService:Create(object, tweenInfo, properties)
    tween:Play()
    return tween
end

function library:CreateWindow(name, theme)
    local theme1, theme2, theme3
    local toolight = false
    
    -- Cleanup previous UI
    for i, v in pairs(game.CoreGui:GetChildren()) do
        if v.Name == "By Shaddow" then
            v:Destroy()
        end
    end

    -- Theme selection
    local themes = {
        Normal = {Color3.fromRGB(32,32,32), Color3.fromRGB(26,26,26), Color3.fromRGB(176, 148, 255)},
        Reverse = {Color3.fromRGB(26,26,26), Color3.fromRGB(32,32,32), Color3.fromRGB(176, 148, 255)},
        Blood = {Color3.fromRGB(32,32,32), Color3.fromRGB(26,26,26), Color3.fromRGB(138, 3, 3)},
        Gainsboro = {Color3.fromRGB(32,32,32), Color3.fromRGB(26,26,26), Color3.fromRGB(220, 220, 221), true},
        Canary = {Color3.fromRGB(32,32,32), Color3.fromRGB(26,26,26), Color3.fromRGB(255, 253, 130)},
        Emerald = {Color3.fromRGB(32,32,32), Color3.fromRGB(26,26,26), Color3.fromRGB(68, 207, 108)},
        Crimson = {Color3.fromRGB(32,32,32), Color3.fromRGB(26,26,26), Color3.fromRGB(214, 40, 57)},
        DeepSea = {Color3.fromRGB(32,32,32), Color3.fromRGB(26,26,26), Color3.fromRGB(40, 81, 214)}
    }
    
    if themes[theme] then
        theme1, theme2, theme3, toolight = unpack(themes[theme])
        print("Theme selected: "..theme)
    else
        theme1, theme2, theme3 = unpack(themes["Normal"])
        print("Default theme selected")
    end

    -- Create UI elements
    local Screen = Instance.new("ScreenGui")
    local Top = Instance.new("Frame")
    local Toggle = Instance.new("ImageButton")
    local Main = Instance.new("Frame")
    local Tabs = Instance.new("Frame")
    local UIGridLayout = Instance.new("UIGridLayout")
    local TabContainer = Instance.new("Folder")
    local Items = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")

    -- Screen Properties
    Screen.Name = "By Shaddow"
    Screen.Parent = game:WaitForChild("CoreGui")
    Screen.Enabled = true
    Screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    -- Top Bar
    Top.Name = "Top"
    Top.Parent = Screen
    Top.AnchorPoint = Vector2.new(0.5, 0.5)
    Top.BackgroundColor3 = theme1
    Top.BorderSizePixel = 0
    Top.Position = UDim2.new(0.5, 0, 0.240482569, 0)
    Top.Size = UDim2.new(0, 558, 0, 25)
    Top.ZIndex = 3
    
    -- Corner radius
    UICorner.Parent = Top
    UICorner.CornerRadius = UDim.new(0, 4)

    -- Window Title
    TextLabel.Parent = Top
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(0.0358817279, 0, 0, 0)
    TextLabel.Size = UDim2.new(0, 515, 0, 20)
    TextLabel.Font = Enum.Font.GothamSemibold
    TextLabel.Text = name
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 14.000
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel.ZIndex = 4

    -- Toggle Button
    Toggle.Name = "Toggle"
    Toggle.Parent = Top
    Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Toggle.BackgroundTransparency = 1.000
    Toggle.Position = UDim2.new(0.935, 0, 0.142857149, 0)
    Toggle.Rotation = 0
    Toggle.Size = UDim2.new(0, 15, 0, 16)
    Toggle.ImageColor3 = Color3.fromRGB(255, 255, 255)
    Toggle.Image = "rbxassetid://3926305904"
    Toggle.ImageRectOffset = Vector2.new(124, 204)
    Toggle.ImageRectSize = Vector2.new(36, 36)
    Toggle.ZIndex = 4

    -- Main Window
    Main.Name = "Main"
    Main.Parent = Top
    Main.AnchorPoint = Vector2.new(0.5, 0)
    Main.BackgroundColor3 = theme2
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.5, 0, 1, 5)
    Main.Size = UDim2.new(0, 558, 0, 298)
    Main.ZIndex = 2
    
    local MainCorner = UICorner:Clone()
    MainCorner.Parent = Main
    MainCorner.CornerRadius = UDim.new(0, 6)

    -- Tab Container
    TabContainer.Name = "TabContainer"
    TabContainer.Parent = Main

    -- Tabs Frame
    Tabs.Name = "Tabs"
    Tabs.Parent = TabContainer
    Tabs.BackgroundColor3 = theme1
    Tabs.BorderSizePixel = 0
    Tabs.Position = UDim2.new(0.0129999956, 0, 0.0300000086, 0)
    Tabs.Size = UDim2.new(0, 119, 0, 282)
    Tabs.ZIndex = 3
    
    local TabsCorner = UICorner:Clone()
    TabsCorner.Parent = Tabs
    TabsCorner.CornerRadius = UDim.new(0, 4)

    UIGridLayout.Parent = Tabs
    UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout.CellSize = UDim2.new(0, 119, 0, 26)
    UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 5)

    -- Items Frame
    Items.Name = "Items"
    Items.Parent = Main
    Items.BackgroundColor3 = theme1
    Items.BorderSizePixel = 0
    Items.Position = UDim2.new(0.245519713, 0, 0.030201342, 0)
    Items.Size = UDim2.new(0, 414, 0, 282)
    Items.ZIndex = 3
    
    local ItemsCorner = UICorner:Clone()
    ItemsCorner.Parent = Items
    ItemsCorner.CornerRadius = UDim.new(0, 4)

    -- Window toggle animation
    local opened = true
    Toggle.MouseButton1Click:Connect(function()
        play("rbxassetid://1412830636", 3)
        if opened then
            tween(Toggle, {Rotation = 180}, 0.2)
            tween(Main, {Size = UDim2.new(0, 558, 0, 0)}, 0.2)
            tween(Items, {Size = UDim2.new(0, 414, 0, 0)}, 0.2)
            tween(Tabs, {Size = UDim2.new(0, 119, 0, 0)}, 0.2)
            opened = false
        else
            tween(Toggle, {Rotation = 0}, 0.2)
            tween(Main, {Size = UDim2.new(0, 558, 0, 298)}, 0.2)
            tween(Items, {Size = UDim2.new(0, 414, 0, 282)}, 0.2)
            tween(Tabs, {Size = UDim2.new(0, 119, 0, 282)}, 0.2)
            opened = true
        end
    end)

    local InsideLibrary = {}

    function InsideLibrary:CreateTab(text)
        local TextButton1 = Instance.new("TextButton")
        local Frame = Instance.new("ScrollingFrame")
        local UIGridLayout_2 = Instance.new("UIGridLayout")
        local UIListLayout = Instance.new("UIListLayout")
        local UIPadding = Instance.new("UIPadding")

        -- Tab Button
        TextButton1.Name = text.." Button"
        TextButton1.Parent = Tabs
        TextButton1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton1.BackgroundTransparency = 1.000
        TextButton1.Size = UDim2.new(0, 70, 0, 21)
        TextButton1.Font = Enum.Font.GothamSemibold
        TextButton1.Text = text
        TextButton1.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton1.TextSize = 14.000
        TextButton1.ZIndex = 4

        -- Content Frame
        Frame.Parent = Items
        Frame.Active = true
        Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Frame.BackgroundTransparency = 1.000
        Frame.BorderSizePixel = 0
        Frame.Position = UDim2.new(0.0170000009, 0, 0.0359999985, 0)
        Frame.Size = UDim2.new(0, 399, 0, 264)
        Frame.CanvasSize = UDim2.new(0, 0, 1.1, 0)
        Frame.ScrollBarImageColor3 = theme3
        Frame.ScrollBarThickness = 5
        Frame.Visible = false
        Frame.ZIndex = 4
        
        UIListLayout.Parent = Frame
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 5)
        
        UIPadding.Parent = Frame
        UIPadding.PaddingLeft = UDim.new(0, 5)
        UIPadding.PaddingTop = UDim.new(0, 5)

        -- Auto-resize canvas
        Frame.ChildAdded:Connect(function()
            if #Frame:GetChildren() > 13 then
                Frame.CanvasSize = UDim2.new(0, 0, Frame.CanvasSize.Y.Scale + 0.10, 0)
            end
        end)

        -- Tab switching
        TextButton1.MouseButton1Click:Connect(function()
            for i, v in next, Items:GetChildren() do
                if v:IsA("ScrollingFrame") then
                    tween(v, {Position = UDim2.new(0.017, 0, -0.5, 0)}, 0.2)
                    v.Visible = false
                end
            end
            
            for i, t in next, Tabs:GetChildren() do
                if t.ClassName == "TextButton" then
                    tween(t, {TextColor3 = Color3.fromRGB(255, 255, 255)}, 0.2)
                end
            end
            
            tween(TextButton1, {TextColor3 = theme3}, 0.2)
            Frame.Visible = true
            tween(Frame, {Position = UDim2.new(0.017, 0, 0.036, 0)}, 0.2)
            play("rbxassetid://1412830636", 3)
        end)

        local InsideTab = {}

        function InsideTab:CreateDropdown(text, list, callback)
            callback = callback or function() end
            list = list or {}
            text = text or "Dropdown"
            
            local BodyYSize = #list * 27
            local IsDropped = false
            
            local Dropdown = Instance.new("Frame")
            local DropdownLabel = Instance.new("TextLabel")
            local DropdownButton = Instance.new("TextButton")
            local DropdownIcon = Instance.new("ImageLabel")
            local DropdownContainer = Instance.new("Frame")
            local UIListLayout_2 = Instance.new("UIListLayout")
            
            -- Main dropdown frame
            Dropdown.Name = "Dropdown"
            Dropdown.Parent = Frame
            Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Dropdown.BackgroundTransparency = 1.000
            Dropdown.Size = UDim2.new(0, 200, 0, 30)
            Dropdown.ZIndex = 4
            
            -- Label
            DropdownLabel.Name = "Label"
            DropdownLabel.Parent = Dropdown
            DropdownLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownLabel.BackgroundTransparency = 1.000
            DropdownLabel.Size = UDim2.new(0, 150, 0, 30)
            DropdownLabel.Font = Enum.Font.GothamSemibold
            DropdownLabel.Text = text
            DropdownLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropdownLabel.TextSize = 14.000
            DropdownLabel.TextXAlignment = Enum.TextXAlignment.Left
            DropdownLabel.ZIndex = 5
            
            -- Dropdown button
            DropdownButton.Name = "Button"
            DropdownButton.Parent = Dropdown
            DropdownButton.BackgroundColor3 = theme2
            DropdownButton.BorderSizePixel = 0
            DropdownButton.Position = UDim2.new(0.75, 0, 0, 0)
            DropdownButton.Size = UDim2.new(0, 50, 0, 30)
            DropdownButton.Font = Enum.Font.SourceSans
            DropdownButton.Text = ""
            DropdownButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            DropdownButton.TextSize = 14.000
            DropdownButton.ZIndex = 5
            
            local DropdownCorner = UICorner:Clone()
            DropdownCorner.Parent = DropdownButton
            
            -- Dropdown icon
            DropdownIcon.Name = "Icon"
            DropdownIcon.Parent = DropdownButton
            DropdownIcon.AnchorPoint = Vector2.new(0.5, 0.5)
            DropdownIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownIcon.BackgroundTransparency = 1.000
            DropdownIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
            DropdownIcon.Size = UDim2.new(0, 20, 0, 20)
            DropdownIcon.Image = "rbxassetid://3926305904"
            DropdownIcon.ImageRectOffset = Vector2.new(364, 364)
            DropdownIcon.ImageRectSize = Vector2.new(36, 36)
            DropdownIcon.ZIndex = 6
            
            -- Dropdown container
            DropdownContainer.Name = "Container"
            DropdownContainer.Parent = Dropdown
            DropdownContainer.BackgroundColor3 = theme2
            DropdownContainer.BorderSizePixel = 0
            DropdownContainer.Position = UDim2.new(0, 0, 1, 5)
            DropdownContainer.Size = UDim2.new(0, 200, 0, 0)
            DropdownContainer.ClipsDescendants = true
            DropdownContainer.ZIndex = 4
            
            local ContainerCorner = UICorner:Clone()
            ContainerCorner.Parent = DropdownContainer
            
            -- List layout
            UIListLayout_2.Parent = DropdownContainer
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
            
            -- Create dropdown items
            for i, v in pairs(list) do
                local OptionButton = Instance.new("TextButton")
                OptionButton.Name = v.."Option"
                OptionButton.Parent = DropdownContainer
                OptionButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                OptionButton.BackgroundTransparency = 1.000
                OptionButton.Size = UDim2.new(0, 200, 0, 30)
                OptionButton.Font = Enum.Font.GothamSemibold
                OptionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                OptionButton.Text = v
                OptionButton.TextSize = 14.000
                OptionButton.ZIndex = 5
                
                OptionButton.MouseButton1Click:Connect(function()
                    DropdownLabel.Text = text..": "..v
                    callback(v)
                    IsDropped = false
                    tween(DropdownIcon, {Rotation = 0}, 0.2)
                    tween(DropdownContainer, {Size = UDim2.new(0, 200, 0, 0)}, 0.2)
                    play("rbxassetid://178104975", 3)
                end)
                
                OptionButton.MouseEnter:Connect(function()
                    tween(OptionButton, {BackgroundTransparency = 0.9}, 0.1)
                end)
                
                OptionButton.MouseLeave:Connect(function()
                    tween(OptionButton, {BackgroundTransparency = 1}, 0.1)
                end)
            end
            
            -- Dropdown toggle
            DropdownButton.MouseButton1Click:Connect(function()
                play("rbxassetid://178104975", 3)
                if not IsDropped then
                    IsDropped = true
                    tween(DropdownIcon, {Rotation = 180}, 0.2)
                    tween(DropdownContainer, {Size = UDim2.new(0, 200, 0, BodyYSize)}, 0.2)
                else
                    IsDropped = false
                    tween(DropdownIcon, {Rotation = 0}, 0.2)
                    tween(DropdownContainer, {Size = UDim2.new(0, 200, 0, 0)}, 0.2)
                end
            end)
            
            -- Button hover effects
            DropdownButton.MouseEnter:Connect(function()
                tween(DropdownButton, {BackgroundColor3 = Color3.fromRGB(
                    math.floor(theme2.R * 255 + 10),
                    math.floor(theme2.G * 255 + 10),
                    math.floor(theme2.B * 255 + 10)
                )}, 0.1)
            end)
            
            DropdownButton.MouseLeave:Connect(function()
                tween(DropdownButton, {BackgroundColor3 = theme2}, 0.1)
            end)
        end

        function InsideTab:CreateSlider(text, minvalue, maxvalue, callback)
            text = text or "Slider"
            minvalue = minvalue or 0
            maxvalue = maxvalue or 100
            callback = callback or function() end

            local mouse = game.Players.LocalPlayer:GetMouse()
            local uis = game:GetService("UserInputService")
            local Value

            local Slider = Instance.new("Frame")
            local SliderLabel = Instance.new("TextLabel")
            local SliderTrack = Instance.new("Frame")
            local SliderFill = Instance.new("Frame")
            local SliderButton = Instance.new("TextButton")
            local ValueLabel = Instance.new("TextLabel")
            
            -- Main slider frame
            Slider.Name = "Slider"
            Slider.Parent = Frame
            Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Slider.BackgroundTransparency = 1.000
            Slider.Size = UDim2.new(0, 200, 0, 40)
            Slider.ZIndex = 4
            
            -- Slider label
            SliderLabel.Name = "Label"
            SliderLabel.Parent = Slider
            SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderLabel.BackgroundTransparency = 1.000
            SliderLabel.Size = UDim2.new(0, 150, 0, 20)
            SliderLabel.Font = Enum.Font.GothamSemibold
            SliderLabel.Text = text
            SliderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderLabel.TextSize = 14.000
            SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
            SliderLabel.ZIndex = 5
            
            -- Slider track
            SliderTrack.Name = "Track"
            SliderTrack.Parent = Slider
            SliderTrack.BackgroundColor3 = theme2
            SliderTrack.BorderSizePixel = 0
            SliderTrack.Position = UDim2.new(0, 0, 0.5, 0)
            SliderTrack.Size = UDim2.new(0, 150, 0, 5)
            SliderTrack.ZIndex = 4
            
            local TrackCorner = UICorner:Clone()
            TrackCorner.Parent = SliderTrack
            
            -- Slider fill
            SliderFill.Name = "Fill"
            SliderFill.Parent = SliderTrack
            SliderFill.BackgroundColor3 = theme3
            SliderFill.BorderSizePixel = 0
            SliderFill.Size = UDim2.new(0, 0, 1, 0)
            SliderFill.ZIndex = 5
            
            local FillCorner = UICorner:Clone()
            FillCorner.Parent = SliderFill
            
            -- Slider button
            SliderButton.Name = "Button"
            SliderButton.Parent = SliderTrack
            SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderButton.BackgroundTransparency = 1.000
            SliderButton.BorderSizePixel = 0
            SliderButton.Size = UDim2.new(1, 0, 1, 0)
            SliderButton.Font = Enum.Font.SourceSans
            SliderButton.Text = ""
            SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            SliderButton.TextSize = 14.000
            SliderButton.ZIndex = 6
            
            -- Value label
            ValueLabel.Name = "Value"
            ValueLabel.Parent = Slider
            ValueLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ValueLabel.BackgroundTransparency = 1.000
            ValueLabel.Position = UDim2.new(0.8, 0, 0, 0)
            ValueLabel.Size = UDim2.new(0, 40, 0, 20)
            ValueLabel.Font = Enum.Font.GothamSemibold
            ValueLabel.Text = tostring(minvalue)
            ValueLabel.TextColor3 = theme3
            ValueLabel.TextSize = 14.000
            ValueLabel.ZIndex = 5

            -- Slider functionality
            SliderButton.MouseButton1Down:Connect(function()
                Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 150) * SliderFill.AbsoluteSize.X) + tonumber(minvalue) or 0
                pcall(function()
                    callback(Value)
                    ValueLabel.Text = Value
                end)
                
                local moveconnection = mouse.Move:Connect(function()
                    local posX = math.clamp(mouse.X - SliderTrack.AbsolutePosition.X, 0, 150)
                    SliderFill.Size = UDim2.new(0, posX, 1, 0)
                    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 150) * posX) + tonumber(minvalue))
                    pcall(function()
                        callback(Value)
                        ValueLabel.Text = Value
                    end)
                end)
                
                local releaseconnection = uis.InputEnded:Connect(function(Mouse)
                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                        moveconnection:Disconnect()
                        releaseconnection:Disconnect()
                        play("rbxassetid://178104975", 3)
                    end
                end)
            end)
        end

        function InsideTab:Show()
            for i, v in next, Items:GetChildren() do
                if v:IsA("ScrollingFrame") then
                    v.Visible = false
                end
            end
            Frame.Visible = true
            tween(TextButton1, {TextColor3 = theme3}, 0.2)
        end

        function InsideTab:CreateToggle(text, callback)
            text = text or "New Toggle"
            callback = callback or function() end
            local switchactions = {}
            
            local ToggleFrame = Instance.new("Frame")
            local ToggleLabel = Instance.new("TextLabel")
            local ToggleButton = Instance.new("TextButton")
            local ToggleBackground = Instance.new("Frame")
            local ToggleCircle = Instance.new("Frame")
            
            -- Toggle frame
            ToggleFrame.Name = "Toggle"
            ToggleFrame.Parent = Frame
            ToggleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleFrame.BackgroundTransparency = 1.000
            ToggleFrame.Size = UDim2.new(0, 200, 0, 30)
            ToggleFrame.ZIndex = 4
            
            -- Toggle label
            ToggleLabel.Name = "Label"
            ToggleLabel.Parent = ToggleFrame
            ToggleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleLabel.BackgroundTransparency = 1.000
            ToggleLabel.Size = UDim2.new(0, 150, 0, 30)
            ToggleLabel.Font = Enum.Font.GothamSemibold
            ToggleLabel.Text = text
            ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            ToggleLabel.TextSize = 14.000
            ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
            ToggleLabel.ZIndex = 5
            
            -- Toggle button
            ToggleButton.Name = "Button"
            ToggleButton.Parent = ToggleFrame
            ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleButton.BackgroundTransparency = 1.000
            ToggleButton.Position = UDim2.new(0.75, 0, 0, 0)
            ToggleButton.Size = UDim2.new(0, 50, 0, 30)
            ToggleButton.Font = Enum.Font.SourceSans
            ToggleButton.Text = ""
            ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            ToggleButton.TextSize = 14.000
            ToggleButton.ZIndex = 6
            
            -- Toggle background
            ToggleBackground.Name = "Background"
            ToggleBackground.Parent = ToggleButton
            ToggleBackground.AnchorPoint = Vector2.new(0.5, 0.5)
            ToggleBackground.BackgroundColor3 = theme2
            ToggleBackground.BorderSizePixel = 0
            ToggleBackground.Position = UDim2.new(0.5, 0, 0.5, 0)
            ToggleBackground.Size = UDim2.new(0, 40, 0, 20)
            ToggleBackground.ZIndex = 5
            
            local BackgroundCorner = UICorner:Clone()
            BackgroundCorner.Parent = ToggleBackground
            BackgroundCorner.CornerRadius = UDim.new(1, 0)
            
            -- Toggle circle
            ToggleCircle.Name = "Circle"
            ToggleCircle.Parent = ToggleBackground
            ToggleCircle.AnchorPoint = Vector2.new(0.5, 0.5)
            ToggleCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleCircle.BorderSizePixel = 0
            ToggleCircle.Position = UDim2.new(0.25, 0, 0.5, 0)
            ToggleCircle.Size = UDim2.new(0, 16, 0, 16)
            ToggleCircle.ZIndex = 6
            
            local CircleCorner = UICorner:Clone()
            CircleCorner.Parent = ToggleCircle
            CircleCorner.CornerRadius = UDim.new(1, 0)

            local enabled = false
            local function trigger()
                enabled = not enabled
                pcall(callback, enabled)
                play("rbxassetid://6309164078", 3)
                
                if enabled then
                    tween(ToggleBackground, {BackgroundColor3 = theme3}, 0.2)
                    tween(ToggleCircle, {Position = UDim2.new(0.75, 0, 0.5, 0)}, 0.2)
                    if toolight then
                        tween(ToggleCircle, {BackgroundColor3 = Color3.fromRGB(26,26,26)}, 0.2)
                    end
                else
                    tween(ToggleBackground, {BackgroundColor3 = theme2}, 0.2)
                    tween(ToggleCircle, {Position = UDim2.new(0.25, 0, 0.5, 0)}, 0.2)
                    if toolight then
                        tween(ToggleCircle, {BackgroundColor3 = Color3.fromRGB(255,255,255)}, 0.2)
                    end
                end
            end

            ToggleButton.MouseButton1Click:Connect(trigger)
            
            -- Button hover effects
            ToggleButton.MouseEnter:Connect(function()
                tween(ToggleBackground, {BackgroundColor3 = Color3.fromRGB(
                    math.floor(theme2.R * 255 + (enabled and 20 or 10)),
                    math.floor(theme2.G * 255 + (enabled and 20 or 10)),
                    math.floor(theme2.B * 255 + (enabled and 20 or 10))
                )}, 0.1)
            end)
            
            ToggleButton.MouseLeave:Connect(function()
                tween(ToggleBackground, {BackgroundColor3 = enabled and theme3 or theme2}, 0.1)
            end)

            function switchactions:Set(state)
                enabled = state
                if enabled then
                    ToggleBackground.BackgroundColor3 = theme3
                    ToggleCircle.Position = UDim2.new(0.75, 0, 0.5, 0)
                    if toolight then
                        ToggleCircle.BackgroundColor3 = Color3.fromRGB(26,26,26)
                    end
                else
                    ToggleBackground.BackgroundColor3 = theme2
                    ToggleCircle.Position = UDim2.new(0.25, 0, 0.5, 0)
                    if toolight then
                        ToggleCircle.BackgroundColor3 = Color3.fromRGB(255,255,255)
                    end
                end
                pcall(callback, enabled)
            end
            
            return switchactions
        end

        function InsideTab:CreateCheckbox(text, callback)
            local Cheat = Instance.new("Frame")
            local CheatLabel = Instance.new("TextLabel")
            local Checkbox = Instance.new("TextButton")
            local Checkmark = Instance.new("ImageLabel")
            
            -- Checkbox frame
            Cheat.Name = "Cheat"
            Cheat.Parent = Frame
            Cheat.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Cheat.BackgroundTransparency = 1.000
            Cheat.Size = UDim2.new(0, 200, 0, 30)
            Cheat.ZIndex = 4
            
            -- Checkbox label
            CheatLabel.Name = "Label"
            CheatLabel.Parent = Cheat
            CheatLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            CheatLabel.BackgroundTransparency = 1.000
            CheatLabel.Size = UDim2.new(0, 150, 0, 30)
            CheatLabel.Font = Enum.Font.GothamSemibold
            CheatLabel.Text = text
            CheatLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            CheatLabel.TextSize = 14.000
            CheatLabel.TextXAlignment = Enum.TextXAlignment.Left
            CheatLabel.ZIndex = 5
            
            -- Checkbox button
            Checkbox.Name = "Button"
            Checkbox.Parent = Cheat
            Checkbox.BackgroundColor3 = theme2
            Checkbox.BorderSizePixel = 0
            Checkbox.Position = UDim2.new(0.75, 0, 0, 0)
            Checkbox.Size = UDim2.new(0, 20, 0, 20)
            Checkbox.Font = Enum.Font.SourceSans
            Checkbox.Text = ""
            Checkbox.TextColor3 = Color3.fromRGB(0, 0, 0)
            Checkbox.TextSize = 14.000
            Checkbox.ZIndex = 5
            
            local CheckboxCorner = UICorner:Clone()
            CheckboxCorner.Parent = Checkbox
            CheckboxCorner.CornerRadius = UDim.new(0, 4)
            
            -- Checkmark
            Checkmark.Name = "Checkmark"
            Checkmark.Parent = Checkbox
            Checkmark.AnchorPoint = Vector2.new(0.5, 0.5)
            Checkmark.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Checkmark.BackgroundTransparency = 1.000
            Checkmark.Position = UDim2.new(0.5, 0, 0.5, 0)
            Checkmark.Size = UDim2.new(0, 16, 0, 16)
            Checkmark.Image = "rbxassetid://3926305904"
            Checkmark.ImageRectOffset = Vector2.new(312, 4)
            Checkmark.ImageRectSize = Vector2.new(24, 24)
            Checkmark.ImageTransparency = 1
            Checkmark.ZIndex = 6

            local enabledcheat = false
            local function triggercheat()
                enabledcheat = not enabledcheat
                pcall(callback, enabledcheat)
                play("rbxassetid://6309164078", 3)
                
                if enabledcheat then
                    tween(Checkmark, {ImageTransparency = 0}, 0.2)
                    tween(Checkmark, {ImageColor3 = theme3}, 0.2)
                else
                    tween(Checkmark, {ImageTransparency = 1}, 0.2)
                end
            end
            
            Checkbox.MouseButton1Click:Connect(triggercheat)
            
            -- Button hover effects
            Checkbox.MouseEnter:Connect(function()
                tween(Checkbox, {BackgroundColor3 = Color3.fromRGB(
                    math.floor(theme2.R * 255 + 10),
                    math.floor(theme2.G * 255 + 10),
                    math.floor(theme2.B * 255 + 10)
                )}, 0.1)
            end)
            
            Checkbox.MouseLeave:Connect(function()
                tween(Checkbox, {BackgroundColor3 = theme2}, 0.1)
            end)
        end

        function InsideTab:CreateButton(text, callback)
            text = text or "New Button"
            callback = callback or function() end
            
            local Button = Instance.new("TextButton")
            local ButtonCorner = UICorner:Clone()
            
            Button.Name = "Btn"
            Button.Parent = Frame
            Button.BackgroundColor3 = theme2
            Button.BorderSizePixel = 0
            Button.Size = UDim2.new(0, 200, 0, 30)
            Button.Font = Enum.Font.GothamSemibold
            Button.Text = text
            Button.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button.TextSize = 14.000
            Button.ZIndex = 4
            
            ButtonCorner.Parent = Button
            ButtonCorner.CornerRadius = UDim.new(0, 4)

            Button.MouseButton1Click:Connect(function()
                pcall(callback)
                play("rbxassetid://178104975", 3)
                
                -- Click animation
                tween(Button, {Size = UDim2.new(0, 190, 0, 28)}, 0.1)
                tween(Button, {Size = UDim2.new(0, 200, 0, 30)}, 0.1)
            end)
            
            -- Button hover effects
            Button.MouseEnter:Connect(function()
                tween(Button, {BackgroundColor3 = Color3.fromRGB(
                    math.floor(theme2.R * 255 + 15),
                    math.floor(theme2.G * 255 + 15),
                    math.floor(theme2.B * 255 + 15)
                )}, 0.1)
            end)
            
            Button.MouseLeave:Connect(function()
                tween(Button, {BackgroundColor3 = theme2}, 0.1)
            end)
        end
        
        return InsideTab
    end
    
    return InsideLibrary
end

return library
