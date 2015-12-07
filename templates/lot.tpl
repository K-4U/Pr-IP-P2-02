{include file="header.tpl" extracss='lot.css'}

<div class="col-md-offset-2 col-md-8 well">
    {*Info about the object*}
    <div class="row">
        <div class="col-md-8">
            <h2 class="objectName">{$object.title}</h2>
        </div>
        <div class="pull-right col-md-2">objectnummer {$object.id}</div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <img src="{$object.image}" class="col-md-12 col-sm-12" />
        </div>
        <div class="col-md-3 col-md-offset-1">
            <div class="row">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="panel-title">Info</div>
                    </div>
                    <div class="panel-body">
                        Tot: {date_format($object.end_moment,'d-m-Y H:i:s')}<br />
                        <span class="objectTime">Resterend: <span class="countdown">{$object.timeRemaining}</span></span>
                    </div>
                </div>
            </div>
            {if $user.loggedIn}
            <div class="row">
                <form action="{$self}" method="post">
                    <div class="panel panel-default form-group">
                        <div class="panel-heading">
                            <div class="panel-title">Bieden</div>
                        </div>
                        <div class="panel-body">
                            {if $bidError}
                                <div class="alert alert-danger alert-dismissable col-md-12 col-sm-12 col-xs-12">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                {$bidError}
                                </div>
                            {/if}
                            <div class="input-group col-md-12 col-sm-12 col-xs-12">
                                <div class="input-group-addon">&euro;</div>
                                <input type="text" class="form-control" id="exampleInputAmount" name="bid" value="{$object.nextBid}">
                                <span class="input-group-btn">
                                    <button class="btn btn-default btn-cta" type="submit" name="submit">Go!</button>
                                </span>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            {/if}
        </div>
        <div class="col-md-3 col-md-offset-1">
            <div class="objectBidsSet panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">
                    Geschiedenis
                    </div>
                </div>
                <div class="panel-body">
                    <div class="row"><div class="col-md-8 col-sm-8 col-xs-8">Gebruikersnaam</div><div class="col-md-4 col-sm-4 col-xs-4">Bod</div></div>
                    <div class="objectBids">
                        <div>
                            {foreach $object.bids as $bid}
                                <div class="row">
                                    {*//TODO: Add link to username*}
                                    <div class="col-md-8 col-sm-8 col-xs-8">{$bid.username}</div>
                                    <div class="col-md-4 col-sm-4 col-xs-4">&euro; {$bid.bidvalue|string_format:"%.2f"}</div>
                                </div>
                            {/foreach}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {*Info about the seller*}
    <div class="row row-spacing">
        <div class="col-md-12">
            <img src="{$object.user.gravatarUrl}" class="col-md-1" />
            <div class="col-md-2">
                <div class="username">{$object.user.username}</div>
                <div class="userLocation">{$object.user.city}</div>
                <div class="rating" data-rate-value="{$object.user.rating}"></div>
            </div>
        </div>
    </div>

    {*Description*}
    <div class="row row-spacing">
        <div class="col-md-12">
            <ul class="nav nav-tabs info">
                <li class="active"><a data-toggle="tab" href="#description">Beschrijving</a></li>
                <li><a data-toggle="tab" href="#payment">Betaling</a></li>
                <li><a data-toggle="tab" href="#shipment">Verzending</a></li>
            </ul>
            <div class="tab-content well-upper no-rounded-corners-top no-border-top">
                <div class="tab-pane fade in active" id="description">{$object.description}</div>
                <div class="tab-pane fade in" id="payment">{$object.payment_instructions}</div>
                <div class="tab-pane fade in" id="shipment">{$object.shipment_instructions}</div>
            </div>
        </div>
    </div>

    {*Related products*}
    <div class="row row-spacing">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">Gerelateerde producten</div>
                </div>
                <div class="panel-body">
                    {foreach $object.related as $related}
                        {include file="entries/object.tpl" object=$related}
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
</div>


{include file="footer.tpl"}