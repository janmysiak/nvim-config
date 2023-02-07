local orgmode_ok, orgmode = pcall(require, "orgmode")

if not orgmode_ok then
	return
end

orgmode.setup_ts_grammar()
