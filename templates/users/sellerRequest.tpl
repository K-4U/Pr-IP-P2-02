{include file="header.tpl" extracss="ucp.css"}

<div class="row">
   <p> HALLO </p>
</div>

<form action="{$self}" method="post">
   <label for="banknummer" class="col-md-4 col-sm-4 labelsData">Rekeningnummer:</label>



   <div class="col-md-8 col-sm-8">
      <input type="text" id="banknumber" name="banknumber" class="form-control">
   </div>

   <div>
         <input type="radio" name="verificationType" value="0" >Creditcard
         <br>
         <input type="radio" name="verificationType" value="1">Post
   </div>

   <button class="btn btn-cta" type="submit" name="submit_1">Volgende Stap</button>

</form>

{include file="footer.tpl"}