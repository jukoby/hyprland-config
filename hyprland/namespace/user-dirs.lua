local user_dirs = {
    DESKTOP = "",
    DOWNLOAD = "",
    TEMPLATES = "",
    PUBLICSHARE = "",
    DOCUMENTS = "",
    MUSIC = "",
    PICTURES = "",
    VIDEOS = "",
}

for dir in pairs(user_dirs) do
    local handle, err = io.popen("xdg-user-dir " .. dir)
    if not handle then
        hl.notification.create({
            text = "Error getting user dirs: " .. err,
            timeout = 10,
            color = "#FF0000"
        })
        goto continue
    end
    user_dirs[dir] = handle:read("*a")
    ::continue::
end

return user_dirs