{include file="header.tpl" extracss='lot.css'}

<div class="col-md-offset-2 col-md-8 well">
    <div class="row">
        <div class="col-md-8">
            <h2>{$object.title}</h2>
        </div>
        <div class="pull-right col-md-2">objectnummer {$object.id}</div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <img src="{$object.image}" class="col-md-12" />
        </div>
        <div class="col-md-3 col-md-offset-1">
            <div class="row">
                <div class="col-md-12 well">
                    Tot: {date_format($object.end_moment,'d-m-Y H:i:s')}<br />
                    <span class="objectTime">Resterend: <span class="countdown">{$object.timeRemaining}</span></span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 well form-group">
                    <label for="exampleInputAmount">Plaats bod:</label>
                    <div class="input-group">
                        <div class="input-group-addon">&euro;</div>
                        <input type="text" class="form-control" id="exampleInputAmount" value="{$object.nextBid}">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <fieldset class="col-md-3 col-md-offset-1 objectBidsSet">
            <legend>Geschiedenis</legend>
            <div class="row"><div class="col-md-8 col-sm-8 col-xs-8">Gebruikersnaam</div><div class="col-md-4 col-sm-4 col-xs-4">Bod</div></div>
            <div class="objectBids">
                <div>
                    {foreach $object.bids as $bid}
                        <div class="row">
                            <div class="col-md-8 col-sm-8 col-xs-8">{$bid.username}</div>
                            <div class="col-md-4 col-sm-4 col-xs-4">&euro; {$bid.bidvalue|string_format:"%.2f"}</div>
                        </div>
                    {/foreach}
                </div>
            </div>
        </fieldset>
    </div>
    <div class="row">

    </div>
</div>


{include file="footer.tpl"}