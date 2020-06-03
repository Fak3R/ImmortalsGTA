RegisterCommand("anon", function(source, args)
    TriggerServerEvent('anon', table.concat(args, " "))
     -- we have to concatenate the table because the 'args' cb return a table (array)
     -- the 2nd parameter in 'table.concat' is just spacing each args out
end)