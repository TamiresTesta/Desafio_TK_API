Dado("o endereço da API") do
    #já instanciado pela classe
end

Quando("realizar uma requisição") do
    $get = @TkApiTest.getPokemonCharmander()
    
    expect($get.code).to eq(200)
end

Então("a API irá validar a existência da ability 'blaze' e se a propriedade 'is_hidden' é igual a false") do
    data = $get["abilities"]
    test_blaze = false

    blaze = data.select { |a| a['ability']['name'] == "blaze" }

    if (blaze.length() > 0 && blaze[0]["is_hidden"] == false)
        test_blaze = true
    end

    #ASSERTS
    expect(test_blaze).to eq(true) 
end

E ("a API irá validar a existência da ability 'solar-power' e se a propriedade 'is_hidden' é igual a true") do
    data = $get["abilities"]
    test_solar = false

    solar = data.select { |a| a['ability']['name'] == "solar-power" }

    if (solar.length() > 0 && solar[0]["is_hidden"] == true)
        test_solar = true
    end

    #ASSERTS
    expect(test_solar).to eq(true) 
end