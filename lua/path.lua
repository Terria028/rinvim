local mason_path = os.getenv("MASON_PATH")
local extension_path = function(name)
  return mason_path .. "\\packages\\" .. name .. "\\extension\\"
end
local path = {
  mason_path = mason_path,
  codelldb_path = extension_path("codelldb") .. "adapter\\codelldb",
  lldb_lib_path = extension_path("codelldb") .. "adapter\\liblldb.dll",
}

return path
