<div class="col-md-4 loginBox well">
    {if $loginError}
        <div class=" alert alert-danger"> {$loginError} </div>
    {/if}
    <div class="col-md-6 col-sm-6 col-md-offset-3 col-sm-offset-3">

        <form action="{baseurl url="Users/Login"}" method="post">
            <input type="text" placeholder="Gebruikersnaam" id="username" name="username" class="form-control"><br>
            <input type="password" placeholder="Wachtwoord" id="password" name="password" class="form-control"><br>
            <div style="text-align:center"><button class="btn btn-primary" type="submit"><img src="/ic/lock.png"> Login</button></div>
        </form>
    </div>
</div>