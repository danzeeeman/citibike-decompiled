#[GIVE ME YOUR DATA! ...Please?](http://makeitdoathing.com/index.php/give-me-your-data/)
##Decompiled CitiBike Android App v1.1.0

End-Points

		./smali/com/citibikenyc/citibike/PlaceDataManager.smali:.field public static final ALTA_STATION_UPDATE_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/data2/stations.php?updateOnly=true"
		./smali/com/citibikenyc/citibike/PlaceDataManager.smali:.field public static final ALTA_STATION_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/data2/stations.php"
		./smali/com/citibikenyc/citibike/PlaceDataManager.smali:.field public static final BRANCH_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/v1/branch/list"
		./smali/com/citibikenyc/citibike/PlaceDataManager.smali:.field public static final CONTENT_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/v1/content/list"
		./smali/com/citibikenyc/citibike/PlaceDataManager.smali:.field public static final HELMET_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/v1/helmet/list"
		./smali/com/citibikenyc/citibike/PlaceDataManager.smali:.field public static final SCOOP_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/data2/poi.json"
		./smali/com/citibikenyc/citibike/PlaceDataManager.smali:.field public static final TEST_STATION_UPDATE_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/v1/station/updates"
		./smali/com/citibikenyc/citibike/PlaceDataManager.smali:.field public static final TEST_STATION_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/v1/station/list"
		./smali/com/citibikenyc/citibike/PlaceDataManager.smali:    const-string v1, "http://appservices.citibikenyc.com/data2/poi.json"
		./smali/com/citibikenyc/citibike/PlaceDataManager.smali:    const-string v1, "http://appservices.citibikenyc.com/v1/content/list"
		./smali/com/citibikenyc/citibike/PlaceDataManager.smali:    const-string v1, "http://appservices.citibikenyc.com/data2/stations.php"
		./smali/com/citibikenyc/citibike/PlaceDataManager.smali:    const-string v1, "http://appservices.citibikenyc.com/data2/stations.php?updateOnly=true"
		./smali/com/citibikenyc/citibike/PlaceDataManager.smali:    const-string v3, "http://appservices.citibikenyc.com/v1/helmet/list"
		./smali/com/citibikenyc/citibike/PlaceDataManager.smali:    const-string v3, "http://appservices.citibikenyc.com/v1/branch/list"




###Steps take to produce this package:

		1) Used ApkExtrator to copy com.citibikenyc.citibike_1.0.apk
		2) Ran apktool d com.citibikenyc.citibike_1.0.apk to generate what is in the com.citibikenyc.citibike_1.0
		3) Ran unzip com.citibikenyc.citibike_1.0.apk
		4) Ran dex2jar-0.0.9.13/dex2jar.sh classes.dex to generate classes_dex2jar.jar

Tools Used:

[dex2jar](https://code.google.com/p/dex2jar/)

[Android-ApkTool](https://code.google.com/p/android-apktool/)

[Apk Extractor](https://play.google.com/store/apps/details?id=net.sylark.apkextractor&hl=en)

===================

To checkout their data look in assets/ or in com.citibikenyc.citibike_1.0/assets

You can look at the SQLite database of all the bike lanes:

		$ sqlite3 citibike_lanes

the table is bikelanes and has the following columns 

		0|slat|REAL|0||0
		1|slng|REAL|0||0
		2|elat|REAL|0||0
		3|elng|REAL|0||0
		4|bikelanes|REAL|0||0

if you run `select * from bikelanes;` you should see TONS of starting and end points ready to be drawn on a map

branch.json looks like it has all of the locations

helmet.json looks like it has a list of bike shops

###Other things you can do

===================

Open classes_dex2jar.jar with [JD-GUI](http://java.decompiler.free.fr/?q=jdgui) and look at the decompile source code

Grep the smali for URL's

		$ cd com.citibikenyc.citibike_1.0/smali/com/citibikenyc

		$ grep -R "http" .

		./citibike/ContactFragment.smali:    const-string v0, "http://www.citibikenyc.com"
		./citibike/helpers/ShareHelper.smali:    const-string v2, " riding a Citi Bike. Sent from the Citi Bike app. Download it here: http://citibikenyc.com/"
		./citibike/helpers/ShareHelper.smali:    const-string v0, "http://citibikenyc.com/"
		./citibike/MainActivity.smali:    const-string v1, "http://www.nyc.gov/html/dot/downloads/pdf/dot_bikesmart_brochure.pdf"
		./citibike/MainActivity.smali:    const-string v1, "http://www.nyc.gov/html/dot/downloads/pdf/bicyclerules_fy08_english.pdf"
		./citibike/PlaceDataManager.smali:.field public static final ALTA_STATION_UPDATE_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/data2/stations.php?updateOnly=true"
		./citibike/PlaceDataManager.smali:.field public static final ALTA_STATION_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/data2/stations.php"
		./citibike/PlaceDataManager.smali:.field public static final BRANCH_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/v1/branch/list"
		./citibike/PlaceDataManager.smali:.field public static final CONTENT_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/v1/content/list"
		./citibike/PlaceDataManager.smali:.field public static final HELMET_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/v1/helmet/list"
		./citibike/PlaceDataManager.smali:.field public static final TEST_STATION_UPDATE_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/v1/station/updates"
		./citibike/PlaceDataManager.smali:.field public static final TEST_STATION_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/v1/station/list"
		./citibike/PlaceDataManager.smali:    const-string v1, "http://appservices.citibikenyc.com/v1/content/list"
		./citibike/PlaceDataManager.smali:    const-string v1, "http://appservices.citibikenyc.com/data2/stations.php"
		./citibike/PlaceDataManager.smali:    const-string v1, "http://appservices.citibikenyc.com/data2/stations.php?updateOnly=true"
		./citibike/PlaceDataManager.smali:    const-string v3, "http://appservices.citibikenyc.com/v1/helmet/list"
		./citibike/PlaceDataManager.smali:    const-string v3, "http://appservices.citibikenyc.com/v1/branch/list"
		./citibike/tasks/GetDirectionsTask.smali:    const-string v7, "http://maps.googleapis.com/maps/api/directions/json?origin="
		./citibike/tasks/MapGeocodeTask.smali:    const-string v19, "https://maps.googleapis.com/maps/api/place/details/json?reference="
		./citibike/tasks/MapGeocodeTask.smali:    const-string v19, "https://maps.googleapis.com/maps/api/geocode/json?address="
		./citibike/tasks/MapGetPlaces.smali:    const-string v14, "https://maps.googleapis.com/maps/api/place/autocomplete/json?input="




