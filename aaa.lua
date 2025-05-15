-- Improved UI Library by Bytes#0001
local function DestroyYep()
    for x = 1, 3 do -- Reduced unnecessary iterations
        if game.CoreGui:FindFirstChild("fu8rj82n") then 
            game.CoreGui:FindFirstChild("fu8rj82n"):Destroy() 
        end
    end
end

DestroyYep()

wait(0.1)

local Library = {}

function Library:CreateWindow(windowname, windowinfo)
    -- Scale factor for responsive sizing
    local scaleFactor = 1.2
    
    local fu8rj82n = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local FrameCorner = Instance.new("UICorner")
    local DashBoard = Instance.new("Frame")
    local DashBoardCorner = Instance.new("UICorner")
    local TabContainer = Instance.new("Frame")
    local TabContainer_2 = Instance.new("UIListLayout")
    local PageContainer = Instance.new("Frame")
    local PageContainerCorner = Instance.new("UICorner")
    local PageFolder = Instance.new("Folder")
    local Title = Instance.new("TextLabel")
    local Yep = Instance.new("TextButton")
    local Cre = Instance.new("ImageLabel")
    local YepTitle = Instance.new("TextLabel")
    local YepCorner = Instance.new("UICorner")

    fu8rj82n.Name = "fu8rj82n"
    fu8rj82n.Parent = game.CoreGui
    fu8rj82n.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    fu8rj82n.ResetOnSpawn = false
    
    Frame.Parent = fu8rj82n
    Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Frame.BorderColor3 = Color3.fromRGB(20, 20, 20)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.25, 0, 0.25, 0) -- Better centered position
    Frame.Size = UDim2.new(0, 500 * scaleFactor, 0, 350 * scaleFactor) -- Larger default size
    
    FrameCorner.Name = "FrameCorner"
    FrameCorner.Parent = Frame
    FrameCorner.CornerRadius = UDim.new(0, 8) -- Smoother corners
    
    DashBoard.Name = "DashBoard"
    DashBoard.Parent = Frame
    DashBoard.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    DashBoard.BorderColor3 = Color3.fromRGB(15, 15, 15)
    DashBoard.Position = UDim2.new(0.02, 0, 0.15, 0)
    DashBoard.Size = UDim2.new(0, 120 * scaleFactor, 0, 270 * scaleFactor)
    
    DashBoardCorner.CornerRadius = UDim.new(0, 6)
    DashBoardCorner.Name = "DashBoardCorner"
    DashBoardCorner.Parent = DashBoard
    
    TabContainer.Name = "TabContainer"
    TabContainer.Parent = DashBoard
    TabContainer.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    TabContainer.BackgroundTransparency = 1.000
    TabContainer.BorderColor3 = Color3.fromRGB(15, 15, 15)
    TabContainer.BorderSizePixel = 0
    TabContainer.Position = UDim2.new(0.03, 0, 0.04, 0)
    TabContainer.Size = UDim2.new(0, 115 * scaleFactor, 0, 260 * scaleFactor)
    
    TabContainer_2.Name = "TabContainer"
    TabContainer_2.Parent = TabContainer
    TabContainer_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    TabContainer_2.SortOrder = Enum.SortOrder.LayoutOrder
    TabContainer_2.Padding = UDim.new(0, 8)

    PageContainer.Name = "PageContainer"
    PageContainer.Parent = Frame
    PageContainer.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    PageContainer.BorderColor3 = Color3.fromRGB(15, 15, 15)
    PageContainer.Position = UDim2.new(0.28, 0, 0.15, 0)
    PageContainer.Size = UDim2.new(0, 350 * scaleFactor, 0, 270 * scaleFactor)
    
    PageContainerCorner.CornerRadius = UDim.new(0, 6)
    PageContainerCorner.Name = "PageContainerCorner"
    PageContainerCorner.Parent = PageContainer
    
    PageFolder.Name = "PageFolder"
    PageFolder.Parent = PageContainer

    Title.Name = "Title"
    Title.Parent = Frame
    Title.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Title.BackgroundTransparency = 1.000
    Title.BorderColor3 = Color3.fromRGB(20, 20, 20)
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0.04, 0, 0.03, 0)
    Title.Size = UDim2.new(0, 400 * scaleFactor, 0, 40 * scaleFactor)
    Title.Font = Enum.Font.GothamSemibold
    Title.Text = windowname or "UI Library"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 16.000 * scaleFactor -- Larger text
    Title.TextXAlignment = Enum.TextXAlignment.Left

    Yep.Name = "Yep"
    Yep.Parent = Frame
    Yep.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Yep.BackgroundTransparency = 1.000
    Yep.BorderColor3 = Color3.fromRGB(20, 20, 20)
    Yep.BorderSizePixel = 0
    Yep.Position = UDim2.new(0.88, 0, 0.05, 0)
    Yep.Size = UDim2.new(0, 45 * scaleFactor, 0, 25 * scaleFactor)
    Yep.AutoButtonColor = false
    Yep.Font = Enum.Font.SourceSans
    Yep.Text = ""
    Yep.TextColor3 = Color3.fromRGB(0, 0, 0)
    Yep.TextSize = 14.000
    
    Cre.Name = "Cre"
    Cre.Parent = Yep
    Cre.BackgroundTransparency = 1.000
    Cre.Size = UDim2.new(0, 45 * scaleFactor, 0, 25 * scaleFactor)
    Cre.Image = "rbxassetid://4384401360"
    Cre.ScaleType = Enum.ScaleType.Fit
    
    YepTitle.Name = "YepTitle"
    YepTitle.Parent = Yep
    YepTitle.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    YepTitle.BackgroundTransparency = 1.000
    YepTitle.BorderColor3 = Color3.fromRGB(20, 20, 20)
    YepTitle.BorderSizePixel = 0
    YepTitle.Position = UDim2.new(1.5, 0, -0.3, 0)
    YepTitle.Size = UDim2.new(0, 150 * scaleFactor, 0, 40 * scaleFactor)
    YepTitle.Font = Enum.Font.GothamSemibold
    YepTitle.Text = windowinfo or "UI Made by Bytes#0001"
    YepTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    YepTitle.TextSize = 12.000 * scaleFactor
    YepTitle.TextTransparency = 1.000
    
    YepCorner.Name = "YepCorner"
    YepCorner.Parent = YepTitle

    -- Improved hover effects with tweening
    local tweenService = game:GetService("TweenService")
    
    Cre.MouseEnter:Connect(function()
        local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        
        local bgTween = tweenService:Create(YepTitle, tweenInfo, {
            BackgroundTransparency = 0,
            TextTransparency = 0
        })
        
        local colorTween = tweenService:Create(Cre, tweenInfo, {
            ImageColor3 = Color3.fromRGB(137, 246, 255)
        })
        
        bgTween:Play()
        colorTween:Play()
    end)
    
    Cre.MouseLeave:Connect(function()
        local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        
        local bgTween = tweenService:Create(YepTitle, tweenInfo, {
            BackgroundTransparency = 1,
            TextTransparency = 1
        })
        
        local colorTween = tweenService:Create(Cre, tweenInfo, {
            ImageColor3 = Color3.fromRGB(255, 255, 255)
        })
        
        bgTween:Play()
        colorTween:Play()
    end)

    -- Draggable window with improved physics
    local UserInputService = game:GetService("UserInputService")
    local dragging
    local dragInput
    local dragStart
    local startPos
    
    local function update(input)
        local delta = input.Position - dragStart
        local newPos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        
        -- Keep window within screen bounds
        local absPos = Frame.AbsolutePosition
        local absSize = Frame.AbsoluteSize
        
        if absPos.X + absSize.X > workspace.CurrentCamera.ViewportSize.X then
            newPos = UDim2.new(newPos.X.Scale, workspace.CurrentCamera.ViewportSize.X - absSize.X, newPos.Y.Scale, newPos.Y.Offset)
        elseif absPos.X < 0 then
            newPos = UDim2.new(newPos.X.Scale, 0, newPos.Y.Scale, newPos.Y.Offset)
        end
        
        if absPos.Y + absSize.Y > workspace.CurrentCamera.ViewportSize.Y then
            newPos = UDim2.new(newPos.X.Scale, newPos.X.Offset, newPos.Y.Scale, workspace.CurrentCamera.ViewportSize.Y - absSize.Y)
        elseif absPos.Y < 0 then
            newPos = UDim2.new(newPos.X.Scale, newPos.X.Offset, newPos.Y.Scale, 0)
        end
        
        Frame.Position = newPos
    end
    
    Frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
            dragging = true
            dragStart = input.Position
            startPos = Frame.Position
    
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    Frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)

    -- Minimize button functionality
    local minimizeBtn = Instance.new("TextButton")
    minimizeBtn.Name = "MinimizeBtn"
    minimizeBtn.Parent = Frame
    minimizeBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    minimizeBtn.BackgroundTransparency = 1.000
    minimizeBtn.BorderColor3 = Color3.fromRGB(20, 20, 20)
    minimizeBtn.BorderSizePixel = 0
    minimizeBtn.Position = UDim2.new(0.78, 0, 0.05, 0)
    minimizeBtn.Size = UDim2.new(0, 25 * scaleFactor, 0, 25 * scaleFactor)
    minimizeBtn.AutoButtonColor = false
    minimizeBtn.Font = Enum.Font.GothamBold
    minimizeBtn.Text = "-"
    minimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    minimizeBtn.TextSize = 18.000 * scaleFactor
    
    local minimized = false
    local originalSize = Frame.Size
    
    minimizeBtn.MouseButton1Click:Connect(function()
        minimized = not minimized
        
        if minimized then
            Frame:TweenSize(
                UDim2.new(0, originalSize.X.Offset, 0, 50 * scaleFactor),
                Enum.EasingDirection.Out,
                Enum.EasingStyle.Quad,
                0.2,
                true
            )
        else
            Frame:TweenSize(
                originalSize,
                Enum.EasingDirection.Out,
                Enum.EasingStyle.Quad,
                0.2,
                true
            )
        end
    end)

    local PageYep = {}

    function PageYep:addPage(pagename, scrollsize, visible, elementspacing)
        local Tab = Instance.new("TextButton")
        local TabCorner = Instance.new("UICorner")
        local Home = Instance.new("ScrollingFrame")
        local PageLayout = Instance.new("UIListLayout")
        
        Tab.Name = "Tab"
        Tab.Parent = TabContainer
        Tab.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        Tab.BorderColor3 = Color3.fromRGB(15, 15, 15)
        Tab.Position = UDim2.new(-0.025, 0, 0, 0)
        Tab.Size = UDim2.new(0, 110 * scaleFactor, 0, 30 * scaleFactor)
        Tab.AutoButtonColor = false
        Tab.Font = Enum.Font.GothamSemibold
        Tab.Text = pagename or "nil"
        Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
        Tab.TextSize = 12.000 * scaleFactor
        Tab.TextTransparency = 0.300
        
        TabCorner.CornerRadius = UDim.new(0, 7)
        TabCorner.Name = "TabCorner"
        TabCorner.Parent = Tab

        Home.Name = "Page"
        Home.Parent = PageFolder
        Home.Active = true
        Home.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        Home.BackgroundTransparency = 1.000
        Home.BorderColor3 = Color3.fromRGB(15, 15, 15)
        Home.BorderSizePixel = 0
        Home.Position = UDim2.new(0, 0, 0.04, 0)
        Home.Size = UDim2.new(0, 345 * scaleFactor, 0, 260 * scaleFactor)
        Home.ScrollBarThickness = 4 * scaleFactor
        Home.ScrollBarImageColor3 = Color3.fromRGB(5, 5, 5)
        Home.CanvasSize = UDim2.new(0, 0, scrollsize or 4, 0)
        Home.Visible = visible or false

        PageLayout.Name = "PageLayout"
        PageLayout.Parent = Home
        PageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        PageLayout.Padding = UDim.new(0, elementspacing or 8 * scaleFactor)

        Tab.MouseButton1Down:Connect(function()
            local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            tweenService:Create(Tab, tweenInfo, {TextSize = 12 * scaleFactor}):Play()
            
            for i, v in pairs(PageFolder:GetChildren()) do 
                v.Visible = false
            end
            
            Home.Visible = true
            
            tweenService:Create(Tab, tweenInfo, {
                TextTransparency = 0,
                TextSize = 14 * scaleFactor
            }):Play()
            
            for i, v in pairs(TabContainer:GetChildren()) do 
                if v:IsA("GuiButton") and v ~= Tab then 
                    tweenService:Create(v, tweenInfo, {TextTransparency = 0.3}):Play()
                end
            end
        end)

        if visible == true then 
            Tab.TextTransparency = 0
            for i, v in pairs(PageFolder:GetChildren()) do 
                if v:IsA("Frame") and v ~= Home then 
                    v.Visible = false
                end
            end
        else
            Tab.TextTransparency = 0.3
        end
        
        Tab.MouseEnter:Connect(function()
            Tab.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        end)
        
        Tab.MouseLeave:Connect(function()
            Tab.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        end)

        local PageElements = {}

        function PageElements:addLabel(labelname, labelinfo)
            local LabelHolder = Instance.new("Frame")
            local LabelHolderCorner = Instance.new("UICorner")
            local LabelTitle = Instance.new("TextLabel")
            local LabelInfo = Instance.new("TextLabel")

            LabelHolder.Name = "LabelHolder"
            LabelHolder.Parent = Home
            LabelHolder.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            LabelHolder.BorderColor3 = Color3.fromRGB(17, 17, 17)
            LabelHolder.BorderSizePixel = 0
            LabelHolder.Position = UDim2.new(0.02, 0, 0, 0)
            LabelHolder.Size = UDim2.new(0, 330 * scaleFactor, 0, 30 * scaleFactor)
            
            LabelHolderCorner.CornerRadius = UDim.new(0, 5)
            LabelHolderCorner.Name = "LabelHolderCorner"
            LabelHolderCorner.Parent = LabelHolder
            
            LabelTitle.Name = "LabelTitle"
            LabelTitle.Parent = LabelHolder
            LabelTitle.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            LabelTitle.BackgroundTransparency = 1.000
            LabelTitle.BorderColor3 = Color3.fromRGB(17, 17, 17)
            LabelTitle.BorderSizePixel = 0
            LabelTitle.Size = UDim2.new(0, 330 * scaleFactor, 0, 18 * scaleFactor)
            LabelTitle.Font = Enum.Font.GothamSemibold
            LabelTitle.Text = labelname or ""
            LabelTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelTitle.TextSize = 12.000 * scaleFactor
            
            LabelInfo.Name = "LabelInfo"
            LabelInfo.Parent = LabelHolder
            LabelInfo.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            LabelInfo.BackgroundTransparency = 1.000
            LabelInfo.BorderColor3 = Color3.fromRGB(17, 17, 17)
            LabelInfo.BorderSizePixel = 0
            LabelInfo.Position = UDim2.new(0, 0, 0.65, 0)
            LabelInfo.Size = UDim2.new(0, 330 * scaleFactor, 0, 10 * scaleFactor)
            LabelInfo.Font = Enum.Font.GothamSemibold
            LabelInfo.Text = labelinfo or ""
            LabelInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelInfo.TextSize = 10.000 * scaleFactor
            LabelInfo.TextTransparency = 0.300
        end

        function PageElements:addButton(buttonname, callback)
            local ButtonHolder = Instance.new("Frame")
            local Button = Instance.new("TextButton")
            local ButtonCorner = Instance.new("UICorner")
            local ButtonHolderCorner = Instance.new("UICorner")

            callback = callback or function() end

            ButtonHolder.Name = "ButtonHolder"
            ButtonHolder.Parent = Home
            ButtonHolder.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            ButtonHolder.BorderColor3 = Color3.fromRGB(17, 17, 17)
            ButtonHolder.BorderSizePixel = 0
            ButtonHolder.Position = UDim2.new(0.02, 0, 0, 0)
            ButtonHolder.Size = UDim2.new(0, 330 * scaleFactor, 0, 30 * scaleFactor)
            
            Button.Name = "Button"
            Button.Parent = ButtonHolder
            Button.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            Button.BackgroundTransparency = 1.000
            Button.BorderColor3 = Color3.fromRGB(17, 17, 17)
            Button.BorderSizePixel = 0
            Button.Size = UDim2.new(0, 330 * scaleFactor, 0, 30 * scaleFactor)
            Button.AutoButtonColor = false
            Button.Font = Enum.Font.GothamSemibold
            Button.Text = buttonname or "Button"
            Button.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button.TextSize = 12.000 * scaleFactor
            
            ButtonCorner.CornerRadius = UDim.new(0, 5)
            ButtonCorner.Name = "ButtonCorner"
            ButtonCorner.Parent = Button
            
            ButtonHolderCorner.CornerRadius = UDim.new(0, 5)
            ButtonHolderCorner.Name = "ButtonHolderCorner"
            ButtonHolderCorner.Parent = ButtonHolder

            -- Improved button effects
            Button.MouseEnter:Connect(function()
                tweenService:Create(ButtonHolder, TweenInfo.new(0.1), {
                    BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                }):Play()
            end)
            
            Button.MouseLeave:Connect(function()
                tweenService:Create(ButtonHolder, TweenInfo.new(0.2), {
                    BackgroundColor3 = Color3.fromRGB(17, 17, 17)
                }):Play()
            end)

            Button.MouseButton1Down:Connect(function()
                tweenService:Create(Button, TweenInfo.new(0.1), {
                    TextSize = 10 * scaleFactor
                }):Play()
                
                tweenService:Create(ButtonHolder, TweenInfo.new(0.1), {
                    BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                }):Play()
                
                wait(0.1)
                
                tweenService:Create(Button, TweenInfo.new(0.1), {
                    TextSize = 12 * scaleFactor
                }):Play()
                
                tweenService:Create(ButtonHolder, TweenInfo.new(0.2), {
                    BackgroundColor3 = Color3.fromRGB(17, 17, 17)
                }):Play()
                
                pcall(callback)
            end)
        end

        function PageElements:addToggle(togglename, default, callback)
            local ToggleHolder = Instance.new("Frame")
            local ToggleHolderCorner = Instance.new("UICorner")
            local ToggleTitle = Instance.new("TextLabel")
            local ToggleButton = Instance.new("TextButton")
            local ToggleFrame = Instance.new("Frame")
            local ToggleFrameCorner = Instance.new("UICorner")
            local ToggleBall = Instance.new("Frame")
            local ToggleBallCorner = Instance.new("UICorner")

            callback = callback or function() end
            local ToggleEnabled = default or false

            ToggleHolder.Name = "ToggleHolder"
            ToggleHolder.Parent = Home
            ToggleHolder.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            ToggleHolder.BorderColor3 = Color3.fromRGB(17, 17, 17)
            ToggleHolder.BorderSizePixel = 0
            ToggleHolder.Position = UDim2.new(0.02, 0, 0, 0)
            ToggleHolder.Size = UDim2.new(0, 330 * scaleFactor, 0, 30 * scaleFactor)
            
            ToggleHolderCorner.CornerRadius = UDim.new(0, 5)
            ToggleHolderCorner.Name = "ToggleHolderCorner"
            ToggleHolderCorner.Parent = ToggleHolder
            
            ToggleTitle.Name = "ToggleTitle"
            ToggleTitle.Parent = ToggleHolder
            ToggleTitle.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            ToggleTitle.BackgroundTransparency = 1.000
            ToggleTitle.BorderColor3 = Color3.fromRGB(17, 17, 17)
            ToggleTitle.BorderSizePixel = 0
            ToggleTitle.Position = UDim2.new(0.02, 0, 0, 0)
            ToggleTitle.Size = UDim2.new(0, 230 * scaleFactor, 0, 30 * scaleFactor)
            ToggleTitle.Font = Enum.Font.GothamSemibold
            ToggleTitle.Text = togglename or "Toggle"
            ToggleTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            ToggleTitle.TextSize = 12.000 * scaleFactor
            ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left
            
            ToggleButton.Name = "ToggleButton"
            ToggleButton.Parent = ToggleHolder
            ToggleButton.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            ToggleButton.BackgroundTransparency = 1.000
            ToggleButton.BorderColor3 = Color3.fromRGB(17, 17, 17)
            ToggleButton.Position = UDim2.new(0.8, 0, 0, 0)
            ToggleButton.Size = UDim2.new(0, 60 * scaleFactor, 0, 30 * scaleFactor)
            ToggleButton.AutoButtonColor = false
            ToggleButton.Font = Enum.Font.SourceSans
            ToggleButton.Text = ""
            ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            ToggleButton.TextSize = 14.000
            
            ToggleFrame.Name = "ToggleFrame"
            ToggleFrame.Parent = ToggleButton
            ToggleFrame.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
            ToggleFrame.BorderColor3 = Color3.fromRGB(5, 5, 5)
            ToggleFrame.Position = UDim2.new(0.1, 0, 0.2, 0)
            ToggleFrame.Size = UDim2.new(0, 40 * scaleFactor, 0, 20 * scaleFactor)
            
            ToggleFrameCorner.Name = "ToggleFrameCorner"
            ToggleFrameCorner.Parent = ToggleFrame
            
            ToggleBall.Name = "ToggleBall"
            ToggleBall.Parent = ToggleFrame
            ToggleBall.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleBall.Position = UDim2.new(0.1, 0, 0.15, 0)
            ToggleBall.Size = UDim2.new(0, 16 * scaleFactor, 0, 14 * scaleFactor)
            
            ToggleBallCorner.CornerRadius = UDim.new(0, 100)
            ToggleBallCorner.Name = "ToggleBallCorner"
            ToggleBallCorner.Parent = ToggleBall

            -- Set initial state
            if ToggleEnabled then
                ToggleBall.Position = UDim2.new(0.55, 0, 0.15, 0)
                ToggleBall.BackgroundColor3 = Color3.fromRGB(137, 246, 255)
            end

            ToggleButton.MouseButton1Down:Connect(function()
                ToggleEnabled = not ToggleEnabled
                
                if ToggleEnabled then 
                    tweenService:Create(ToggleHolder, TweenInfo.new(0.1), {
                        BackgroundColor3 = Color3.fromRGB(16, 16, 16)
                    }):Play()
                    
                    tweenService:Create(ToggleBall, TweenInfo.new(0.1), {
                        Position = UDim2.new(0.55, 0, 0.15, 0),
                        BackgroundColor3 = Color3.fromRGB(137, 246, 255)
                    }):Play()
                else
                    tweenService:Create(ToggleHolder, TweenInfo.new(0.1), {
                        BackgroundColor3 = Color3.fromRGB(16, 16, 16)
                    }):Play()
                    
                    tweenService:Create(ToggleBall, TweenInfo.new(0.1), {
                        Position = UDim2.new(0.1, 0, 0.15, 0),
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    }):Play()
                end
                
                wait(0.1)
                tweenService:Create(ToggleHolder, TweenInfo.new(0.1), {
                    BackgroundColor3 = Color3.fromRGB(17, 17, 17)
                }):Play()
                
                pcall(callback, ToggleEnabled)
            end)
        end

        function PageElements:addSlider(slidername, minvalue, maxvalue, default, callback)
            local SliderHolder = Instance.new("Frame")
            local SliderTitle = Instance.new("TextLabel")
            local SliderHolderScript = Instance.new("UICorner")
            local SliderButton = Instance.new("TextButton")
            local SliderButtonCorner = Instance.new("UICorner")
            local SliderTrail = Instance.new("Frame")
            local SliderTrailCorner = Instance.new("UICorner")
            local SliderNumber = Instance.new("TextLabel")

            callback = callback or function() end
            minvalue = minvalue or 0
            maxvalue = maxvalue or 100
            default = default or minvalue

            SliderHolder.Name = "SliderHolder"
            SliderHolder.Parent = Home
            SliderHolder.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            SliderHolder.BorderColor3 = Color3.fromRGB(17, 16, 16)
            SliderHolder.BorderSizePixel = 0
            SliderHolder.Position = UDim2.new(0.02, 0, 0, 0)
            SliderHolder.Size = UDim2.new(0, 330 * scaleFactor, 0, 40 * scaleFactor)
            
            SliderTitle.Name = "SliderTitle"
            SliderTitle.Parent = SliderHolder
            SliderTitle.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            SliderTitle.BackgroundTransparency = 1.000
            SliderTitle.BorderColor3 = Color3.fromRGB(17, 17, 17)
            SliderTitle.BorderSizePixel = 0
            SliderTitle.Position = UDim2.new(0.02, 0, 0.15, 0)
            SliderTitle.Size = UDim2.new(0, 280 * scaleFactor, 0, 10 * scaleFactor)
            SliderTitle.Font = Enum.Font.GothamSemibold
            SliderTitle.Text = slidername or "Slider"
            SliderTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderTitle.TextSize = 12.000 * scaleFactor
            SliderTitle.TextXAlignment = Enum.TextXAlignment.Left
            
            SliderHolderScript.CornerRadius = UDim.new(0, 5)
            SliderHolderScript.Name = "SliderHolderScript"
            SliderHolderScript.Parent = SliderHolder
            
            SliderButton.Name = "SliderButton"
            SliderButton.Parent = SliderHolder
            SliderButton.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
            SliderButton.BorderColor3 = Color3.fromRGB(15, 15, 15)
            SliderButton.BorderSizePixel = 0
            SliderButton.Position = UDim2.new(0.02, 0, 0.6, 0)
            SliderButton.Size = UDim2.new(0, 310 * scaleFactor, 0, 10 * scaleFactor)
            SliderButton.AutoButtonColor = false
            SliderButton.Font = Enum.Font.SourceSans
            SliderButton.Text = ""
            SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            SliderButton.TextSize = 14.000
            
            SliderButtonCorner.Name = "SliderButtonCorner"
            SliderButtonCorner.Parent = SliderButton
            
            SliderTrail.Name = "SliderTrail"
            SliderTrail.Parent = SliderButton
            SliderTrail.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            SliderTrail.BorderColor3 = Color3.fromRGB(40, 40, 40)
            SliderTrail.Size = UDim2.new((default - minvalue) / (maxvalue - minvalue), 0, 0, 10 * scaleFactor)
            
            SliderTrailCorner.Name = "SliderTrailCorner"
            SliderTrailCorner.Parent = SliderTrail
            
            SliderNumber.Name = "SliderNumber"
            SliderNumber.Parent = SliderHolder
            SliderNumber.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            SliderNumber.BackgroundTransparency = 1.000
            SliderNumber.BorderColor3 = Color3.fromRGB(17, 17, 17)
            SliderNumber.BorderSizePixel = 0
            SliderNumber.Position = UDim2.new(0.88, 0, 0.2, 0)
            SliderNumber.Size = UDim2.new(0, 40 * scaleFactor, 0, 8 * scaleFactor)
            SliderNumber.Font = Enum.Font.GothamSemibold
            SliderNumber.Text = tostring(default)
            SliderNumber.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderNumber.TextSize = 12.000 * scaleFactor
            SliderNumber.TextXAlignment = Enum.TextXAlignment.Right
             
            local mouse = game.Players.LocalPlayer:GetMouse()
            local uis = game:GetService("UserInputService")
            local Value

            SliderButton.MouseButton1Down:Connect(function()
                Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / SliderButton.AbsoluteSize.X) * SliderTrail.AbsoluteSize.X) + tonumber(minvalue)) or 0
                callback(Value)
                
                SliderTrail.Size = UDim2.new(0, math.clamp(mouse.X - SliderTrail.AbsolutePosition.X, 0, SliderButton.AbsoluteSize.X), 0, 10 * scaleFactor)
                
                local moveconnection = mouse.Move:Connect(function()
                    SliderNumber.Text = tostring(Value)
                    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / SliderButton.AbsoluteSize.X) * SliderTrail.AbsoluteSize.X) + tonumber(minvalue))
                    callback(Value)
                    
                    tweenService:Create(SliderHolder, TweenInfo.new(0.1), {
                        BackgroundColor3 = Color3.fromRGB(14, 14, 14)
                    }):Play()
                    
                    SliderTrail.Size = UDim2.new(0, math.clamp(mouse.X - SliderTrail.AbsolutePosition.X, 0, SliderButton.AbsoluteSize.X), 0, 10 * scaleFactor)
                end)
                
                local releaseconnection = uis.InputEnded:Connect(function(Mouse)
                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                        Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / SliderButton.AbsoluteSize.X) * SliderTrail.AbsoluteSize.X) + tonumber(minvalue))
                        callback(Value)
                        
                        tweenService:Create(SliderHolder, TweenInfo.new(0.2), {
                            BackgroundColor3 = Color3.fromRGB(17, 17, 17)
                        }):Play()
                        
                        SliderTrail.Size = UDim2.new(0, math.clamp(mouse.X - SliderTrail.AbsolutePosition.X, 0, SliderButton.AbsoluteSize.X), 0, 10 * scaleFactor)
                        moveconnection:Disconnect()
                        releaseconnection:Disconnect()
                    end
                end)
            end)
        end

        function PageElements:addTextBox(textboxname, textboxdefault, callback)
            local TextBoxHolder = Instance.new("Frame")
            local TextBoxTitle = Instance.new("TextLabel")
            local TextBox = Instance.new("TextBox")
            local TextBoxCorner = Instance.new("UICorner")
            local TextBoxHolderCorner = Instance.new("UICorner")

            callback = callback or function() end

            TextBoxHolder.Name = "TextBoxHolder"
            TextBoxHolder.Parent = Home
            TextBoxHolder.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            TextBoxHolder.BorderColor3 = Color3.fromRGB(17, 16, 16)
            TextBoxHolder.BorderSizePixel = 0
            TextBoxHolder.Position = UDim2.new(0.02, 0, 0, 0)
            TextBoxHolder.Size = UDim2.new(0, 330 * scaleFactor, 0, 30 * scaleFactor)
            
            TextBoxTitle.Name = "TextBoxTitle"
            TextBoxTitle.Parent = TextBoxHolder
            TextBoxTitle.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            TextBoxTitle.BackgroundTransparency = 1.000
            TextBoxTitle.BorderColor3 = Color3.fromRGB(17, 17, 17)
            TextBoxTitle.BorderSizePixel = 0
            TextBoxTitle.Position = UDim2.new(0.02, 0, 0.1, 0)
            TextBoxTitle.Size = UDim2.new(0, 200 * scaleFactor, 0, 25 * scaleFactor)
            TextBoxTitle.Font = Enum.Font.GothamSemibold
            TextBoxTitle.Text = textboxname or "Text Box"
            TextBoxTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextBoxTitle.TextSize = 12.000 * scaleFactor
            TextBoxTitle.TextXAlignment = Enum.TextXAlignment.Left
            
            TextBox.Parent = TextBoxHolder
            TextBox.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
            TextBox.Position = UDim2.new(0.65, 0, 0.15, 0)
            TextBox.Size = UDim2.new(0, 100 * scaleFactor, 0, 20 * scaleFactor)
            TextBox.Font = Enum.Font.GothamSemibold
            TextBox.Text = textboxdefault or ""
            TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextBox.TextSize = 12.000 * scaleFactor
            TextBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
            TextBox.ClearTextOnFocus = false
            
            TextBoxCorner.CornerRadius = UDim.new(0, 5)
            TextBoxCorner.Name = "TextBoxCorner"
            TextBoxCorner.Parent = TextBox
            
            TextBoxHolderCorner.CornerRadius = UDim.new(0, 5)
            TextBoxHolderCorner.Name = "TextBoxHolderCorner"
            TextBoxHolderCorner.Parent = TextBoxHolder

            TextBox.Focused:Connect(function()
                tweenService:Create(TextBoxHolder, TweenInfo.new(0.1), {
                    BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                }):Play()
            end)
            
            TextBox.FocusLost:Connect(function(enterPressed)
                tweenService:Create(TextBoxHolder, TweenInfo.new(0.2), {
                    BackgroundColor3 = Color3.fromRGB(17, 17, 17)
                }):Play()
                
                if enterPressed then
                    callback(TextBox.Text)
                end
            end)
        end

        function PageElements:addDropdown(dropdownname, list, scrollsize, callback)
            local DropdownHolder = Instance.new("Frame")
            local DropdownHolderCorner = Instance.new("UICorner")
            local DropdownTitle = Instance.new("TextLabel")
            local DropdownButton = Instance.new("TextButton")
            local DropdownIcon = Instance.new("ImageLabel")
            local DropdownContainer = Instance.new("Frame")
            local DropdownContainerCorner = Instance.new("UICorner")
            local DropdownOptionContainer = Instance.new("ScrollingFrame")
            local DropdownOptionContainerLayout = Instance.new("UIListLayout")

            callback = callback or function() end
            local DropDownEnabled = false
            list = list or {"Option 1", "Option 2"}

            DropdownHolder.Name = "DropdownHolder"
            DropdownHolder.Parent = Home
            DropdownHolder.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            DropdownHolder.BorderColor3 = Color3.fromRGB(17, 17, 17)
            DropdownHolder.BorderSizePixel = 0
            DropdownHolder.Position = UDim2.new(0.02, 0, 0, 0)
            DropdownHolder.Size = UDim2.new(0, 330 * scaleFactor, 0, 30 * scaleFactor)
            
            DropdownHolderCorner.CornerRadius = UDim.new(0, 5)
            DropdownHolderCorner.Name = "DropdownHolderCorner"
            DropdownHolderCorner.Parent = DropdownHolder
            
            DropdownTitle.Name = "DropdownTitle"
            DropdownTitle.Parent = DropdownHolder
            DropdownTitle.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            DropdownTitle.BackgroundTransparency = 1.000
            DropdownTitle.BorderColor3 = Color3.fromRGB(17, 17, 17)
            DropdownTitle.BorderSizePixel = 0
            DropdownTitle.Position = UDim2.new(0.02, 0, 0, 0)
            DropdownTitle.Size = UDim2.new(0, 250 * scaleFactor, 0, 30 * scaleFactor)
            DropdownTitle.Font = Enum.Font.GothamSemibold
            DropdownTitle.Text = dropdownname or "Dropdown"
            DropdownTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropdownTitle.TextSize = 12.000 * scaleFactor
            DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left
            
            DropdownButton.Name = "DropdownButton"
            DropdownButton.Parent = DropdownHolder
            DropdownButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownButton.BackgroundTransparency = 1.000
            DropdownButton.Size = UDim2.new(0, 330 * scaleFactor, 0, 30 * scaleFactor)
            DropdownButton.Font = Enum.Font.SourceSans
            DropdownButton.Text = ""
            DropdownButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            DropdownButton.TextSize = 14.000
            
            DropdownIcon.Name = "DropdownIcon"
            DropdownIcon.Parent = DropdownButton
            DropdownIcon.BackgroundTransparency = 1.000
            DropdownIcon.Position = UDim2.new(0.9, 0, 0.2, 0)
            DropdownIcon.Size = UDim2.new(0, 25 * scaleFactor, 0, 20 * scaleFactor)
            DropdownIcon.Image = "rbxassetid://3944690667"
            DropdownIcon.ScaleType = Enum.ScaleType.Fit
            
            DropdownContainer.Name = "DropdownContainer"
            DropdownContainer.Parent = DropdownHolder
            DropdownContainer.Active = true
            DropdownContainer.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            DropdownContainer.BorderColor3 = Color3.fromRGB(17, 17, 17)
            DropdownContainer.BorderSizePixel = 0
            DropdownContainer.ClipsDescendants = true
            DropdownContainer.Position = UDim2.new(0, 0, 1.2, 0)
            DropdownContainer.Size = UDim2.new(0, 330 * scaleFactor, 0, 5 * scaleFactor)
            DropdownContainer.Visible = false
            
            DropdownContainerCorner.CornerRadius = UDim.new(0, 6)
            DropdownContainerCorner.Name = "DropdownContainerCorner"
            DropdownContainerCorner.Parent = DropdownContainer
            
            DropdownOptionContainer.Name = "DropdownOptionContainer"
            DropdownOptionContainer.Parent = DropdownContainer
            DropdownOptionContainer.Active = true
            DropdownOptionContainer.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            DropdownOptionContainer.BackgroundTransparency = 1.000
            DropdownOptionContainer.BorderColor3 = Color3.fromRGB(17, 17, 17)
            DropdownOptionContainer.BorderSizePixel = 0
            DropdownOptionContainer.Position = UDim2.new(0, 0, 0.1, 0)
            DropdownOptionContainer.Size = UDim2.new(0, 330 * scaleFactor, 0, 10 * scaleFactor)
            DropdownOptionContainer.Visible = false
            DropdownOptionContainer.CanvasSize = UDim2.new(0, 0, scrollsize or 0.5, 0)
            DropdownOptionContainer.ScrollBarThickness = 4 * scaleFactor
            DropdownOptionContainer.ScrollBarImageColor3 = Color3.fromRGB(5, 5, 5)
            
            DropdownOptionContainerLayout.Name = "DropdownOptionContainerLayout"
            DropdownOptionContainerLayout.Parent = DropdownOptionContainer
            DropdownOptionContainerLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            DropdownOptionContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder
            DropdownOptionContainerLayout.Padding = UDim.new(0, 5 * scaleFactor)

            local function makeelements(bool)
                for i, v in pairs(Home:GetChildren()) do 
                    if v:IsA("Frame") and v ~= DropdownHolder then 
                        v.Visible = bool
                    end
                end
            end
            
            DropdownButton.MouseButton1Down:Connect(function()
                if DropDownEnabled == false then 
                    DropDownEnabled = true
                    makeelements(false)
                    DropdownContainer.Visible = true
                    
                    tweenService:Create(DropdownContainer, TweenInfo.new(0.2), {
                        Size = UDim2.new(0, 330 * scaleFactor, 0, 150 * scaleFactor)
                    }):Play()
                    
                    tweenService:Create(DropdownIcon, TweenInfo.new(0.2), {
                        ImageColor3 = Color3.fromRGB(137, 246, 255)
                    }):Play()
                    
                    wait(0.2)
                    DropdownOptionContainer.Visible = true
                    
                    tweenService:Create(DropdownOptionContainer, TweenInfo.new(0.2), {
                        Size = UDim2.new(0, 330 * scaleFactor, 0, 140 * scaleFactor)
                    }):Play()
                else
                    DropDownEnabled = false
                    
                    tweenService:Create(DropdownIcon, TweenInfo.new(0.2), {
                        ImageColor3 = Color3.fromRGB(255, 255, 255)
                    }):Play()
                    
                    tweenService:Create(DropdownOptionContainer, TweenInfo.new(0.2), {
                        Size = UDim2.new(0, 330 * scaleFactor, 0, 10 * scaleFactor)
                    }):Play()
                    
                    wait(0.2)
                    DropdownOptionContainer.Visible = false
                    
                    tweenService:Create(DropdownContainer, TweenInfo.new(0.2), {
                        Size = UDim2.new(0, 330 * scaleFactor, 0, 5 * scaleFactor)
                    }):Play()
                    
                    wait(0.2)
                    makeelements(true)
                    DropdownContainer.Visible = false
                end
            end)

            for i, v in pairs(list) do  
                local Option = Instance.new("TextButton")
                local OptionCorner = Instance.new("UICorner")

                Option.Name = "Option"
                Option.Parent = DropdownOptionContainer
                Option.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
                Option.BorderColor3 = Color3.fromRGB(15, 15, 15)
                Option.Position = UDim2.new(0.02, 0, 0, 0)
                Option.Size = UDim2.new(0, 320 * scaleFactor, 0, 25 * scaleFactor)
                Option.AutoButtonColor = false
                Option.Font = Enum.Font.GothamSemibold
                Option.Text = v
                Option.TextColor3 = Color3.fromRGB(255, 255, 255)
                Option.TextSize = 12.000 * scaleFactor
                
                OptionCorner.CornerRadius = UDim.new(0, 6)
                OptionCorner.Name = "OptionCorner"
                OptionCorner.Parent = Option

                Option.MouseEnter:Connect(function()
                    tweenService:Create(Option, TweenInfo.new(0.1), {
                        BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                    }):Play()
                end)
                
                Option.MouseLeave:Connect(function()
                    tweenService:Create(Option, TweenInfo.new(0.2), {
                        BackgroundColor3 = Color3.fromRGB(15, 15, 15)
                    }):Play()
                end)
                
                Option.MouseButton1Down:Connect(function()
                    for i, v in pairs(Option.Parent:GetChildren()) do
                        if v:IsA("GuiButton") and v ~= Option then
                            tweenService:Create(v, TweenInfo.new(0.1), {
                                TextColor3 = Color3.fromRGB(255, 255, 255)
                            }):Play()
                        end
                    end
                    
                    tweenService:Create(Option, TweenInfo.new(0.1), {
                        TextColor3 = Color3.fromRGB(137, 246, 255)
                    }):Play()
                    
                    DropDownEnabled = false
                    callback(v)
                    
                    tweenService:Create(DropdownIcon, TweenInfo.new(0.2), {
                        ImageColor3 = Color3.fromRGB(255, 255, 255)
                    }):Play()
                    
                    tweenService:Create(DropdownOptionContainer, TweenInfo.new(0.2), {
                        Size = UDim2.new(0, 330 * scaleFactor, 0, 10 * scaleFactor)
                    }):Play()
                    
                    wait(0.2)
                    DropdownOptionContainer.Visible = false
                    
                    tweenService:Create(DropdownContainer, TweenInfo.new(0.2), {
                        Size = UDim2.new(0, 330 * scaleFactor, 0, 5 * scaleFactor)
                    }):Play()
                    
                    wait(0.2)
                    makeelements(true)
                    DropdownContainer.Visible = false
                end)
            end
        end

        function PageElements:addKeybind(keybindname, defaultkey, callback)
            local KeybindHolder = Instance.new("Frame")
            local KeybindHolderCorner = Instance.new("UICorner")
            local KeybindTitle = Instance.new("TextLabel")
            local KeybindButton = Instance.new("TextButton")
            local KeybindButtonCorner = Instance.new("UICorner")

            callback = callback or function() end
            defaultkey = defaultkey or Enum.KeyCode.Unknown
            local currentKey = defaultkey
            local listening = false

            KeybindHolder.Name = "KeybindHolder"
            KeybindHolder.Parent = Home
            KeybindHolder.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            KeybindHolder.BorderColor3 = Color3.fromRGB(17, 17, 17)
            KeybindHolder.BorderSizePixel = 0
            KeybindHolder.Position = UDim2.new(0.02, 0, 0, 0)
            KeybindHolder.Size = UDim2.new(0, 330 * scaleFactor, 0, 30 * scaleFactor)
            
            KeybindHolderCorner.CornerRadius = UDim.new(0, 5)
            KeybindHolderCorner.Name = "KeybindHolderCorner"
            KeybindHolderCorner.Parent = KeybindHolder
            
            KeybindTitle.Name = "KeybindTitle"
            KeybindTitle.Parent = KeybindHolder
            KeybindTitle.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            KeybindTitle.BackgroundTransparency = 1.000
            KeybindTitle.BorderColor3 = Color3.fromRGB(17, 17, 17)
            KeybindTitle.BorderSizePixel = 0
            KeybindTitle.Position = UDim2.new(0.02, 0, 0, 0)
            KeybindTitle.Size = UDim2.new(0, 200 * scaleFactor, 0, 30 * scaleFactor)
            KeybindTitle.Font = Enum.Font.GothamSemibold
            KeybindTitle.Text = keybindname or "Keybind"
            KeybindTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            KeybindTitle.TextSize = 12.000 * scaleFactor
            KeybindTitle.TextXAlignment = Enum.TextXAlignment.Left
            
            KeybindButton.Name = "KeybindButton"
            KeybindButton.Parent = KeybindHolder
            KeybindButton.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
            KeybindButton.BorderColor3 = Color3.fromRGB(5, 5, 5)
            KeybindButton.Position = UDim2.new(0.75, 0, 0.15, 0)
            KeybindButton.Size = UDim2.new(0, 70 * scaleFactor, 0, 20 * scaleFactor)
            KeybindButton.AutoButtonColor = false
            KeybindButton.Font = Enum.Font.GothamSemibold
            KeybindButton.Text = tostring(defaultkey):gsub("Enum.KeyCode.", "")
            KeybindButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            KeybindButton.TextSize = 12.000 * scaleFactor
            
            KeybindButtonCorner.CornerRadius = UDim.new(0, 5)
            KeybindButtonCorner.Name = "KeybindButtonCorner"
            KeybindButtonCorner.Parent = KeybindButton

            KeybindButton.MouseButton1Click:Connect(function()
                listening = true
                KeybindButton.Text = "..."
                
                local connection
                connection = game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
                    if not gameProcessed then
                        if input.UserInputType == Enum.UserInputType.Keyboard then
                            currentKey = input.KeyCode
                            KeybindButton.Text = tostring(input.KeyCode):gsub("Enum.KeyCode.", "")
                            callback(currentKey)
                            listening = false
                            connection:Disconnect()
                        elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
                            currentKey = Enum.KeyCode.MouseButton1
                            KeybindButton.Text = "MouseButton1"
                            callback(currentKey)
                            listening = false
                            connection:Disconnect()
                        elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
                            currentKey = Enum.KeyCode.MouseButton2
                            KeybindButton.Text = "MouseButton2"
                            callback(currentKey)
                            listening = false
                            connection:Disconnect()
                        end
                    end
                end)
            end)
            
            game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
                if not gameProcessed and not listening and input.KeyCode == currentKey then
                    callback(currentKey)
                end
            end)
        end

        return PageElements
    end
    
    return PageYep
end

return Library
