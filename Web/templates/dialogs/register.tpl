<div class="col-md-4 col-xs-12 loginBox well">
    {if $emailError}
        <div class=" alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
            {$emailError}
        </div>
    {/if}
    <div class="col-md-offset-2 col-sm-offset-2 col-md-8 col-sm-8 listPadding">
        <form action={baseurl url="Register/emailVerification"} method="post">
            <div class="row">
                <label for="email" class=" col-md-4 col-sm-4">Email:</label>

                <div class="col-md-8 col-sm-8">
                    <input type="email" id="email" name="email"
                           class="form-control" required>
                </div>
            </div>
            <div class="text-center login-register">
                <button class="btn-default btn" type="submit" name="saveEmail">E-mail verifiëren</button>
            </div>

        </form>
    </div>
</div>