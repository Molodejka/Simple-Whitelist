response_Cc = "whitelisted"

local old2 = syn.request
setreadonly(syn, false)
syn.request = function(data)
   local response = old2(data)
   response.Body = response_Cc
   return response
end
