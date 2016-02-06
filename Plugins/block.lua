local function block_user_callback(cb_extra, success, result)
  local receiver = cb_extra.receiver
  local user = 'user@UserName'..result.id
  if success == 0 then
    return send_large_msg(receiver, "Eror 601")
  end
  block_user(user, cb_ok, false)
end
end
local function run(msg, matches)
 if msg.to.type == 'chat' then
    local user = 'chat@UserName'..msg.to.id
 local user = matches[2]
  if matches[1] == "user" then
      user = 'user#id'..user
      block_user(user, callback, false)
    end
    if not is_admin(msg) then
    return "Admin Only??"
  end
    return "successlful Arisharr"
  end
end
 
return {
  patterns = {
    "^[!/]([Bb]lock) (user) (%d+)$",
  },
  run = run,
