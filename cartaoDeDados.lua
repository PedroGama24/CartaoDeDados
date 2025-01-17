--[[

Nome da Criatura
Descrição
Som que faz
Atributos
    Ataque
    Defesa
    Vitalidade
    Velocidade
    Inteligência
Habiliadades
    Furia

=================================================================
|
| ZOMBIE
|  Um monsto muito perigoso que se move em direção ao jogador.
|
| Som: AHHHHHHHH
| 
|   Atributos:
|       Ataque: ######00
|       Defesa: ###00000
|       .......
|
|
================================================================

]]

-- Habilitar no terminal UTF-8
os.execute("chcp 65001")

-- Dados do monstro
local monsterName = "ZUMBI"
local description = "Um monsto muito perigoso que se move em direcao ao jogador."
local emoji = "🧟"
local sound = "AHHHHHHHH"
local spawnTime = "Noite"
local itemDrop = "Carne Zumbi"
local monsterLevel = 2
local locationSpawn = "Floresta, Cemitério, Ruas"
local specialAbilities = "Furia"


-- Atributos
local attackAtribute = 4
local defenseAtribute = 5
local vitalityAtribute = 5
local speedAtribute = 3
local intelligenceAtribute = 1


-- função que recebe um atribuio e retorna uma barra de progresso em string /texto

local function getProgressBar(attribute)
    local fullChar = "⚪"
    local emptyChar = "⚫"


    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result..fullChar
        else
            result = result..emptyChar
        end
    end
    return result
end


-- Cartão
print("=================================================================")
print("| ")
print("| ")
print("| "..monsterName)
print("| "..description)
print("| ")
print("| Emoji Favorito:"..emoji)
print("| Horario do Spawn:"..spawnTime)
print("| Som:"..sound)
print("| Item Dropado:"..itemDrop)
print("| Nivel do Monsto:"..getProgressBar(monsterLevel))
print("| Local de Spawn:"..locationSpawn)
print("| Habilidade Special:"..specialAbilities)
print("| ")
print("|  Atributos:")
print("|        Ataque:         "..getProgressBar(attackAtribute))
print("|        Defesa:         "..getProgressBar(defenseAtribute))
print("|        Vitalidade:     "..getProgressBar(vitalityAtribute))
print("|        Velocidade:     "..getProgressBar(speedAtribute))
print("|        Inteligência:   "..getProgressBar(intelligenceAtribute))
print("| ")
print("=================================================================")

