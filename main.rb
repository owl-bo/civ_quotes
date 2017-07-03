#!/usr/bin/env ruby
# coding: utf-8
# 本当に雑な仕事だ

require 'yaml'

def quote
  YAML.load(DATA.read)['quotations'].sample
end

class String
  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end
end

def puts_main
  joint = "\n                "
  q = quote
  text = q['text'].scan(/.{1,20}/).join(joint)
  output = <<"EOS"

               
                #{text}
                
                #{q['tech']}
      )\___/(    #{q['origin']}
     {(@)v(@)}
      {|~~~|}
      {/^^^\}
=======`m-m`===========


EOS
  puts output.colorize(31)
end

puts_main

__END__
quotations:
  - tech: 漁業(Fishing)
    text: 人に魚を与えれば一日で食べてしまうが、人に釣りを教えれば一生食べていける
    origin: 老子

  - tech: 車輪(TheWheel)
    text: お前の肩で車輪を支えよ
    origin: イソップ

  - tech: 農業(Agriculture)
    text: 耕す者よ、祈りなさい。夏には恵みの雨が、冬には青空が与えられるように
    origin: ウェルギリウス

  - tech: 狩猟(Hunting)
    text: 二兎を追うもの一兎も得ず
    origin: アメリカ先住民の諺

  - tech: 神秘主義(Mysticism)
    text: 自然そのものに造物主の意志がこめられている
    origin: キケロ

  - tech: 帆走(Sailing)
    text: 風に指図はできないが、風に合わせて舵はとれる。
    origin: 不詳

  - tech: 採鉱(Mining)
    text: 山を動かす者も、まずは小石から始める。
    origin: 孔子

  - tech: 陶器(Pottery)
    text: では聞くが、陶芸家には自分の作品を自由にする権利が無いというのか？（焼き物師は同じ粘土から、一つを貴いことに用いる器に、一つを貴くないことに用いる器に造る権限があるのではないか。）
    origin: 聖書　ローマ人への手紙9章21節

  - tech: 畜産(AnimalHusbandry)
    text: 土地の実りも、家畜の産むもの（すなわち牛の子や羊の子）も祝福される。
    origin: 聖書　申命記28章4節

  - tech: 弓術Archery(弓術Archery)
    text: 我が身に返ってくる矢を投げてはならない。
    origin: クルディスタン（クルド人）の諺

  - tech: 瞑想(Meditation)
    text: 瞑想あるところ知恵あり、瞑想無きところ知恵無し。何が己を高め、何が己を低めるかを知れ
    origin: 仏陀

  - tech: 多神教(Polytheism)
    text: 永遠の命をもつ神々の種族と、地上を歩む人間の種族は、まったく似つかぬものなり。
    origin: ホメロス

  - tech: 石工術(Masonry)
    text: 味方からでなく、敵から学んだのだ。街の周りに高い壁をめぐらせる事を
    origin: アリストファネス

  - tech: 騎乗(HorsebackRiding)
    text: 真実を語るなら、足を鐙にかけよ
    origin: トルコの諺

  - tech: 聖職(Priesthood)
    text: 主があなたを祝福し、守られますように。主が御顔をあなたに照らし、恵まれますように。主が御顔をあなたに向け、平安を与えられますように
    origin: 26節

  - tech: 一神教(Monotheism)
    text: 私は神、あなたの主である。あなたは他の何物をも神としてはならない
    origin: 3節

  - tech: 青銅器BronzeWorking(青銅器BronzeWorking)
    text: 青年青銅の槍にて刺し貫かれて、戦場に横たわるは、まことにふさわしきことなり。その死においては、一切が正しきものに映るなり。
    origin: ホメロス

  - tech: 筆記(Writing)
    text: 誉れとは、記録に値する行動であり、読むに値する記録である
    origin: プリニウス

  - tech: 鋳金(MetalCasting)
    text: そはすべて剣を執る者は剣にて亡ぶべけんなり。
    origin: 聖書マタイによる福音書26章52節

  - tech: 鉄器(Ironworking)
    text: 鉄は熱いうちに打て
    origin: プブリウス

  - tech: アルファベット(Alphabet)
    text: 言葉は破壊と癒しの力を有する。真実を根ざした慈愛の言葉は、この世を変えることもできるのだ。
    origin: 仏陀

  - tech: 数学(Mathematics)
    text: 他の科学分野において疑い無き真理に到達できるのは、数学という土台の賜物である（誤りのない真実に到達できたら、その基礎知識を数学に置き換えてみるとよい。）
    origin: ロジャー・ベーコン

  - tech: 美学(Aesthetics)
    text: 芸術そのものに価値があるわけではない。芸術の表す真理、芸術の表す善、芸術の表す美にこそ価値がある
    origin: ジョルジュ・サンド

  - tech: 君主政治(Monarchy)
    text: 王の乱立は望ましくない。一人の支配者、唯一の王でよい。
    origin: ヘロドトス

  - tech: 羅針盤(Compass)
    text: 君子わが道を行く
    origin: エウリピデス

  - tech: 文学(Literature)
    text: 一部の本は賞味に値し、一部は嚥下に値し、一部は咀嚼と消化に値する。
    origin: フランシス・ベーコン

  - tech: 暦(Calendar)
    text: 何事にも定められた時がある。天の下で起きる全ての事に時がある
    origin: 聖書　伝道の書3章1節

  - tech: 建築学(Construction)
    text: その台座に銘ありて曰く、『わが名はオジマンディアス、諸王の中の王。神々よ、わが偉業の前に慄然せよ！』
    origin: パーシー・ビッシュ・シェリー

  - tech: 通貨(Currency)
    text: 誰かが金を払うならどんな物にも価値が生まれる
    origin: プブリウス・シルス

  - tech: 機械(Machinery)
    text: 機械仕掛けの神
    origin: メナンドロス

  - tech: 演劇(Drama)
    text: この世は舞台、人はみな役者。それぞれに登場し、いくつもの役をこなして退場してゆく
    origin: シェイクスピア

  - tech: 工学(Engineering)
    text: これ以上付け加える物が無くなった時でなく、これ以上取り去る物が無くなった時が完成だ
    origin: アントワーヌ・ド・サン＝テグジュペリ

  - tech: 法律(CodeofLaws)
    text: 正しき法、即ち強者が弱者を傷つけぬ事
    origin: ハムラビ法典

  - tech: 封建制(Feudalism)
    text: 主君に忠義を尽くし、主君と愛憎を一にする
    origin: アングロサクソン　臣従の誓い

  - tech: 光学(Optics)
    text: 久しく岸さえ見えぬ日々に耐えねば、新天地には辿り着けない。
    origin: アンドレ・ジッド

  - tech: 音楽(Music)
    text: 音楽が恋の糧なら、続けてくれ
    origin: シェイクスピア

  - tech: 哲学(Philosophy)
    text: 人が法律のために仕方なくする事を、自分から進んで行う。これこそ私が哲学から学んだ事だ
    origin: アリストテレス

  - tech: 官吏(CivilService)
    text: 政府が大きくなると、それを維持する仕事が増える。その為にまた政府を大きくする
    origin: 不詳(オスカー・ワイルド？)

  - tech: 神学(Theology)
    text: 二つの町があった。一つは神に愛されることで生まれ、もう一つは自分自身を愛することで生まれた
    origin: ヒッポのアウグスティヌス

  - tech: ギルド(Guild)
    text: 歓楽であろうと、気晴らしであろうと、同業者が互いに顔を合わせて必ず話すことは、公共に反するか価格をつり上げるためのもくろみと相場は決まっている。
    origin: アダム・スミス

  - tech: 神授王権(DivineRight)
    text: 朕は国家なり
    origin: ルイ十四世

  - tech: 紙(Paper)
    text: 本が無ければこの世は闇よ
    origin: トーマス・ジェファーソン

  - tech: 銀行制度(Banking)
    text: 銀行資本は武装した軍隊よりも恐ろしい
    origin: トーマス・ジェファーソン

  - tech: ナショナリズム(Nationalism)
    text: 人はわずかな日銭やつまらぬ違いのために、命を投げ出したりはしない。人を奮い立たせるには、魂に向かって話さねばならぬ。
    origin: ナポレオン

  - tech: 活版印刷(PrintingPress)
    text: 火器が戦争を変えた様に、印刷が言論を変えたのだ
    origin: ウェンデル・フィリップス

  - tech: 教育(Education)
    text: 物知りに勝る金持ち無し、無学に劣る貧乏無し
    origin: アリ・イブン・アリ・タリブ

  - tech: 憲法(Constitution)
    text: 適法な手続き無しには何人に対しても逮捕、拘束およびその他の危害を加える事はできない
    origin: 大憲章（マグナカルタ）

  - tech: 職業軍人(MilitaryTradition)
    text: 勝兵は先ず勝ちて而る後に戦いを求め、敗兵は先ず戦いて而る後に勝ちを求む
    origin: 孫子

  - tech: 共通規格(ReplaceableParts)
    text: 全体は部分の総和に勝る
    origin: アリストテレス

  - tech: 自由主義(Liberalism)
    text: 安全のために自由を手放す社会は結局どちらも手放す事になる
    origin: ベンジャミン・フランクリン

  - tech: 経済学(Economics)
    text: 宇宙最強の力、それは複利の力だ
    origin: アインシュタイン

  - tech: 火薬(Gunpowder)
    text: 優しい言葉に銃を添えれば、優しい言葉だけの時よりも多くの物を手に入れられる
    origin: アル・カポネ

  - tech: 民主主義(Democracy)
    text: 民主主義は最悪の政治形態と言われる。これまでに試された他の全ての政治形態を除いて
    origin: チャーチル

  - tech: ライフリング(Rifling)
    text: 政治権力は銃身から生まれる。
    origin: 毛沢東

  - tech: 天文学(Astronomy)
    text: 夜空の星には人を見上げさせ、別世界へと思いを馳せさせる力がある
    origin: プラトン

  - tech: 企業(Corporation)
    text: 企業/名詞/個人的責任を負わずに個人的利得を追求する機関
    origin: 悪魔の辞典アンブロウス・ビアース　

  - tech: 化学(Chemistry)
    text: 飢餓と豊穣、貧窮と富裕。その差は化学にある
    origin: ロバート・ブレント

  - tech: 軍事学(MilitaryScience)
    text: 今、政治と軍事を学ばなくてはならない。子供達の世代に数学や哲学を学ぶ自由を残す為に
    origin: ジョン・アダムズ

  - tech: 蒸気機関(SteamPower)
    text: 甲板の下で派手に火を焚いて、風や潮に逆らって帆走させようと言うのかね？そんなふざけた話に付き合う暇は無い
    origin: ナポレオン、ロバート･フルトンの蒸気船の上で

  - tech: 科学的手法(ScientificMethod)
    text: 私にはとても思えない。造物主が我々に知性を与えておきながら、それを使わぬようお望みになるなどとは
    origin: ガリレオ

  - tech: 鋼鉄(Steel)
    text: 蒸気ドリルが私を貫く前に、この手に持ったハンマーで自ら死のうと決めた
    origin: ジョン・ヘンリー「ザ･スティームドライビングマン」より

  - tech: 大量生産(AssemblyLine)
    text: フォード・モデルＴはあらゆる色を取り揃えている...黒である限りは。
    origin: ヘンリー・フォード（色を増やしてはという部下の進言に答えて）

  - tech: 共産主義(Communism)
    text: 貧民が腹を空かせているのを見て食物を施すと聖人だと呼ばれる。貧民が腹を空かせているのは何故かと聞くと共産主義者と呼ばれる
    origin: ドン・ヘルダー・カマラ（エルデル・カマラ大司教）

  - tech: 物理学(Physics)
    text: 全てのものには常に作用と反作用が働いている
    origin: ニュートン

  - tech: 生物学(Biology)
    text: 最も強い個体が生き残るのではなく、最も変化に柔軟な個体のみが生き残れる
    origin: ダーウィン

  - tech: 鉄道(Railroad)
    text: 馬鹿め嘘だ、馬鹿め嘘だ、ピッグはピッグでも豚じゃない。みんなピッグ・アイアン（銑鉄）なのさ
    origin: ロニー・ドネガン『ロック・アイランド・ライン』

  - tech: 飛行機(Flight)
    text: 飛ぶ喜びを味わったものは、地上を歩くとき、空を見上げずにはいられないだろう。何故なら、かつてはそこにいた事があり、また戻りたいと切望するからだ。
    origin: ダ・ヴィンチ

  - tech: 長距離砲(Artillery)
    text: つまらぬ喧嘩騒ぎも、大砲があれば威厳がつくというものだ。
    origin: フリードリヒ大王

  - tech: ファシズム(Fascism)
    text: 一般民衆の大半は...小さな嘘よりも大きな嘘の虜になりやすいものだ。
    origin: ヒトラー

  - tech: 電気(Electricity)
    text: 安い電気を作ろう。金持ちしかロウソクを燃やさなくなるほど安く。
    origin: エジソン

  - tech: 医術(Medicine)
    text: 患者を扱う際の心得は二つ。助けよ。さもなくば、傷つけるな。
    origin: ヒポクラテス

  - tech: 内燃機関(Combustion)
    text: 生活に必要なものはみんな遠くにある。だから車に乗って行こう
    origin: E.B.ホワイト

  - tech: ロケット工学(Rocketry)
    text: 地球は人類のゆりかごである。だが人はいつまでもゆりかごに入っているわけにはいかない
    origin: コンスタンチン.E.ツィオルコフスキー

  - tech: 産業主義(Industrialism)
    text: 目指す所は一つ。高品質、低価格、高賃金だ（企業が根本理念とすべきなのは、コストを最小限に抑えて最高品質の製品を作り、労働者に最大限の賃金を払うことである。）
    origin: ヘンリー・フォード

  - tech: 核分裂(Fission)
    text: 千の太陽が天空で一時に輝やいたとすれば、それはかの崇高なるものの輝きにもにている...そのとき私は世界の破壊者、死に神となったのだ。
    origin: Ｊ・ロバート・オッペンハイマー『バガヴァットギター』を引用して

  - tech: 冷蔵技術(Refrigeration)
    text: 何を食べるかで、その人間がわかる。
    origin: アンセルム・ブリア・サヴァラン

  - tech: 無線通信(Radio)
    text: そしてある朝、彼女はラジオをNYの局に合せた。彼女の命はロックンロールに救われたのさ。
    origin: ヴェルヴェット・アンダーグラウンド『ロックンロール』

  - tech: 人工衛星(Satellites)
    text: ピー・・・ピー・・・ピー・・・ピー・・・
    origin: スプートニク一号

  - tech: 航空工学(AdvancedFlight)
    text: ああ空へ大地のくびきすり抜けて手を出し神の頬をひとなぜ
    origin: ジョン・ギリスピー・マギーJr.

  - tech: プラスチック(Plastic)
    text: 一言だけ、君に言いたい。これからはプラスチックだ。
    origin: カルダー・ウィリンガム「卒業」

  - tech: レーザー(Laser)
    text: 宇宙の法則に従えば何物も光の速さを超えることはできない。それ自身の法則に従うような物質を除いては
    origin: ダグラス・アダムズ

  - tech: コンピュータ(Computers)
    text: 窓から捨てたら困るようなコンピュータは信頼するな。
    origin: スティーヴ・ウォズニアック

  - tech: マスメディア(MassMedia)
    text: 噂されることよりももっと悪いことがある。それは噂にすらされないことだ。
    origin: オスカー・ワイルド

  - tech: 複合素材(Composites)
    text: 全体は部分の総和に勝る
    origin: アリストテレス

  - tech: 超伝導(Superconductor)
    text: 幸福とは何か？それは力が高まり、何も阻む物が無いという感覚だ
    origin: ニーチェ

  - tech: 光ファイバー(FiberOptics)
    text: 科学の光は一つ。どこを照らそうと全体が明るくなる
    origin: アイザック・アシモフ

  - tech: エコロジー(Ecology)
    text: この大地は先祖からもらったのではなく、子孫からの借りもの
    origin: アメリカ先住民の歌

  - tech: 遺伝子工学(Genetics)
    text: 近い将来、遺伝子疾患を持つ子をそのまま誕生させる事は、親の罪になるだろう
    origin: ボブ・エドワーズ

  - tech: ロボット工学(Robotics)
    text: ロボットが意思を持っているかではなく、人が意思を持っているかが問題なのだ
    origin: バラス・F・スキナー

  - tech: ステルス(Stealth)
    text: 帳の後ろに身を潜め、陰にして在。我は力を持った魂であった
    origin: ジャン・ラシーヌ

  - tech: 核融合(Fusion)
    text: 高度に発達した科学は魔法と区別が付かない
    origin: アーサー・C・クラーク

  - tech: 未来技術(FutureTech)
    text: 未来はより良い明日になるだろう
    origin: ダン・クエール

  - tech: 畜産(Animal Husbandry)
    origin: 申命記25章4節
    text: 汝、穀物を碾す牛に口籠を繋ぐなかれ。

  - tech: 弓術(Archery)
    origin: イソップ
    text: その矢軸には、鷹自身の羽が矢羽として取り付けられていた。我々は時として自分から、敵に自らを滅ぼす手段を与えてしまう。

  - tech: 青銅器(Bronze Working)
    origin: ホメロス
    text: 5メートルはあろうかという槍を手にヘクターが入ってきた。長い柄の先端に金のリングで固定された青銅の切っ先が彼の眼前できらりと光る

  - tech: 暦(Calendar)
    origin: 詩篇90編12節
    text: 願くは、われらにおのが日を数えることを教えて、智慧のこころを得しめ給え。

  - tech: 石工術(Masonry)
    origin: ウェルギリウス
    text: こうしてすでに自分の城壁をもっている人たちはなんと幸せなことだろう。

  - tech: 採鉱(Mining)
    origin: J・ポール・ゲティ
    text: 柔和な人たちは地を受けつぐであろう。ただし採掘権を除いて。

  - tech: 陶器(Pottery)
    origin: イザヤ書45章9節
    text: 泥塊は陶工に向かいて汝なにを造るかと言うべけんや。

  - tech: 帆走(Sailing)
    origin: テミストクレス
    text: 海を制するものはすべてを制す。

  - tech: 車輪(The Wheel)
    origin: 日本の諺
    text: 智徳は車の両輪のごとし。

  - tech: 狩猟(Trapping)
    origin: 聖ジェローム
    text: 野蛮な獣や放浪する鳥でさえ、二度同じ罠にはかからない。

  - tech: 筆記(Writing)
    origin: ジョン・ミルトン
    text: 良書の抹殺は、理性それ自体を殺すことに等しい。

  - tech: 建築(Construction)
    origin: ヨハン・ウォルフガング・フォン・ゲーテ
    text: 建築で考えるべきことは三つ。建てる位置が適切であるか、安全に建てられるか、首尾よく建てられるかだ。

  - tech: 騎乗(Horseback Riding)
    origin: シェイクスピア（リチャードⅢ世）
    text: 馬と引き換えに我が王国をやろう！

  - tech: 鉄器(Iron Working)
    origin: ウィリアム・バトラー・イェイツ
    text: 鉄を打つのに熱くなるのを待つな。打って熱くしろ。

  - tech: 数学(Mathematics)
    origin: ロジャー・ベーコン
    text: 数学は科学への扉であり鍵である。

  - tech: 光学(Optics)
    origin: サミュエル・バトラー
    text: 彼は月が満月であるか否かを知るための道具を作りあげた。

  - tech: 哲学(Philosophy)
    origin: ソクラテス
    text: 唯一善なるものは知なり、唯一悪しきものは無知なり。

  - tech: 騎士道(Chivalry)
    origin: マロリー
    text: この石と鉄床より剣を引き出したる者こそ、全イングランドの血筋正しき王なり。

  - tech: 官吏(Civil Service)
    origin: ユージーン・マッカーシー
    text: 官僚制の唯一の救いは、その非能率性にある。

  - tech: 羅針盤(Compass)
    origin: オリバー・ウェンデル・ホームズ
    text: この世で大切なことは、今、自分がどこにいるかということよりも、むしろどの方向に向かって進んでいるかということであると思う。

  - tech: 通貨(Currency)
    origin: アメンエムオペト
    text: 富で苛立つよりはパンで幸福になる方がよい。

  - tech: 教育(Education)
    origin: アリストテレス
    text: 教育は老年の最上の糧食なり。

  - tech: 工学(Engineering)
    origin: レオナルド・ダ・ヴィンチ
    text: 器械もしくは機械工学は最も高貴な、そして何にもまして、役立つ学問だ。

  - tech: 機械(Machinery)
    origin: トーマス・ジェファーソン
    text: 印刷機は人の精神を啓発する最も優れた機械だ。それは人を理性的に、道徳的に、そして社会的に改良する。

  - tech: 鋳金(Metal Casting)
    origin: スリ・グル・グラント・サーヒブ
    text: 青銅や金そして鉄製の品物が壊れた時、金属細工師が炎の中でそれらを再び溶接し、そのつなぎは定着する

  - tech: 物理学(Physics)
    origin: ガリレオ
    text: 測定できるものはすべて測定し、測定できぬものはすべて測定できるようにせよ。

  - tech: 鋼鉄(Steel)
    origin: 作者不詳『ジョン・ヘンリーのバラッド、鋼鉄の男』
    text: ジョン・ヘンリーは親方に向かって言った。『人間には人間のやり方があるんだ。蒸気ドリルに打ちのめされるくらいなら、ハンマーを握りしめたまま死んだ方がましだよ』

  - tech: 神学(Theology)
    origin: 聖トマス・アクィナス
    text: 人の救済には三つのことが必要である。彼が信じるべきものを知り、彼が望むべきものを知り、彼がすべきことを知ることだ。

  - tech: ルネサンス(Renaissance Era)
    origin: 音響学(Acoustics)
    text: 音響学(Acoustics)

  - tech: 考古学(Archaeology)
    origin: ジョージ・サンタヤナ
    text: 過去を記憶できぬ者はそれを繰り返すべく呪われている。

  - tech: 天文学(Astronomy)
    origin: ホメロス
    text: 喜びに満ちあふれる気高いオデュッセウスは、そよ風に帆を張り、かじも巧みに船を進ませた

  - tech: 銀行制度(Banking)
    origin: ジャン=ジャック・ルソー
    text: 幸せとは、確かな銀行口座と万能なコック、そして丈夫な胃袋をもつことだ

  - tech: 化学(Chemistry)
    origin: カルビン・クーリッジ
    text: 我が文明の水準を押し上げ、国家の生産力を向上させているのは、かの化学者の業績に他ならない

  - tech: 経済学(Economics)
    origin: アルバート・アインシュタイン
    text: 宇宙最強の力、それは複利の力だ。

  - tech: 化学肥料(Fertilizer)
    origin: フランクリン・D・ルーズベルト
    text: 国土を破壊する国家は自らを破壊する。

  - tech: 火薬(Gunpowder)
    origin: アルフレッド・ノーベル
    text: ふたつの敵対する兵団がお互いを一瞬のうちに壊滅させる力を持った時にこそ、すべての文明国家は戦いから身を引き、兵士を解放するべきである

  - tech: 冶金(Metallurgy)
    origin: ベンジャミン・フランクリン
    text: 質の悪い鋼から作られたナイフが良かったためしはない。

  - tech: 軍事学(Military Science)
    origin: ジョージ・パットン
    text: 兵器は使われるだろう。だが、戦争で勝つのは人間なのだ。服従し、指揮する、人間の精神こそが、勝利を手にするのだ。

  - tech: 航海術(Navigation)
    origin: エドワード・ギボン
    text: あらゆる風と波は常に優秀な航海士の味方となる。

  - tech: 活版印刷(Printing Press)
    origin: シカゴ・タイムズ
    text: ニュースを刷って大騒ぎするのが新聞の義務である。

  - tech: ライフリング(Rifling)
    origin: ロバート・E・リー
    text: 戦争がかくも悲惨なのは良いことである。さもなくば我々は戦争に夢中になってしまうだろう。

  - tech: 科学理論(Scientific Theory)
    origin: ジョン・デューイ
    text: 偉大な科学的進歩はすべて新しく大胆な想像力から生まれている。

  - tech: 生物学(Biology)
    origin: ライアル・ワトソン
    text: もし脳がそんなにも単純で、それを理解できたとしても我々は、そんなふうに理解できるほど単純ではない。

  - tech: 内燃機関(Combustion)
    origin: アルバート・アインシュタイン
    text: 美女にキスしながらも安全な運転ができる男は、間違いなくキスに充分集中していない。

  - tech: ダイナマイト(Dynamite)
    origin: クリストファー・ドーソン
    text: 人は悪と戦う際に、いかなる手段も許されると判断するやいなや、彼らにおける善は彼らが撲滅しようとする悪と見分けがつかなくなる

  - tech: 電気(Electricity)
    origin: ナサニエル・ホーソーン
    text: これは現実か、はたまた夢か？　電気なるものの方便にて、物質世界が一つの巨大な神経となり、幾千もの距離を息をも付かぬ間に震わせるとは。

  - tech: 飛行機(Flight)
    origin: イゴール・シコルスキー
    text: 航空学は産業でもなければ科学でもなかった。それは奇跡だった。

  - tech: 無線(Radio)
    origin: ウディ・アレン
    text: 国中すべてが、ラジオによって結びつけられていた。私たちはみな同じヒーローを、コメディアンを、歌手を聴いた。彼らは巨人のようだった。

  - tech: 鉄道(Railroad)
    origin: トーマス・ジェファーソン
    text: 素晴らしく強力な蒸気と鉄道の融合は人類に大きな変革をもたらすであろう。

  - tech: 冷蔵(Refrigeration)
    origin: ウィリアム・ワーズワース
    text: そして私は千の家々の傍らで住む所も無くたたずみ、千の食卓の傍らで食べ物を探し求めた。

  - tech: 共通規格(Replaceable Parts)
    origin: ヘンリー・フォード
    text: 小さな作業に分割してしまえば、殊更に難しいことなどない。

  - tech: 蒸気機関(Steam Power)
    origin: タウンゼント・ハリス
    text: 西洋諸国は蒸気を通じたやりとりによって世界がひとつの家族になるよう願っている。

  - tech: 電信(Telegraph)
    origin: マーク・トウェイン
    text: 12人の友達に、『すぐに逃げろ、全部ばれちまった』って電報を送ったんだ。みんなあっという間に町を飛び出したよ。

  - tech: 先進弾道学(Advanced Ballistics)
    origin: トム・レーラー
    text: いったんロケットが打ち上がってしまえば、それがどこに落ちるかなんて、誰が気にするだろう？

  - tech: 原子理論(Atomic Theory)
    origin: アルバート・アインシュタイン
    text: 解き放たれた原子の力はすべてを変えてしまった・・・われわれの考え方をのぞいて。それゆえ、われわれは未曽有の大災厄へと近づいている。

  - tech: コンピューター(Computers)
    origin: ジョゼフ・キャンベル
    text: コンピューターは旧約聖書の神のようだ・・・規則が多く、そして情け容赦ない。

  - tech: エコロジー(Ecology)
    origin: レイチェル・カーソン
    text: 唯一、現世紀という瞬間でだけ一つの種が、つまり人間が、世界の性質を変えるような重大な力を獲得した。

  - tech: 電子工学(Electronics)
    origin: トリップ・ホーキンス
    text: 家電製品の根本的な原則とはこうだ・・・常により強力に、そして常により安く。

  - tech: グローバル化(Globalization)
    origin: マーシャル・マクルハン
    text: 新たな電子的結びつきが、世界を"地球村"のイメージへと作り変えました。

  - tech: レーザー(Lasers)
    origin: 『新約聖書』ローマの信徒への手紙13：12
    text: 夜は更け、日は近づいた。故に我々は闇のつとめを脱ぎ捨て、そして光の防具を身につけよう

  - tech: マスメディア(Mass Media)
    origin: エドワード・R・マロー
    text: 通信の速度には驚くべきものがあるが、その速さが偽りの情報を増加させるのもまた事実である

  - tech: 核分裂(Nuclear Fission)
    origin: ロバート・オッペンハイマー
    text: 我は死なり、世界の破壊者なり。

  - tech: マンハッタン計画を主導し"原爆の父"として知られたオッペンハイマーが、後年その行為を悔いて、古代インドの聖典『バガヴァッド・ギーター』より引用した一節。
    origin: ペニシリン(Penicillin)
    text: ペニシリン(Penicillin)

  - tech: プラスチック(Plastics)
    origin: 『卒業』より、バック・ヘンリー、カルダー・ウィリンガム
    text: ベン、一言だけ、一言だけ君に言っておきたい・・・これからはプラスチックだ。

  - tech: レーダー(Radar)
    origin: ジョナサン・スウィフト
    text: 洞察とは見えぬものを視る術である。

  - tech: ロケット工学(Rocketry)
    origin: 宇宙航行学マガジン
    text: ロケット実験に携わる者は、それがいつでも爆発しうるものだと考えておくべきです。

  - tech: 人工衛星(Satellites)
    origin: リンドン・B・ジョンソン
    text: いまや、なぜか、どういうわけか・・・空は異星のようなものだ。

  - tech: ステルス(Stealth)
    origin: 孫子
    text: 微乎微乎、至於無形。神乎神乎、至於無声。故能為敵之司命。

  - tech: ナノテクノロジー(Nanotechnology)
    origin: リチャード・シュワルツ
    text: ナノテクノロジーの衝撃はエレクトロニクス革命が私たちの生活にもたらしたものを上回ると予想される

  - tech: 核融合(Nuclear Fusion）
    origin: アルバート・アインシュタイン
    text: 原子力の解放が新しい問題を引き起こしたのではない。それはすでに存在している問題を解決する必要性をより緊急なものにしたにすぎない。

  - tech: 素粒子物理学(Particle Physics)
    origin: アイザック・ニュートン
    text: すべての物体の粒子は互いに引き合い、その力の大きさは互いの距離の2乗に反比例する

  - tech: 未来技術(Future Tech)
    origin: ジョージ・W・ブッシュ
    text: 異論はないと思うが、過去は終わった。
