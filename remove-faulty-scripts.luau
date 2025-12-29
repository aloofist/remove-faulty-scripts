local name_to_remove = "qPerfectionWeld"
local count = 0
for _, object in ipairs(game:GetDescendants()) do
    -- Use pcall in case some services are locked or restricted
    pcall(function()
        if object.Name == name_to_remove and (object:IsA("Script") or object:IsA("LocalScript") or object:IsA("ModuleScript")) then
            print("Deleting:", object:GetFullName())
            object:Destroy()
            count = count + 1
        end
    end)
end
print(count, "items named", name_to_remove, "deleted.")
