<!-- BEGIN: main -->	
<style>
/* HOTLINE */
.phonering-alo-phone {
    position: fixed;
    visibility: hidden;
    background-color: transparent;
    width: 150px;
    height: 150px;
    cursor: pointer;
    z-index: 10!important;
    bottom: 20%;
    right: -10px;
    display: block;
    -webkit-backface-visibility: hidden;
    -webkit-transform: translateZ(0);
    transition: visibility .5s;
}
.phonering-alo-phone.phonering-alo-show {visibility:visible}
.phonering-alo-phone.phonering-alo-static {opacity:.6}
.phonering-alo-phone.phonering-alo-hover,.phonering-alo-phone:hover {opacity:1}
.phonering-alo-ph-circle {width:160px;height:160px;top:20px;left:20px;position:absolute;
 background-color:transparent;border-radius:100%;border:2px solid rgba(30,30,30,0.4);
 opacity:.1;
 -webkit-animation:phonering-alo-circle-anim 1.2s infinite ease-in-out;
 animation:phonering-alo-circle-anim 1.2s infinite ease-in-out;
 transition:all .5s;
 -webkit-transform-origin:50% 50%;
 -ms-transform-origin:50% 50%;
 transform-origin:50% 50%
}
.phonering-alo-phone.phonering-alo-active .phonering-alo-ph-circle {
    -webkit-animation:phonering-alo-circle-anim 1.1s infinite ease-in-out!important;
    animation:phonering-alo-circle-anim 1.1s infinite ease-in-out!important
}
.phonering-alo-phone.phonering-alo-static .phonering-alo-ph-circle {
    -webkit-animation:phonering-alo-circle-anim 2.2s infinite ease-in-out!important;
    animation:phonering-alo-circle-anim 2.2s infinite ease-in-out!important
}
.phonering-alo-phone.phonering-alo-hover .phonering-alo-ph-circle,.phonering-alo-phone:hover .phonering-alo-ph-circle {
    border-color:#00aff2;
    opacity:.5
}
.phonering-alo-phone.phonering-alo-green.phonering-alo-hover .phonering-alo-ph-circle,.phonering-alo-phone.phonering-alo-green:hover .phonering-alo-ph-circle {
    border-color:#272d6b;
    opacity:.5
}
.phonering-alo-phone.phonering-alo-green .phonering-alo-ph-circle {
    border-color: #ff3d00;
    opacity: .5;
}
.phonering-alo-phone.phonering-alo-gray.phonering-alo-hover .phonering-alo-ph-circle,.phonering-alo-phone.phonering-alo-gray:hover .phonering-alo-ph-circle {
    border-color:#ccc;
    opacity:.5
}
.phonering-alo-phone.phonering-alo-gray .phonering-alo-ph-circle {
    border-color:#75eb50;
    opacity:.5
}
.phonering-alo-ph-circle-fill {width:100px;height:100px;top:50px;left:50px;position:absolute;background-color:#000;
 border-radius:100%;border:2px solid transparent;
 -webkit-animation:phonering-alo-circle-fill-anim 2.3s infinite ease-in-out;
 animation:phonering-alo-circle-fill-anim 2.3s infinite ease-in-out;
 transition:all .5s;
 -webkit-transform-origin:50% 50%;
 -ms-transform-origin:50% 50%;
 transform-origin:50% 50%
}
.phonering-alo-phone.phonering-alo-active .phonering-alo-ph-circle-fill {
    -webkit-animation:phonering-alo-circle-fill-anim 1.7s infinite ease-in-out!important;
    animation:phonering-alo-circle-fill-anim 1.7s infinite ease-in-out!important
}
.phonering-alo-phone.phonering-alo-static .phonering-alo-ph-circle-fill {
    -webkit-animation:phonering-alo-circle-fill-anim 2.3s infinite ease-in-out!important;
    animation:phonering-alo-circle-fill-anim 2.3s infinite ease-in-out!important;
    opacity:0!important
}
.phonering-alo-phone.phonering-alo-hover .phonering-alo-ph-circle-fill,.phonering-alo-phone:hover .phonering-alo-ph-circle-fill {
    background-color:rgba(39,45,107,0.5);
    opacity:.75!important
}
.phonering-alo-phone.phonering-alo-green.phonering-alo-hover .phonering-alo-ph-circle-fill,.phonering-alo-phone.phonering-alo-green:hover .phonering-alo-ph-circle-fill {
    background-color:rgba(39,45,107,0.5);
    opacity:.75!important
}
.phonering-alo-phone.phonering-alo-green .phonering-alo-ph-circle-fill {
    background-color: #ff000080;
}
.phonering-alo-phone.phonering-alo-gray.phonering-alo-hover .phonering-alo-ph-circle-fill,.phonering-alo-phone.phonering-alo-gray:hover .phonering-alo-ph-circle-fill {
    background-color:rgba(204,204,204,0.5);
    opacity:.75!important
}
.phonering-alo-phone.phonering-alo-gray .phonering-alo-ph-circle-fill {
    background-color:rgba(117,235,80,0.5);
    opacity:.75!important
}
.phonering-alo-ph-img-circle {
    width: 60px;
    height: 60px;
    top: 70px;
    left: 70px;
    position: absolute;
    background: #1e1e1e1a url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAABNmlDQ1BQaG90b3Nob3AgSUNDIHByb2ZpbGUAAHjarY6xSsNQFEDPi6LiUCsEcXB4kygotupgxqQtRRCs1SHJ1qShSmkSXl7VfoSjWwcXd7/AyVFwUPwC/0Bx6uAQIYODCJ7p3MPlcsGo2HWnYZRhEGvVbjrS9Xw5+8QMUwDQCbPUbrUOAOIkjvjB5ysC4HnTrjsN/sZ8mCoNTIDtbpSFICpA/0KnGsQYMIN+qkHcAaY6addAPAClXu4vQCnI/Q0oKdfzQXwAZs/1fDDmADPIfQUwdXSpAWpJOlJnvVMtq5ZlSbubBJE8HmU6GmRyPw4TlSaqo6MukP8HwGK+2G46cq1qWXvr/DOu58vc3o8QgFh6LFpBOFTn3yqMnd/n4sZ4GQ5vYXpStN0ruNmAheuirVahvAX34y/Axk/96FpPYgAAACBjSFJNAAB6JQAAgIMAAPn/AACA6AAAUggAARVYAAA6lwAAF2/XWh+QAAAB/ElEQVR42uya7W3CMBCG31QM4A1aNggTlG6QbpBMkHYC1AloJ4BOABuEDcgGtBOETnD9c1ERCH/lwxeaV8oPFGP86Hy+DxMREW5Bd7gRjSDSNGn4/RiAOvm8C0ZCRD5PSkQVXSr1nK/xE3mcWimA1ZV3JYBZCIO4giQANoYxMwYS6+xKY4lT5dJPreWZY+uspqSCKPYN27GJVBDXheVSQe494ksiEWTuMXcu1dld9SARxDX1OAJ4lgjy4zDnFsC076A4adEiRwAZg4hOUSpNoCsBPDGM+HqkNGynYBCuILuWj+dgWysGsNe8nwL4GsrW0m2fxZBq9rW0rNcX5MOQ9eZD8JFahcG5g/iKT671alGAYQggpYWvpEPYWrU/HDTOfeRIX0q2SL3QN4tGhZJukVobQyXYWw7WtLDKDIuM+ZSzscyCE9PCy5IttCvnZNaeiGLNHKuz8ZVh/MXTVu/1xQKmIqLEAuJ0fNo3iG5B51oSkeKnsBi/4bG9gYB/lCytU5G9DryFW+3Gm+JLwU7ehbJrwTjq4DJU8bHcVbEV9dXXqqP6uqO5e2/QZRYJpqu2IUAA4B3tXvx8hgKp05QZW6dJqrLTNkB6vrRURLRwPHqtYgkC3cLWQAcDQGGKH13FER/NATzi786+BPDNjm1dMkfjn2pGkBHkf4D8DgBJDuDHx9BN+gAAAABJRU5ErkJggg==) no-repeat center center;
    border-radius: 100%;
    border: 2px solid transparent;
    -webkit-animation: phonering-alo-circle-img-anim 1s infinite ease-in-out;
    animation: phonering-alo-circle-img-anim 1s infinite ease-in-out;
    -webkit-transform-origin: 50% 50%;
    -ms-transform-origin: 50% 50%;
    transform-origin: 50% 50%;
}

.phonering-alo-phone.phonering-alo-active .phonering-alo-ph-img-circle {
    -webkit-animation:phonering-alo-circle-img-anim 1s infinite ease-in-out!important;
    animation:phonering-alo-circle-img-anim 1s infinite ease-in-out!important
}

.phonering-alo-phone.phonering-alo-static .phonering-alo-ph-img-circle {
    -webkit-animation:phonering-alo-circle-img-anim 0 infinite ease-in-out!important;
    animation:phonering-alo-circle-img-anim 0 infinite ease-in-out!important
}

.phonering-alo-phone.phonering-alo-hover .phonering-alo-ph-img-circle,.phonering-alo-phone:hover .phonering-alo-ph-img-circle {
    background-color:#00aff2;
}

.phonering-alo-phone.phonering-alo-green.phonering-alo-hover .phonering-alo-ph-img-circle,.phonering-alo-phone.phonering-alo-green:hover .phonering-alo-ph-img-circle {
    background-color:#272d6b;
}

.phonering-alo-phone.phonering-alo-green .phonering-alo-ph-img-circle {
    background-color: #ff3d00;
}

.phonering-alo-phone.phonering-alo-gray.phonering-alo-hover .phonering-alo-ph-img-circle,.phonering-alo-phone.phonering-alo-gray:hover .phonering-alo-ph-img-circle {
    background-color:#ccc;
}

.phonering-alo-phone.phonering-alo-gray .phonering-alo-ph-img-circle {
    background-color:#75eb50
}

@-webkit-keyframes phonering-alo-circle-anim {
    0% {
        -webkit-transform:rotate(0) scale(.5) skew(1deg);
        -webkit-opacity:.1
    }

    30% {
        -webkit-transform:rotate(0) scale(.7) skew(1deg);
        -webkit-opacity:.5
    }

    100% {
        -webkit-transform:rotate(0) scale(1) skew(1deg);
        -webkit-opacity:.1
    }
}

@-webkit-keyframes phonering-alo-circle-fill-anim {
    0% {
        -webkit-transform:rotate(0) scale(.7) skew(1deg);
        opacity:.2
    }

    50% {
        -webkit-transform:rotate(0) scale(1) skew(1deg);
        opacity:.2
    }

    100% {
        -webkit-transform:rotate(0) scale(.7) skew(1deg);
        opacity:.2
    }
}

@-webkit-keyframes phonering-alo-circle-img-anim {
    0% {
        -webkit-transform:rotate(0) scale(1) skew(1deg)
    }

    10% {
        -webkit-transform:rotate(-25deg) scale(1) skew(1deg)
    }

    20% {
        -webkit-transform:rotate(25deg) scale(1) skew(1deg)
    }

    30% {
        -webkit-transform:rotate(-25deg) scale(1) skew(1deg)
    }

    40% {
        -webkit-transform:rotate(25deg) scale(1) skew(1deg)
    }

    50% {
        -webkit-transform:rotate(0) scale(1) skew(1deg)
    }

    100% {
        -webkit-transform:rotate(0) scale(1) skew(1deg)
    }
}

@-webkit-keyframes phonering-alo-circle-anim {
    0% {
        -webkit-transform:rotate(0) scale(.5) skew(1deg);
                transform:rotate(0) scale(.5) skew(1deg);
        opacity:.1
    }

    30% {
        -webkit-transform:rotate(0) scale(.7) skew(1deg);
                transform:rotate(0) scale(.7) skew(1deg);
        opacity:.5
    }

    100% {
        -webkit-transform:rotate(0) scale(1) skew(1deg);
                transform:rotate(0) scale(1) skew(1deg);
        opacity:.1
    }
}

@keyframes phonering-alo-circle-anim {
    0% {
        -webkit-transform:rotate(0) scale(.5) skew(1deg);
                transform:rotate(0) scale(.5) skew(1deg);
        opacity:.1
    }

    30% {
        -webkit-transform:rotate(0) scale(.7) skew(1deg);
                transform:rotate(0) scale(.7) skew(1deg);
        opacity:.5
    }

    100% {
        -webkit-transform:rotate(0) scale(1) skew(1deg);
                transform:rotate(0) scale(1) skew(1deg);
        opacity:.1
    }
}

@-webkit-keyframes phonering-alo-circle-fill-anim {
    0% {
        -webkit-transform:rotate(0) scale(.7) skew(1deg);
                transform:rotate(0) scale(.7) skew(1deg);
        opacity:.2
    }

    50% {
        -webkit-transform:rotate(0) scale(1) skew(1deg);
                transform:rotate(0) scale(1) skew(1deg);
        opacity:.2
    }

    100% {
        -webkit-transform:rotate(0) scale(.7) skew(1deg);
                transform:rotate(0) scale(.7) skew(1deg);
        opacity:.2
    }
}

@keyframes phonering-alo-circle-fill-anim {
    0% {
        -webkit-transform:rotate(0) scale(.7) skew(1deg);
                transform:rotate(0) scale(.7) skew(1deg);
        opacity:.2
    }

    50% {
        -webkit-transform:rotate(0) scale(1) skew(1deg);
                transform:rotate(0) scale(1) skew(1deg);
        opacity:.2
    }

    100% {
        -webkit-transform:rotate(0) scale(.7) skew(1deg);
                transform:rotate(0) scale(.7) skew(1deg);
        opacity:.2
    }
}

@-webkit-keyframes phonering-alo-circle-img-anim {
    0% {
        -webkit-transform:rotate(0) scale(1) skew(1deg);
                transform:rotate(0) scale(1) skew(1deg)
    }

    10% {
        -webkit-transform:rotate(-25deg) scale(1) skew(1deg);
                transform:rotate(-25deg) scale(1) skew(1deg)
    }

    20% {
        -webkit-transform:rotate(25deg) scale(1) skew(1deg);
                transform:rotate(25deg) scale(1) skew(1deg)
    }

    30% {
        -webkit-transform:rotate(-25deg) scale(1) skew(1deg);
                transform:rotate(-25deg) scale(1) skew(1deg)
    }

    40% {
        -webkit-transform:rotate(25deg) scale(1) skew(1deg);
                transform:rotate(25deg) scale(1) skew(1deg)
    }

    50% {
        -webkit-transform:rotate(0) scale(1) skew(1deg);
                transform:rotate(0) scale(1) skew(1deg)
    }

    100% {
        -webkit-transform:rotate(0) scale(1) skew(1deg);
                transform:rotate(0) scale(1) skew(1deg)
    }
}

@keyframes phonering-alo-circle-img-anim {
    0% {
        -webkit-transform:rotate(0) scale(1) skew(1deg);
                transform:rotate(0) scale(1) skew(1deg)
    }

    10% {
        -webkit-transform:rotate(-25deg) scale(1) skew(1deg);
                transform:rotate(-25deg) scale(1) skew(1deg)
    }

    20% {
        -webkit-transform:rotate(25deg) scale(1) skew(1deg);
                transform:rotate(25deg) scale(1) skew(1deg)
    }

    30% {
        -webkit-transform:rotate(-25deg) scale(1) skew(1deg);
                transform:rotate(-25deg) scale(1) skew(1deg)
    }

    40% {
        -webkit-transform:rotate(25deg) scale(1) skew(1deg);
                transform:rotate(25deg) scale(1) skew(1deg)
    }

    50% {
        -webkit-transform:rotate(0) scale(1) skew(1deg);
                transform:rotate(0) scale(1) skew(1deg)
    }

    100% {
        -webkit-transform:rotate(0) scale(1) skew(1deg);
                transform:rotate(0) scale(1) skew(1deg)
    }
} img {max-width: 100%;}
.zalocat {
    bottom: 0%;
}

 
</style>
<div class="hotline">
    <div id="phonering-alo-phoneIcon" class="phonering-alo-phone phonering-alo-green phonering-alo-show">
       <a class="guisms" title="{LANG.sosms}"  href="sms:{DATA.sosms}?body=KG: {SITE_NAME}. {SELFURL}. {DATA.noidungsms}"> 
	   <div class="phonering-alo-ph-circle"></div></a>
        <div class="phonering-alo-ph-circle-fill"></div>
        <a class="pps-btn-img " title="Gọi ngay Hotline: {DATA.hostlineso}" href="tel:{DATA.hotlineurl}"> 
		<div class="phonering-alo-ph-img-circle"></div> 
		</a>
    </div>
</div>


<div class="hotline">
    <div id="phonering-alo-phoneIcon" class="phonering-alo-phone zalocat phonering-alo-green phonering-alo-show">
       <a class="guisms" title="{LANG.sosms}"  href="sms:{DATA.sosms}?body=KG: {SITE_NAME}. {SELFURL}. {DATA.noidungsms}"> 
	   <div class="phonering-alo-ph-circle"></div></a>
        <div class="phonering-alo-ph-circle-fill"></div>
        <a target="_blank"  class="pps-btn-img " title="Kết nối Zalo: {DATA.sosms}" href="//zalo.me/{DATA.sosms}#?{SITE_NAME}. {SELFURL}. {DATA.noidungsms}"> 
		<div class="zaloicon phonering-alo-ph-img-circle"> zalo </div> 
		</a>
    </div>
</div>

 
<!--
<div class="thoigian none" title="{LANG.thoigiantu}" >
 <i class="fa fa-clock-o" aria-hidden="true"></i> <strong> {LANG.thoigiantu}: </strong> {DATA.thoigiantu}  {LANG.thoigianden} {DATA.thoigianden} </div>
 </div>
-->


<!-- END: main -->