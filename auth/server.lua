local ipuser = "177.92.55.129" -- IP DO CLIENTE
local Autorizado = false -- VARIAVEL PARA VER SE O SCRIPT FOI AUTORIZADO
PerformHttpRequest("http://api.ipify.org",function(err,data) -- API
    local ip = data -- SETA A VARIAVEL "ip" COM OS VALORES DO "data"
    if err >= 200 and err <=299 then -- VERIFICA SE NÃO DEU NENHUM ERRO COM A API
        if ip == ipuser then -- VERIFICA SE O IP É IGUAL AO IP DO CLIENTE
            print("^2IP autorizado^7") -- PRINTAR MENSAGEM QUANDO FOR AUTORIZADO
            Autorizado = true -- SETAR VARIAVEL QUANDOR FOR AUTORIZADO
        else 
            print("^1IP não autorizado^7") -- PRINTAR MENSAGEM QUANDO NÃO FOR AUTORIZADO
        end
    else 
        print("^1ERROR "..err.."^7") -- PRINTAR ERRO DA API
    end
end)

function function_name() -- FUNÇÃO DE EXEMPLO
    if Autorizado == true then 
        local source = source 
        local user_id = vRP.getUserId(source)
        if user_id then
        end
    end
end