--LotJMSDPHelper.lua

--[[

This file is used to facilitate variable calls to LotJMSDPHandler.
To use MSDP variables in your plugin:

1. Save this file into your MUSHclient\lua folder.
2. Insert somewhere into your code: require "LotJMSDPHelper"
3. When you want to retrieve an MSDP variable, use this syntax:
   myVariable = getmsdp("VARIABLE NAME")

--]]


--==============================================================================
-- function used to retrieve information from LotJMSDPHandler
-- This is a safe function, it will never return a nil value.
--==============================================================================

function getmsdp(fieldname)
  if not IsConnected() then
    return ""
  end

	assert (fieldname, "nil fieldname passed to getmsdp()")
	
	rc, result = CallPlugin("b3aae34498d5bf19b5b2e2af","msdpval",fieldname)
	
	if result ~= nil then
	  return result
	else
	  return ""
	end
end
