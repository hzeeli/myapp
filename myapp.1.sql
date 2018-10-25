SET NAMES UTF8;
DROP DATABASE IF EXISTS myapp;
CREATE DATABASE myapp CHARSET=UTF8;
USE myapp;

#轮播图
CREATE TABLE banner_list(
  bid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(132),
  title VARCHAR(64)
);
INSERT INTO banner_list VALUES
(null,'http://127.0.0.1:3030/img/banner1.png','Riding Kayak'),
(null,'http://127.0.0.1:3030/img/banner2.png','青年人的正经出路，努力熬成一个中年胖子'),
(null,'http://127.0.0.1:3030/img/banner3.png','别致的FENGZI'),
(null,'http://127.0.0.1:3030/img/banner4.png','Photo Near Road XDXD');

#音频
CREATE TABLE mp3_list(
  mid INT PRIMARY KEY AUTO_INCREMENT,
  avater VARCHAR(132),
  author VARCHAR(64),
  mp3_url VARCHAR(132),
  pic VARCHAR(256),
  title VARCHAR(256),
  mp3_author VARCHAR(64),
  mp3_title VARCHAR(64)
); 
INSERT INTO mp3_list VALUES
(null,'w.rdc.sae.sina.com.cn:3306/img/avater/author1.jpg','斯斯文','w.rdc.sae.sina.com.cn:3306/mp3/audio/1.mp3','http://w.rdc.sae.sina.com.cn:3306/mp3/pic/1.jpg','看了船长的视频好怀念在加州玩耍的时光hhh','engelwood','Been Missing You'),
(null,'w.rdc.sae.sina.com.cn/img/avater/author2.jpg','芋圆是我吃的','w.rdc.sae.sina.com.cn:3306/mp3/audio/2.mp3','w.rdc.sae.sina.com.cn:3306/mp3/pic/2.jpg','不用介绍你 谁都喜欢你 你是所有的夕阳和所有的雨 我看着你 就开始想象 生活里有没有这么美的东西','Nujabes','Aruarian Dance 
'),
(null,'w.rdc.sae.sina.com.cn:3306/img/avater/author3.jpg','两只特立独行的猪','w.rdc.sae.sina.com.cn:3306/mp3/audio/3.mp3','w.rdc.sae.sina.com.cn:3306/mp3/pic/3.jpg','生活里每一滴水 也许都曾去过地球的另一端 曾从高空俯瞰人间 曾轻轻触摸过你脸颊 曾静静从你眼角滑落','Kleerup','Until We Bleed'),
(null,'w.rdc.sae.sina.com.cn:3306/img/avater/author4.jpg','xxr杏仁','w.rdc.sae.sina.com.cn:3306/mp3/audio/4.mp3','w.rdc.sae.sina.com.cn:3306/mp3/pic/4.jpg','グラデーション個性と態度 浪人','Subaholic','Shogun Star'),
(null,'w.rdc.sae.sina.com.cn:3306/img/avater/author5.jpg','福瑞斯特甘','w.rdc.sae.sina.com.cn:3306/mp3/audio/5.mp3','w.rdc.sae.sina.com.cn:3306/mp3/pic/5.jpg','居然找到了这首歌的完整版，跟摊上了福利似的。发现，喜欢的那些一出现都能让我忽然忘了自己，这歌就是这样，已经偷走了我的六点到八点二十五。','赵紫骅','可乐'),
(null,'w.rdc.sae.sina.com.cn:3306/img/avater/author6.jpg','肉可以不吃音乐不能不听','w.rdc.sae.sina.com.cn:3306/mp3/audio/6.mp3','w.rdc.sae.sina.com.cn:3306/mp3/pic/6.jpg','每天不足六个小时的睡眠 两天用完一支的中性笔 无数杯速溶咖啡下活蹦乱跳的我们 当我穿过黑暗的黎明走向教学楼时我在想 我们是不是在透支着生命 但命运给了我一巴掌说 这些都不算什么 如果你想赢','Russ','Psycho (Pt. 2)'),
(null,'w.rdc.sae.sina.com.cn:3306/img/avater/author7.jpg','能不能借我一块钱','w.rdc.sae.sina.com.cn:3306/mp3/audio/7.mp3','w.rdc.sae.sina.com.cn:3306/mp3/pic/7.jpg','制作人组合smle近日联手女声Helen Tess发布单曲Overflow，发布于厂牌Lowly Palace，优美的旋律连同bouncy drop会让你感到耳目一新','SMLE','Overflow');


#用户图片新闻
CREATE TABLE news_list(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  avater VARCHAR(132),
  author VARCHAR(64),
  content VARCHAR(256),
  pic VARCHAR(132)
);  
INSERT INTO news_list VALUES
(null,'http://w.rdc.sae.sina.com.cn:3306/img/avater/author1.jpg','斯斯文','今天是进剧组的第十天，剧组朋友都很友好。凌晨拍戏到现在一口饭没吃， 想到今晚依旧挑灯夜战拍戏，敏姐决定出去打包一份热干面给我。爸妈也打电话说过两天看看我，化妆师每天都会告诉我好好卸妆，多注意身体、多喝水。其实，生活还是很美好的。','http://w.rdc.sae.sina.com.cn:3306/img/news/news1.jpg'),
(null,'http://w.rdc.sae.sina.com.cn:3306/img/avater/author2.jpg','小小A','飞向遥远的山涧，踩着云朵柔软的表面！清泉流动的傍晚，雾水氤氲在窗前！很喜欢的音乐人！歌声能够让自己的心平静下来，处于一种很空灵的感觉，尤其是喜欢午后躺在床上，电脑上播放着小黑的歌，惬意，慵懒！','http://w.rdc.sae.sina.com.cn:3306/img/news/news2.jpg'),
(null,'http://w.rdc.sae.sina.com.cn:3306/img/avater/author3.jpg','玖月晞清晨','坐在公车上，一路桂花飘香，塞着耳机听着民谣，阳光洋洋洒洒撒在枝丫上，斑驳陆离，一群穿着校服的中学生在篮球场打篮球，朝气蓬勃，属于年轻时代的小美好，岁月正好','http://w.rdc.sae.sina.com.cn:3306/img/news/news3.jpg'),
(null,'http://w.rdc.sae.sina.com.cn:3306/img/avater/author4.jpg',' 是叁疯啊苏-','成长之所以痛苦，是因为我们面对的现实越来越多。 可以败给现实，但别服输。','http://w.rdc.sae.sina.com.cn:3306/img/news/news4.jpg'),
(null,'http://w.rdc.sae.sina.com.cn:3306/img/avater/author5.jpg',' 柠檬橘子和鬼','想要找一个笔友，相互不认识，却可以无话不谈，等到发现的时候，哦原来我们已经如此熟悉','http://w.rdc.sae.sina.com.cn:3306/img/news/news5.jpg'),
(null,'http://w.rdc.sae.sina.com.cn:3306/img/avater/author6.jpg','  会微笑的独角兽','昨天晚上做梦，梦到自己生了个闺女，脸我都看到了，出生日期是2018年8月的某一天，是早上五点一刻出生的，梦境特别真实，只有我和我妈，后来姥姥来了，跟我妈说了一些注意事项，后来我小姨来了，然后我就突然间知道这是个梦了！！','http://w.rdc.sae.sina.com.cn:3306/img/news/news6.jpg'),
(null,'http://w.rdc.sae.sina.com.cn:3306/img/avater/author7.jpg','  说给懂得人听','老爸打电话说，你妈说海棠果挺好吃的，要给你们寄点，还阉了点菜你们要不一块给你们寄。我和宝妹说，那就少寄点吧，吃完了再寄。嗯，收到货发现，这就是爸妈观念里的少寄点，种类不少，数量也不少，一种一个饭盒都放不下，满满的都是爱呀！确认过了，亲生的。','http://w.rdc.sae.sina.com.cn:3306/img/news/news7.jpg'),
(null,'http://w.rdc.sae.sina.com.cn:3306/img/avater/author8.jpg','能不能借我一块钱','哈哈哈，早啊☀ 刚睡醒就想到你，于是，抱紧了生活','http://w.rdc.sae.sina.com.cn:3306/img/news/news8.jpg');


#首页文章
CREATE TABLE article_list(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  avater VARCHAR(132),
  author VARCHAR(64),
  ptime  DATETIME,
  title VARCHAR(64),
  pic_url VARCHAR(132),
  content1 VARCHAR(888),
  content2 VARCHAR(888),
  content3 VARCHAR(888),
  content4 VARCHAR(888),
  content5 VARCHAR(888),
  c_p1  VARCHAR(132),
  c_p2  VARCHAR(132),
  c_p3  VARCHAR(132),
  c_p4  VARCHAR(132)
);
INSERT INTO article_list VALUES
(null,'http://w.rdc.sae.sina.com.cn:3306/img/avater/author1.jpg','斯斯文',now(),'如何像文艺青年一样玩在苏州','http://w.rdc.sae.sina.com.cn:3306/img/article/article1.jpg','
『今日推荐』

君到姑苏见，人家尽枕河。

每次我朋友们来苏州都让我喜忧参半，喜的是久别重逢他乡遇故知，忧的是不知带他们玩什么。因为说实话，苏州并不是一个可以high起来的城市，既没有异国情调，也没有天然美景，山不高水不清的，很难做到让一个普通游客由衷地发出赞叹：“这地儿没白来！”

更让我不知所措的是，来的那些朋友少有主见，仿佛在无声地向我坦白：“反正我人在这儿了，怎么玩儿听你的。你熟嘛，我初来乍到不知道哪儿好玩。”

好好好，你生你有理，我熟我背锅。怕了你们了。

废话说多了，进入正题

诚品书店','
大陆唯一的一家诚品书店开在了苏州。我就算什么都不安利，只告诉你这是大陆唯一一家哦，过了这个村就没这个店了。稍微知道一点诚品的人都不会错过这里。（不知道的去百度一下，乖）。

那么问题来了，来诚品玩什么呢？

拍照

拍诚品的书籍阶梯，拍一排排琳琅满目的图书摆设，拍创意集市，拍正在看书的人，拍你自己，拍你想买又买不起的书（拍完网上搜一搜，可能会便宜点儿），总之，拍你所想，无人阻挡。

看书

来书店不看书怎么好意思呢。诚品的藏书量还是不错的，不管你是古典文学控，小清新控，艺术控，科技控，音乐控，烹饪控，宠物控，异国控还是什么都不控（什么都不控就别来诚品了，否则你会很迷茫……），都能找到自己的精神角落，之前我就在这儿找到了一本台版书籍，颇有古韵的竖排版样式，逼格之高，超出你的想象。

买买买

诚品书店虽然是个书店，但它更像一座人文阅读、创意探索的美学生活博物馆，如果兜里的钱足够的话，你刻意买到许多称心如意的高颜值高创意宝贝，带回去送亲戚，送老师，送情人，送炮友，噢不，送基友。比在那些宣称是地道特产谁知道地不地道的小店里买的东西好到不知哪里去了。前提是有钱啊，注意啊。土豪请忽视，请放心大胆地为国家GDP做贡献。
独墅湖教堂',
'这个景点算是冷门了，但却是我去过最多次的景点。因为漂亮又人少，拍照出来各种高大上。因此被苏州的婚纱公司差不多承包了......一年四季随便挑一天去，都会见到各种白婚纱的漂亮姑娘和西装革履的先生凹造型。（冬天也如此）

每次走进教堂里就会想象自己有一天能够一袭婚纱，手捧白花，与我的意中人许下誓言，白头偕老，满满都是少女心~

教堂临湖而建，逛完教堂再去独墅湖边走走停停，思索人生，或者和小伙伴从诗词歌赋谈到人生哲学，这个地方承载了我太多太多的回忆。

苏州园林
',
'
写到这里我开始没有底气了，因为这个景点压根不需要我来安利。大家都是文化人，苏州园林的地位如何实在是不需要我这个半吊子导游叨逼。况且我自己都没逛完苏州大大小小的园子，只能稍微提一下自己去过的几个园林。

最爱网师园！因为它可以从早逛到晚（不过早晚门票不一样），抱着对园林没啥兴趣又想着来都来了就来看一眼吧心态的人，可以首选这个园林。觉得太小了没看够的话，欢迎来到拙政园（就在苏州博物馆旁边）。

游玩技巧

就一个

挑人少的时候去！

这样你才会有一种身处自家的私家花园的错觉，体验一把有钱人的闲情逸致。
苏州大学

如果你安排了足够的时间在苏州停留，那我建议你可以去一下苏州大学。地铁一号线相门站下车的那个校区，不要走错了。毕竟苏州大学有5个校区，而我能安利的只是那一个。

原因无它，纯属漂亮。

苏大的颜值配得上它的排名，有多莘莘学子被苏州大学的迷人景致圈粉而列入自己理想中的大学，来了之后却悲剧地发现自己居然被分到了别的校区。个中滋味，哔了狗了。

关于它的颜值，各位看官请收图。
',
'
以上，我的安利到此结束！撒花！

苏州的景点当然不止以上，这只是一份私人指南。

如果你是吃货，观前街欢迎你，如果你想了断尘缘，寒山寺等着你，如果你是shopping狂，圆融、永旺、美罗、久光让你一次逛个够，如果你想放肆嗨，苏州乐园随你嗨。
' ,'http://w.rdc.sae.sina.com.cn:3306/img/article/article1.1.jpg','http://w.rdc.sae.sina.com.cn:3306/img/article/article1.4.jpg', 'http://w.rdc.sae.sina.com.cn:3306/img/article/article1.2.jpg','http://w.rdc.sae.sina.com.cn:3306/img/article/article1.3.jpg'),


(null,'http://w.rdc.sae.sina.com.cn:3306/img/avater/author2.jpg','小小A',now(),'我高考考了六百多分，差点就去复读了','http://w.rdc.sae.sina.com.cn:3306/img/article/article2.jpg','
妈，我想复读… … 
我上大学的时候，不知道和我妈因为这个问题闹过多少次矛盾。

高二分文理，我各科发展均衡，政治、地理、物理、生物都考过年级第一，那时候我父母问我，以后你想做什么啊？

我想当记者，最好还能驻外的那种，或者做编辑，我想出书，最好每天都能看到书。','

嗯，学理吧，学理能报文科专业，但是学文不一定能报理科专业，万一你没发挥好，还有很多其他的选择。

表面上我是听了他们的话去学了理科，但实际是因为，理科班有我当时最好的朋友，分班之后我们几个人还在一起，有她们的那段日子成了我高中最美好的回忆。','
2013年，普通高等学校招生全国统一考试，我果然像我妈忧虑的那样发挥失常了。理综的监考老师是我妈妈的大学同学，那场考试她几乎全程都在默默用目光关切着我，本是好意，但却让我全程都倍感焦虑。
','
因为父母对志愿填报也不甚了解，我当时思想更是狭隘，把做选择的权力交给他们之后，筛选出来的学校全是离家近的医科大学和师范大学，他们说，只有学这些以后才好找工作。

因为一系列原因，我对医院环境有很大的恐惧感，再三央求下，父母退而求其次，又筛选出一系列药学类的学校。

我想，人生的轨迹就是从那一刻开始改变的吧，我觉得在南京的那所大学还不错，于是填了第一志愿。
','
第一志愿顺利录取了，是药学专业排名全国一的学校，历年录取分600+，可以说，拿着这所学校的毕业证，整个领域的界内人士，都不会太轻视我。

焦虑每个人都会有，但第一名只有一个，总有人会做成绩单上的倒数，但成绩的高低，只会在当下短暂的时间里限制你的选择，绝不会是你人生圆满与否的必要条件。

很多事情，无非在于一个心境，你想要什么样的人生，你最终兜兜转转过上了什么样的人生，其实都是你自己一步一步走出来的。

每一次差强人意，都会给你想要改变的动力，回首往事，但求无悔就好了。','http://w.rdc.sae.sina.com.cn:3306/img/article/article2.1.jpg','http://w.rdc.sae.sina.com.cn:3306/img/article/article2.2.jpg',null,null);