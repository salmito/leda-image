local imlua=require'imlua'

local meta=leda.getmetatable("imImage")

if type(meta)=="table" then
  function meta.__persist()
    error("Cannot pass an image to another process")
  end
  function meta.__wrap(image)
    local ptr=image:Release()
    return function() 
    	local im=require'leda_imlua'
      return im.RestoreImage(ptr)
    end
  end
end

return imlua
