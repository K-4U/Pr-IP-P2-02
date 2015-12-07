{include file="header.tpl" extracss="UCP.css"}
{if $lastError!= null}
    <div class=" alert alert-danger alert-dismissible col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                    aria-hidden="true">&times;</span></button> {$updateInfoError} </div>
{/if}
{if $errorMsg}
    <div class=" alert alert-danger alert-dismissible col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                    aria-hidden="true">&times;</span></button> {$errorMsg} </div>
{/if}
{if $updateComplete}
    <div class=" alert alert-success alert-dismissible col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                    aria-hidden="true">&times;</span></button> Account gegevens zijn aangepast. </div>
{/if}
<div class="well col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2 ">
    <div class="col-md-5 col-sm-5 ">
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
            <div class="row">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Account acties</div>
                    </div>
                    <div class="panel-body">
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
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-7 col-sm-7 ">
        <form action="{$self}" method="post">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">Uw gegevens</div>
                </div>
                <div class="panel-body">

                    <div class="row ">

                        <label for="username" class="col-md-4 col-sm-4 labelsGegevens">Gebruikersnaam:</label>

                        <div class="col-md-8 col-sm-8">
                            <input type="text" disabled value="{$user.username}" id="username" name="username"
                                   class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <label for="firstname" class=" col-md-4 col-sm-4 labelsGegevens">Voornaam:</label>

                        <div class="col-md-8 col-sm-8">
                            <input type="text" value="{$user.firstname}" id="firstname" name="firstname"
                                   class="form-control" required>
                        </div>
                    </div>
                    <div class="row">
                        <label for="lastname" class=" col-md-4 col-sm-4 labelsGegevens">Achternaam:</label>

                        <div class="col-md-8 col-sm-8">
                            <input type="text" value="{$user.lastname}" id="lastname" name="lastname"
                                   class="form-control" required>
                        </div>
                    </div>
                    <div class="row">

                        <label for="adress_street1" class="col-md-4 col-sm-4 labelsGegevens">Adres:</label>

                        <div class="col-md-8 col-sm-8">
                            <input type="text" value="{$CP.adress_street1}" id="adress_street1" name="adress_street1"
                                   class="form-control" required></div>
                    </div>
                    <div class="row">
                        <div class=" col-md-offset-4 col-sm-offset-4 col-md-8 col-sm-8">
                            <input type="text" value="{$CP.adress_street2}" id="adress_street2" name="adress_street2"
                                   class="form-control">
                        </div>
                    </div>
                    <div class=" row">
                        <label for="postalcode" class="col-md-4 col-sm-4 labelsGegevens">Postcode:</label>

                        <div class=" col-md-2 col-sm-4">
                            <input type="text" value="{$CP.postalcode}" id="postalcode" name="postalcode"
                                   class="form-control" required>
                        </div>

                        <label for="adress_number" class="col-md-2 col-sm-2 huisnrLabel labelsGegevens">Huisnr:</label>

                        <div class="col-md-2 col-sm-4">
                            <input type="text" value="{$CP.adress_number}" id="adress_number" name="adress_number"
                                   class="form-control" required>
                        </div>
                    </div>
                    <div class="row">
                        <label for="phonenumber" class="col-md-4 col-sm-4 labelsGegevens">Telefoonnummer:</label>

                        <div class="col-md-8 col-sm-8">
                            <input type="text" value="{$phonenumber.phonenumber}" id="phonenumber" name="phonenumber"
                                   class="form-control" required>
                        </div>
                    </div>
                    <br>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-title">Wachtwoord veranderen</div>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <label for="currentPassword" class="col-md-6 col-sm-6">Uw huidige wachtwoord:</label>

                                <div class="col-md-6 col-sm-6">
                                    <input type="password" placeholder="huidige wachtwoord" id="currentPassword"
                                           name="currentPassword" class="form-control" >
                                </div>
                            </div>
                            <div class="row">
                                <label for="newPassword" class="col-md-6 col-sm-6">Uw nieuwe wachtwoord:</label>
                                <label for="newPassword2" class="col-md-6 col-sm-6">herhaal uw nieuwe
                                    wachtwoord:</label>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <input type="password" placeholder="nieuw wachtwoord"
                                           id="newPassword" name="newPassword" class="form-control">
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <input type="password" placeholder="herhaling nieuw wachtwoord"
                                           id="newPassword2" name="newPassword2" class="form-control"><br>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-title">Veiligheidsvraag veranderen</div>
                        </div>
                        <div class="panel-body">
                            <select id="securityQuestions" name="securityQuestions">
                                <option value="-1" selected></option>
                                {foreach $questions as $question}
                                    <option value="{$question.id}">{$question.question}</option>
                                {/foreach}
                            </select>
                            <br><br>
                            <input type="text" id="questionAnswer" name="questionAnswer" class="form-control"><br>
                        </div>
                    </div>

                    <button class="btn" type="submit" name="submit">Opslaan</button>
                </div>
            </div>
        </form>
    </div>
</div>


{include file="footer.tpl"}