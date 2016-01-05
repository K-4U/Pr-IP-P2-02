{include file="header.tpl" extracss="ucp.css"}

{if $errorMsg}
    <div class=" alert alert-danger col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
        {$errorMsg} </div>
{/if}

{if $page == 1}
    <div class="row">
        <div class="col-sm-9 col-sm-offset-3 col-md-8 col-md-offset-2 main well">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-md-offset-1">
                    <p>
                        Uw account is nu ge&uuml;pgraded naar een verkopersaccount. <br>
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
        <div class="col-sm-12 col-md-8 col-md-offset-2 main well">
            <form action="{$self}" method="post" class="form-inline">
                <div class="row">
                    <label for="authentication" class="labelsData col-md-3 col-sm-3 col-md-offset-1">Authenticatiecode:</label>
                    <div class="col-md-7 col-sm-7">
                        <input type="text" id="authentication" name="authentication" placeholder="0000000000" class="form-control">
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-md-offset-1">
                        <button class="btn btn-cta" type="submit" name="submit">Controleer</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
{/if}

{include file="footer.tpl"}