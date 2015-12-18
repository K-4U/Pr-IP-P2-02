{include file="header.tpl" extracss=""}

<div class="col-md-8 col-sm-12 col-md-offset-2 col-sm-offset-0">
    <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
        {if $wrongCode}
            <div class=" alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>{$wrongCode} </div>
        {/if}
        {if $errors}
            {foreach $errors as $key => $value}
                <div class=" alert alert-danger alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>{$value} </div>
            {/foreach}
        {/if}
        {if !$wrongCode}
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">Registratie gegevens</div>
                </div>
                <div class="panel-body">
                    <form action="{$self}" method="post" name="registerInfo">
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                De gebruikersnaam moet 4 tot 12 characters lang zijn, het is hoofdlettergevoelig en mag
                                alle tekens bevatten.
                            </div>
                            <label for="username" class="col-md-4 col-sm-4 labelsGegevens">Gebruikersnaam:</label>

                            <div class="col-md-8 col-sm-8">
                                <input type="text" id="username" name="username" value="{$previousInfo.username}"
                                       class="form-control" required>
                            </div>
                        </div>
                        <div class="row">
                            <label for="firstname" class=" col-md-4 col-sm-4 labelsGegevens">Voornaam:</label>

                            <div class="col-md-8 col-sm-8">
                                <input type="text" id="firstname" name="firstname" value="{$previousInfo.firstname}"
                                       class="form-control" required>
                            </div>
                        </div>
                        <div class="row">
                            <label for="lastname" class=" col-md-4 col-sm-4 labelsGegevens">Achternaam:</label>

                            <div class="col-md-8 col-sm-8">
                                <input type="text" id="lastname" name="lastname" value="{$previousInfo.lastname}"
                                       class="form-control" required>
                            </div>
                        </div>
                        <div class="row">

                            <label for="adress_street1" class="col-md-4 col-sm-4 labelsGegevens">Adres:</label>

                            <div class="col-md-8 col-sm-8">
                                <input type="text" id="adress_street1" name="adress_street1" value="{$previousInfo.adress_street1}"
                                       class="form-control" required></div>
                        </div>
                        <div class="row">
                            <div class=" col-md-offset-4 col-sm-offset-4 col-md-8 col-sm-8">
                                <input type="text" id="adress_street2" name="adress_street2" value="{$previousInfo.adress_street2}"
                                       class="form-control">
                            </div>
                        </div>
                        <div class=" row">
                            <label for="postalcode" class="col-md-4 col-sm-4 labelsGegevens">Postcode:</label>

                            <div class=" col-md-2 col-sm-8">
                                <input type="text" id="postalcode" name="postalcode" value="{$previousInfo.postalcode}"
                                       class="form-control" required>
                            </div>

                            <label for="adress_number"
                                   class="col-md-2 col-sm-4 col-md-offset-1 huisnrLabel labelsGegevens">Huisnr:</label>

                            <div class="col-md-2 col-sm-8 col-md-offset-1">
                                <input type="text" id="adress_number" name="adress_number" value="{$previousInfo.adress_number}"
                                       class="form-control" required>
                            </div>
                        </div>
                        <div class="row">
                            <label for="phonenumber" class="col-md-4 col-sm-4 labelsGegevens">Telefoonnummer:</label>

                            <div class="col-md-8 col-sm-8">
                                <input type="number" id="phonenumber" name="phonenumber" value="{$previousInfo.phonenumber}"
                                       class="form-control">
                            </div>
                        </div>
                        <div class="row">
                            <label for="birthdate" class="col-md-4 col-sm-4 labelsGegevens">Geboortedatum:</label>

                            <div class="col-md-8 col-sm-8">
                                <input type="date" id="birthdate" name="birthdate" value="{$previousInfo.birthdate}"
                                       class="form-control">
                            </div>
                        </div>
                        <div class="row">
                            <label for="city" class="col-md-4 col-sm-4 labelsGegevens">Plaatsnaam:</label>

                            <div class="col-md-8 col-sm-8">
                                <input type="text" id="city" name="city" value="{$previousInfo.city}"
                                       class="form-control">
                            </div>
                        </div>
                        <div class="row">
                            <label for="country" class="col-md-4 col-sm-4 labelsGegevens">Land:</label>

                            <div class="col-md-8 col-sm-8">
                                <input type="text" id="country" name="country" value="{$previousInfo.country}"
                                       class="form-control">
                            </div>
                        </div>
                        <br>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="panel-title">Wachtwoord instellen</div>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-12 col-sm-12">
                                        Wachtwoord moet een lengte hebben van minimaal 7 tekens, het mag zowel letters als cijfers bevatten en is hoofdlettergevoelig.
                                    </div>
                                    <label for="password" class="col-md-6 col-sm-6">Uw wachtwoord:</label>
                                    <label for="password2" class="col-md-6 col-sm-6">herhaal uw wachtwoord:</label>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 col-sm-6">
                                        <input type="password" placeholder="wachtwoord"
                                               id="password" name="password" class="form-control" required>
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <input type="password" placeholder="herhaling wachtwoord"
                                               id="password2" name="password2" class="form-control" required><br>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="panel-title">Veiligheidsvraag instellen</div>
                            </div>
                            <div class="panel-body">
                                <div class="col-md-8 col-sm-12">
                                    <select id="securityQuestions" name="securityQuestions" class="form-control"
                                            required>
                                        <option value="-1" selected></option>
                                        {foreach $questions as $question}
                                            <option value="{$question.id}">{$question.question}</option>
                                        {/foreach}
                                    </select>
                                    <input type="text" id="questionAnswer" name="questionAnswer" class="form-control"
                                           placeholder="Vul hier uw antwoord in." required><br>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="validateCode" value="true">
                        <input type="hidden" name="email" value="{$email}">
                        <input type="hidden" name="emailVerificationCode" value="{$emailVerificationCode}">
                        <input type="hidden" name="validateCode" value="{$validateCode}">

                        <div class="g-recaptcha" data-sitekey="6LcL4xITAAAAABLF4j9PUpzBP57RlffxPpDU3UcN" required></div><br>
                        <button class="btn btn-default" type="submit" name="registerInfo">Account aanmaken</button>
                    </form>
                </div>
            </div>
        {/if}
    </div>


{include file="footer.tpl" extracss=""}