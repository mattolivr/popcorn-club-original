<!-- LOCATION -->
<?php
if ((!empty($userData['qUser_city']) && !empty($userData['qUser_coun'])))
{
?>
    <div class="row">
        <div class="col-lg-2">
            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-geo-alt-fill" fill="var(--white)" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
            </svg>
        </div>
        <div class="col-lg-10">
            <span><?php echo $userData['qUser_city'].", ".$userData['qUser_coun'];?></span>
        </div>
    </div>
<?php
}
?>
<!-- AGE -->
<div class="row">
    <div class="col-lg-2">
        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-brightness-high-fill" fill="var(--white)" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 8a4 4 0 1 1-8 0 4 4 0 0 1 8 0z"/>
            <path fill-rule="evenodd" d="M8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
        </svg>
    </div>
    <div class="col-lg-10">
        <span><?php echo getAge($userData['qUser_bday']);?> Anos</span>
    </div>
</div>
<!-- BDAY -->
<div class="row">
    <div class="col-lg-2">
        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-star-fill" fill="var(--white)" xmlns="http://www.w3.org/2000/svg">
            <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
        </svg>
    </div>
    <div class="col-lg-10">
        <span><b>Nascido(a) em: </b><?php echo getDayFormat($userData['qUser_bday']);?></span>
    </div>
</div>
<!-- CREATION -->
<div class="row">
    <div class="col-lg-2">
        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-house-fill" fill="var(--white)" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M8 3.293l6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
            <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
        </svg>
    </div>
    <div class="col-lg-10">
        <span><b>Desde: </b><?php echo getYearMouthFormat($userData['qUser_cday']);?></span>
    </div>
</div>