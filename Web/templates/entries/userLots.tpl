<div class="well col-md-12 col-xs-12 col-sm-12 clickable bid" data-link="{baseurl url="Kavel/Item/`$object.id`"}">
    <div class="row">
        <img class="col-md-2 col-xs-6 col-sm-6" src="{$object.image}" alt="{$object.title}"/>

        <div class="col-md-6 col-xs-6 col-sm-6">
            <div class="title">{$object.title}</div>
            <div class="description">{$object.description}</div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="countdown time-remaining">{$object.timeRemaining}</div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2"><b>Startbod:</b><br />&euro; {$object.start_bid}</div>
        <div class="col-md-2"><b>Huidig bod:</b><br />&euro; {$object.currentBid}</div>
        <div class="col-md-2"><b>Geboden door:</b><br />{$object.currentBidName}</div>

        <ul class="category col-md-2">
            {foreach $object.categoryTree as $cat}
                <li>{if $cat.parent}<a href="{$cat.link}">{/if}{$cat.name}{if $cat.parent}</a>{/if}</li>
            {/foreach}
        </ul>
        <div class="col-md-2">
            {if $object.auction_closed}
                <a href="#">Geef Koper feedback</a>
            {/if}
        </div>
    </div>
</div>