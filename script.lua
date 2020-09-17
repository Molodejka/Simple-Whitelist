getgenv().Key = "Hey" -- this key valid btw





local api = "https://yoursite.net/server.php"
local keycheck = syn.request(
    {
        Url = api, -- This website will check for key
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/x-www-form-urlencoded"
        },
        Body = "key=" .. getgenv().Key .. "" -- its body request for key
    }
)


if keycheck.Body == "whitelisted" then
    print'hey bro you now whitelisted'
else
    print'no bro your key doesnt exist in base'
end