{include file="header.tpl" extracss="UCP.css"}

<div class="well col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2 ">
    <div class="col-md-5 col-sm-5">
        <div class="row">
            <img class="col-md-5 col-sm-5" src="{$userGravatar}"/>

            <div class="UCP col-md-7 col-sm-7">
                {$user.firstname} {$user.lastname}
                <br>
                <br>

                <div class="userLocation">{$CP.city}, {$CP.country}
                </div>
            </div>
        </div>
        <div class="accountActies row">
            <fieldset class="row">
                <legend>Account acties</legend>
                <ul class="listTypeNone">
                    <li class="listPadding">Verkopersaccount
                        <ul class="listTypeNone">
                            <li class="listPadding"><a href="#">Verkopersaccount aanmaken</a></li>
                            <li class="listPadding"><a href="#">Authenticatiecode invoeren</a></li>
                        </ul>
                    </li>
                    <li class="listPadding">Veilingen
                        <ul class="listTypeNone">
                            <li class="listPadding"><a href="#">Mijn feedback</a></li>
                            <li class="listPadding"><a href="#">Mijn biedingen</a></li>
                            <li class="listPadding"><a href="#">Mijn kavels</a></li>
                        </ul>
                    </li>
                </ul>
            </fieldset>
        </div>
    </div>
    <div class="col-md-7 col-sm-7">
        <fieldset>
            <legend>Uw gegevens</legend>

            <div class="row "><label for="username" class="col-md-4 col-sm-4 labelsGegevens">Gebruikersnaam:</label>

                <div class="col-md-8 col-sm-8"><input
                            type="text" value="{$user.username}" id="username" name="username"
                            class="form-control"></div>
            </div>
            <div class="row"><label for="firstname" class=" col-md-4 col-sm-4 labelsGegevens">Voornaam:</label>

                <div class="col-md-8 col-sm-8"><input type="text" value="{$user.firstname}"
                                                      id="firstname" name="firstname"
                                                      class="form-control"></div>
            </div>
            <div class="row"><label for="lastname" class=" col-md-4 col-sm-4 labelsGegevens">Achternaam:</label>

                <div class="col-md-8 col-sm-8"><input type="text" value="{$user.lastname}"
                                                      id="lastname" name="lastname"
                                                      class="form-control"></div>
            </div>
            <div class="row"><label for="adress_street1" class="col-md-4 col-sm-4 labelsGegevens">Adres:</label>

                <div class="col-md-8 col-sm-8"><input type="text" value="{$CP.adress_street1}" id="adress_street1"
                                                      class="form-control"></div>


            </div>
            <div class="row">
                <div class=" col-md-offset-4 col-sm-offset-4 col-md-8 col-sm-8"><input type="text"
                                                                                       value="{$CP.adress_street2}"
                                                                                       id="adress_street2"
                                                                                       class="form-control"></div>
            </div>
            <div class=" row"><label for="postalcode"
                                     class="col-md-4 col-sm-4 labelsGegevens">Postcode:</label>

                <div class=" col-md-2 col-sm-2"><input type="text" value="{$CP.postalcode}"
                                                       id="postalcode"
                                                       class="form-control">
                </div>
                <label for="adress_number"
                       class="col-md-2 col-sm-2 huisnrLabel labelsGegevens">Huisnr:</label>

                <div class="col-md-2 col-sm-2">
                    <input type="text" value="{$CP.adress_number}" id="huisnummer" class="form-control">
                </div>
            </div>
            <div class="row"><label for="phonenumber" class="col-md-4 col-sm-4 labelsGegevens">Telefoonnummer:</label>

                <div class="col-md-8 col-sm-8"><input type="number" value="{$phonenumber.phonenumber}" id="phonenumber"
                                                      class="form-control"></div>
            </div>
            <fieldset>
                <legend>Wachtwoord veranderen</legend>
            </fieldset>
            <fieldset>
                <legend>Veiligheidsvraag veranderen</legend>
            </fieldset>
        </fieldset>
    </div>
</div>


{include file="footer.tpl"}