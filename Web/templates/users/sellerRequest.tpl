{include file="header.tpl" extracss="ucp.css"}

{if $errorMsg}
    <div class=" alert alert-danger col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
        {$errorMsg} </div>
{/if}

{if $page == -1}
    <div class="row">
        <div class="col-sm-9 col-sm-offset-3 col-md-8 col-md-offset-2 main well">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-md-offset-1">
                    <p>
                        Klik hier om terug te gaan naar het User Control Panel.
                    </p>
                </div>
            </div>
            <br>
            <form action="{baseurl url="Users/CP"}">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-md-offset-1">
                        <input type = "submit" value = " Terug " class="btn btn-cta">
                    </div>
                </div>
            </form>
        </div>
    </div>
{/if}

{if $page == 0}
    <div class="row">
        <div class="col-sm-9 col-sm-offset-3 col-md-8 col-md-offset-2 main well">
            <form action="{$self}" method="post" class="form-inline">
                <div class="row">
                    <div class="col-md-2 col-sm-3 col-md-offset-1">
                        <label for="banknummer" class="labelsData">Rekeningnummer:</label>
                    </div>
                    <div class="cold-md-7">
                        <input type="text" id="banknumber" name="banknumber" placeholder="NL00 AAAA 0000 0000 00" class="form-control" pattern="{literal}[a-zA-Z]{2}[0-9]{2}[a-zA-Z0-9]{4}[0-9]{7}([a-zA-Z0-9]?){0,16}{/literal}">
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-md-offset-1">
                        <h5>Verificatie methode:</h5>
                        <input type="radio" name="verificationType" value="0" id="creditcard">
                        <label for="creditcard">Creditcard</label>
                        <br>
                        <input type="radio" name="verificationType" value="1" id="post">
                        <label for="post">Post</label>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-md-offset-1">
                        <button class="btn btn-cta" type="submit" name="submit_1">Volgende Stap</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
{/if}

{if $page == 1}
    <div class="row">
        <div class="col-sm-9 col-sm-offset-3 col-md-8 col-md-offset-2 main well">
            <form action="{$self}" method="post" class="form-inline">
                <div class="row">
                    <div class="col-md-2 col-sm-3 col-md-offset-1">
                        <label for="creditcard" class="labelsData">Creditcard:</label>
                    </div>
                    <div class="cold-md-7">
                        <input type="text" id="creditcard" name="creditcard" class="form-control">
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-md-offset-1">
                        <button class="btn btn-cta" type="submit" name="submit_2">Volgende Stap</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
{/if}

{if $page == 2}
    <div class="row">
        <div class="col-sm-9 col-sm-offset-3 col-md-8 col-md-offset-2 main well">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-md-offset-1">
                    <h3>Adres per post verifiëren</h3>
                    <p>
                        Er wordt per post een brief naar het bij ons bekende adres gestuurd.<br>
                        Hierin staat een activatiecode om uw adres te verifiëren. <br>
                        Pas wanneer u de code invoert kunt u producten op deze site aanbieden.
                    </p>
                </div>
            </div>
            <form action="{$self}" method="post">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-md-offset-1">
                        <button class="btn btn-cta" type="submit" name="submit_3">Volgende Stap</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
{/if}

{if $page == 3}
    <div class="row">
        <div class="col-sm-9 col-sm-offset-3 col-md-8 col-md-offset-2 main well">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-md-offset-1">
                    <p>
                        Uw aanvraag is ontvangen. Uw account wordt zo snel mogelijk geupgrade naar een verkopersaccount. <br>
                        <br>
                        Als u de optie per post heeft geselecteerd krijgt u binnenkort een brief thuisgestuurd. <br>
                        In deze brief staat dan de verificatiecode om uw aanvraag af te ronden.
                    </p>
                </div>
            </div>
            <br>
            <form action="{baseurl url="Users/CP"}">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-md-offset-1">
                        <input type = "submit" value = " Afronden " class="btn btn-cta">
                    </div>
                </div>
            </form>
        </div>
    </div>
{/if}

{include file="footer.tpl"}