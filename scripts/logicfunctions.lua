function magicSeal(seal)
    local count = Tracker:ProviderCountForCode("magicsealsrequired")
    if count == 1 then
        count = Tracker:ProviderCountForCode(seal)
    else
        count = 1
    end
    return count == 1
end

function magicSealTwo()
    return magicSeal("magicsealtwo")
end

function magicSealThree()
    return magicSeal("magicsealthree")
end

function magicSealFour()
    return magicSeal("magicsealfour")
end

function magicSealFive()
    return magicSeal("magicsealfive")
end