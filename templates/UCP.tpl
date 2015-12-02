{include file="header.tpl"}

<div class="col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2 ">
    <div class="col-md-5 col-sm-5">
        <div class="row">
            <img class="col-md-5 col-sm-5" src="{$userGravatar}"/>

            <div class="UCP col-md-7 col-sm-7">
                {$user.firstname} {$user.lastname}
                <br>
                <br>
                {$user.city}, {$user.country}
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
        </fieldset>
    </div>
</div>


{include file="footer.tpl"}