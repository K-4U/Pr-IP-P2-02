{include file="header.tpl" extracss=""}

<div class="col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
    <div class="col-md-4 col-sm-4">
    <form action="{baseurl url="Register/Info"}" method="post">
        <label for="emailVerificationCode">Ge-e-mailde code:</label>
        <input type="text" name="emailVerificationCode" class="form-control" required><br>
        <button class="btn btn-default" type="submit" name="validateCode">Check verification code</button>
    </form>
    </div>
</div>

{include file="footer.tpl" extracss=""}