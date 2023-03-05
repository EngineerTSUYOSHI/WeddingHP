<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html　lang="ja">
<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>結婚式招待状</title>
        <link rel="stylesheet" href="css/styler.css">
</head>

<body>
    <header>
        <a class="orner" href="login.jsp">招待者用ページ</a>
        <div class="header-list">
            <a href="#rsvp">RSVP</a>
            <a href="#information">INFORMATION</a>
            <a href="#introduction">INTRODUCTION</a>
            <a href="#message">MESSAGE</a>
        </div>
    </header>

    <main>
        <!-- JSから画像スライドのメソッドを呼ぶ-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
        <!-- スライド画像の上にWEDING CELEBRATIONを表示　-->
        <div class="container">
            <p class="weding"> WEDING CELEBRATION </p>
            <div class="slider">
                <img src="img/white-roses-with-empty-card.jpeg" alt="背面画像">
                <img src="img/accessories-with-wedding-rings-close-up.webp" alt="背面画像">
                <img src="img/hands-with-wedding-rings.webp" alt="背面画像">
            </div>
        </div>

        <div class="container2" id="message">
            <img src="img/luxurious-blue-background.jpeg" alt="背面画像">
            <div class="message1 message">
                <h2>MESSAGE</h2>
                <p>皆様いかがお過ごしでしょうか<br>
                    このたび 結婚式を<br>
                    執り行うこととなりました<br>
                    
                    日頃お世話になっております<br>
                    みなさまに 私どもの門出を<br>
                    お見守りいただきたく<br>
                    ささやかながら小宴を<br>
                    催したく存じます<br>
                    
                    ご多用中 誠に恐縮ではございますが<br>
                    ぜひご出席いただきたく<br>
                    ご案内申し上げます
                    </p>
            </div>
        </div>

        <div class="flexContainer" id=introduction>
            <div class="flexItem">
                <div class="imgWrap">
                    <a><img src="img/pic_man.jpeg"></a>
                </div>
                <h3>渡辺　純</h3>
                <p>1988年3月1日、東京生まれ。A型。会社員<br>
                    アウトドアが好きで週末は車で少し遠くまで出かけます。
                    犬が好きです
                    美味しい料理・お酒をご用意してお待ちしております。
                </p>
            </div>
            
            <div class="flexItem">
                <div class="imgWrap">
                    <a><img src="img/pic_woman.jpeg"></a>
                </div>
                <h3>佐山　瑞希</h3>
                <p>1990年12月14日、新潟県生まれ。B型。会社員<br>
                    コンビニもない田舎で育った為かのんびりした性格です。
                    本を読んだり、映画を見ることが好きです。
                    当日、皆様にお会いできることを楽しみにしています。
                </p>
            </div>
        </div>

        <div class="details" id=information>
            <h2>COUNT　DOWN</h2>
            <p>to 2023.3.31</p>
            <div id="countdownArea" class="countdown">
            <span id="countdown-day"></span>日
            <span id="countdown-hour"></span>時間
            <span id="countdown-min"></span>分
            <span id="countdown-sec"></span>秒
        
            <h2>INFORMATION</h2>
            <p>挙式</p>
            <p>2031.3.31 月曜日 13:30開始</p>
            <p>受付時間 13:00</p>
            <p>式場:パラダイスガーデン・クリスタルチャペル</p>
            <p>92-1089 Aliinui Dr, Kapolei, HI 96707 アメリカ合衆国</p>

        </div>

        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d118917.52306998466!2d-158.2495676404998!3d21.343686300882727!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7c0062962896d9e1%3A0x3864c7c2876355b7!2z44OR44Op44OA44Kk44K544Ks44O844OH44Oz44O744Kv44Oq44K544K_44Or44OB44Oj44Oa44OrL-ODmeOCueODiOODluODqeOCpOODgOODq-ODquOCvuODvOODiA!5e0!3m2!1sja!2sjp!4v1676713604951!5m2!1sja!2sjp" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
         　　style="border:0;"
         　　allowfullscreen=""
         　　loading="lazy"
         　　referrerpolicy="no-referrer-when-downgrade"
        </iframe>

        <div class="rsvp" id="rsvp">
            <h2>RSVP</h2>
            <p>お手数ではございますが、出席情報のご登録をお願い申し上ます</p>
            <p>2031.3.30までにご返信をお願いします</p>
			<form action="/test0204/Main" method="post">
	            <p>名前:<input type="text" name="name"　required></p>
	            <p>カナ:<input type="text" name="kanaName" ></p>
	            <p>メールアドレス:<input type="text" name="address"></p>
	            <p>電話番号:<input type="text" name="tel" required></p>
	            <p>メッセージ:</p>
	            <textarea style="height:50px; width:400px" name="message"></textarea><br>
	            <input class="btn" type="submit" value="送信">
            </form>
        </div>
    </main>

    <footer>
        <p>&copy; 2023 T.T</p>  
    </footer>

    <script type="text/javascript">
        $(document).ready(function(){
            $('.slider').bxSlider({
                auto: true,
                pause: 5000,
            });
        });
    </script>

<script>
    let countdown = setInterval(function(){
    const now = new Date()  //今の日時
    const target = new Date("2031/3/30 23:59:59") //new Date(now.getFullYear(), now.getMonth() + 1, 0,'23','59','59') //ターゲット日時を取得
    const remainTime = target - now  //差分を取る（ミリ秒で返ってくる

    //指定の日時を過ぎていたら処理をしない
    if(remainTime < 0) return false 

    //差分の日・時・分・秒を取得
    const difDay  = Math.floor(remainTime / 1000 / 60 / 60 / 24)
    const difHour = Math.floor(remainTime / 1000 / 60 / 60 ) % 24
    const difMin  = Math.floor(remainTime / 1000 / 60) % 60
    const difSec  = Math.floor(remainTime / 1000) % 60

    //残りの日時を上書き
    document.getElementById("countdown-day").textContent  = difDay
    document.getElementById("countdown-hour").textContent = difHour
    document.getElementById("countdown-min").textContent  = difMin
    document.getElementById("countdown-sec").textContent  = difSec

    //指定の日時になればカウントを止める
    if(remainTime < 0) clearInterval(countdown)

}, 1000)    //1秒間に1度処理
    </script>
</body>

</html>