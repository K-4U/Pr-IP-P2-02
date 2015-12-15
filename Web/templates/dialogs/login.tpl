<div class="col-md-4 col-xs-12 loginBox well">
    {if $loginError}
        <div class=" alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>{$loginError} </div>
    {/if}
    <div class="col-md-6 col-sm-6 col-md-offset-3 col-sm-offset-3">

        <form action="{baseurl url="Users/Login"}" method="post">
            <input type="text" placeholder="Gebruikersnaam" id="username" name="username" class="form-control"><br>
            <input type="password" placeholder="Wachtwoord" id="password" name="password" class="form-control"><br>

            <div style="text-align:center">
                <button class="btn btn-primary" type="submit"><span class="fa fa-lock"></span> Login</button>
            </div>
        </form>
    </div>
</div>