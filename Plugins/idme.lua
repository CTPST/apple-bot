do

function run(msg, matches)
  return " Your Id?? : ' .. msg.from.id .. '"
end

return {
    patterns = {
    "^[!/]([Ii]dme)$",

  },
  run = run
}

end
