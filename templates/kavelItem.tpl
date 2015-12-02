{include file="header.tpl"}
<!--html code & template (smarty)-->

<div class="col-md-offset-2 col-md-8">
    <h2 class="kavelItemTitle">{$product.title}</h2>

    <div class="productId pull-right">Productnummer {$product.id}</div>
    <div class="kavelImg"></div>
    {*<img scr="{baseurl url="Image/large/`$product.id`"}" />*}

    <div id="imgSlider" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            {foreach $product.images as $image}
            <div class="item{if !$active} active{/if}">
                <img scr="Image/{$image.filename}" alt="img1"/>
                {assign var="active" value="true"}

                </div>
            {/foreach}

        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>


</div>


{*<div>*}
{*<div class="beschrijving">*}
{*{$description}*}
{*</div>*}


{*</div>*}


{include file="footer.tpl"}