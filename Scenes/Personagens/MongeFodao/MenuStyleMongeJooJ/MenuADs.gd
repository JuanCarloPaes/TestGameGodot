extends Control


var admob = null
var real_ads = false
var banner_top = false
# Fill these from your AdMob account:
var ad_banner_id = "ca-app-pub-5272578716556440/4424677274"
var ad_interstitial_id = "ca-app-pub-5272578716556440/5737758943"
var enable_ads = true


# Called when the node enters the scene tree for the first time.
func _ready():
	if Engine.has_singleton("AdMob"):
		admob = Engine.get_singleton("AdMob")
		admob.init(real_ads, get_instance_id())
		admob.loadBanner(ad_banner_id, banner_top)
		admob.loadInterstitial(ad_interstitial_id)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func show_ad_banner():
	if admob and enable_ads:
		admob.showBanner()

func hide_ad_banner():
	if admob:
		admob.hideBanner()
		

func show_ad_interstitial():
	if admob and enable_ads:
		admob.showInterstitial()
		
func _on_interstitial_close():
	if admob and enable_ads:
		show_ad_banner()
