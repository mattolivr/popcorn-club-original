<div id="profile_usericon">
    <a href="#modal_listIns" data-toggle="modal" data-target="#modal_listIns"><img class="content_pic w-100 h-100 img_round" src="<?php if($myProfile){include_once("./contentAssembling/usericon.php");}else{echo "../upload/".$userData['qUser_pic'];}?>"></a>
    <?php if($userData['qUser_type'] == 'adm'):?>
    <div id="useradm">
        <svg xmlns="http://www.w3.org/2000/svg" width="1.4em" height="1.4em" fill="whitesmoke" class="bi bi-check" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.236.236 0 0 1 .02-.022z"/>
        </svg>
    </div>
    <?php endif ?>
    <div id="div_username">
        <span id="username">
            <?php if($myProfile){
                echo (strlen($userData['qUser_name']) < 18)? "Olá, ".$userData['qUser_name']."!":$userData['qUser_name'];
                }else{
                    echo $userData['qUser_name'];
                }?>
        </span>
    </div>
    <?php if(!empty($userData['qUser_bio'])):?>
        <div id="user_bio_div">
            <span>
                <?php echo $userData['qUser_bio'];?>
            </span>
        </div>
        <?php elseif(empty($userData['qUser_bio']) && $myProfile):?>
        <div id="user_bio_div">
            <span>
                <?php echo "Quem é você? Estamos curiosos!!!<br><a>Por favor, insira uma bio!!</a>"?> <!-- modal trigger -->
            </span>
        </div>
    <?php endif?>
</div>
<div id="profile_container">
    <div id="profile_data">
        <hr class="profile_hr_data">
        <div id="data_trigger">
            <div class="col-auto">
                <form method="get" action="<?php $_SERVER['PHP_SELF']?>">
                    <button name="prof_trig" class="btn btn-primary w-100 mt-1 mb-1" value="<?php echo ($_trig == 'stats')?"list":"stats"?>"><?php echo ($_trig == 'stats')?"Lista":"Estatísticas"?></button>
                    <input name="myprof" value="<?php echo ($myProfile)?'yes':'no';?>" style="display: none;">
                </form>
            </div>
        </div>
        <div id="data_friends">
            <hr class="profile_hr_data">
            <p class="data_title">Amigos</p>
            <hr class="profile_hr_data">
        </div>
        <div id="profile_userstats">
            <p class="data_title">Sobre</p>
            <?php include_once("userprofile_userstats.php")?>
            <hr class="profile_hr_data">
        </div>
    </div>
    <div id="profile_content">
        <hr class="profile_hr_content">
        <div id="user_content" class="row">
            <?php include_once(($_trig == 'stats')?"user_charts.php":"user_list.php")?>
            <!-- <div id="user_status" class="col-lg-3">a</div>
            <div id="user_charts" class="col-lg-9">b</div> -->
        </div>
    </div>
</div>