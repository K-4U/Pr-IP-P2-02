{include file="header.tpl" extracss="ucp.css"}

<div class="row">
    <div class="col-sm-9 col-sm-offset-3 col-md-8 col-md-offset-2 main">
        <p> HALLO </p>
    </div>
</div>


{if $page == 0}
    <div class="row">
        <div class="col-sm-9 col-sm-offset-3 col-md-8 col-md-offset-2 main">
            <form action="{$self}" method="post" class="form-inline">
                <div class="row">
                    <div class="col-md-2 col-sm-3 col-md-offset-1">
                        <label for="banknummer" class="labelsData">Rekeningnummer:</label>
                    </div>
                    <div class="cold-md-7">
                        <input type="text" id="banknumber" name="banknumber" class="form-control">
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
        <div class="col-sm-9 col-sm-offset-3 col-md-8 col-md-offset-2 main">
            <form action="{$self}" method="post">
                <label for="creditcard" class="col-md-4 col-sm-4 labelsData">Creditcard:</label>
                <div class="col-md-8 col-sm-8">
                    <input type="text" id="creditcard" name="creditcard" class="form-control">
                </div>
                <button class="btn btn-cta" type="submit" name="submit_2">Volgende Stap</button>
            </form>
        </div>
    </div>
{/if}

{if $page == 2}
    <p>
        Ja, ik wil mijn adres per post verifiëren.
        Stuur mij een brief met een authenticatiecode.
    </p>
    <form action="{$self}" method="post">
        <button class="btn btn-cta" type="submit" name="submit_3">Volgende Stap</button>
    </form>
{/if}

{if $page == 3}
 <p>succes</p>
{/if}


{$page}


{include file="footer.tpl"}