.class public Lfeem/MainActivity;
.super Lorg/apache/cordova/CordovaActivity;
.source "MainActivity.java"


# static fields
.field private static final REQUEST_WRITE_STORAGE:I = 0x70

.field private static back_pressed:J


# instance fields
.field private final ACTIVITY_RESULT_APP_DETAIL_SETTINGS:I

.field private ACTIVITY_RESULT_CHANGE_AVATAR:I

.field private ACTIVITY_RESULT_FILE_BROWSER:I

.field private ACTIVITY_RESULT_NEW_DOWNLOAD_FOLDER:I

.field private ACTIVITY_RESULT_REQUEST_PERMISSION_LOCATION:I

.field private ACTIVITY_RESULT_REQUEST_PERMISSION_STORAGE:I

.field private ADD_SHARED_FILE_REQUEST_CODE:I

.field private CAMERA_CAPTURE_IMAGE_REQUEST_CODE:I

.field activityIsInBackground:Z

.field current_to:Ljava/lang/String;

.field private mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field private mMessageReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestPermissionHandler:Lfeem/RequestPermissionHandler;

.field private outputFileUri:Landroid/net/Uri;

.field pendingAdToShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lorg/apache/cordova/CordovaActivity;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lfeem/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lfeem/MainActivity;->activityIsInBackground:Z

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lfeem/MainActivity;->pendingAdToShow:Z

    const/16 v0, 0x7c0

    .line 87
    iput v0, p0, Lfeem/MainActivity;->CAMERA_CAPTURE_IMAGE_REQUEST_CODE:I

    const/16 v0, 0x7c1

    .line 88
    iput v0, p0, Lfeem/MainActivity;->ACTIVITY_RESULT_FILE_BROWSER:I

    const/16 v0, 0x7c2

    .line 89
    iput v0, p0, Lfeem/MainActivity;->ACTIVITY_RESULT_NEW_DOWNLOAD_FOLDER:I

    const/16 v0, 0x7c3

    .line 90
    iput v0, p0, Lfeem/MainActivity;->ACTIVITY_RESULT_CHANGE_AVATAR:I

    const/16 v0, 0x7c4

    .line 91
    iput v0, p0, Lfeem/MainActivity;->ADD_SHARED_FILE_REQUEST_CODE:I

    const/16 v0, 0x7c5

    .line 92
    iput v0, p0, Lfeem/MainActivity;->ACTIVITY_RESULT_REQUEST_PERMISSION_STORAGE:I

    const/16 v0, 0x7c6

    .line 93
    iput v0, p0, Lfeem/MainActivity;->ACTIVITY_RESULT_APP_DETAIL_SETTINGS:I

    const/16 v0, 0x7c7

    .line 94
    iput v0, p0, Lfeem/MainActivity;->ACTIVITY_RESULT_REQUEST_PERMISSION_LOCATION:I

    const-string v0, ""

    .line 99
    iput-object v0, p0, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    .line 702
    new-instance v0, Lfeem/MainActivity$13;

    invoke-direct {v0, p0}, Lfeem/MainActivity$13;-><init>(Lfeem/MainActivity;)V

    iput-object v0, p0, Lfeem/MainActivity;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lfeem/MainActivity;)I
    .locals 0

    .line 76
    iget p0, p0, Lfeem/MainActivity;->ACTIVITY_RESULT_REQUEST_PERMISSION_LOCATION:I

    return p0
.end method

.method static synthetic access$100(Lfeem/MainActivity;)Lfeem/RequestPermissionHandler;
    .locals 0

    .line 76
    iget-object p0, p0, Lfeem/MainActivity;->mRequestPermissionHandler:Lfeem/RequestPermissionHandler;

    return-object p0
.end method

.method static synthetic access$200(Lfeem/MainActivity;)I
    .locals 0

    .line 76
    iget p0, p0, Lfeem/MainActivity;->ACTIVITY_RESULT_REQUEST_PERMISSION_STORAGE:I

    return p0
.end method

.method static synthetic access$300(Lfeem/MainActivity;)I
    .locals 0

    .line 76
    iget p0, p0, Lfeem/MainActivity;->ACTIVITY_RESULT_FILE_BROWSER:I

    return p0
.end method

.method static synthetic access$400(Lfeem/MainActivity;)I
    .locals 0

    .line 76
    iget p0, p0, Lfeem/MainActivity;->ADD_SHARED_FILE_REQUEST_CODE:I

    return p0
.end method

.method static synthetic access$500(Lfeem/MainActivity;)I
    .locals 0

    .line 76
    iget p0, p0, Lfeem/MainActivity;->ACTIVITY_RESULT_CHANGE_AVATAR:I

    return p0
.end method

.method static synthetic access$600(Lfeem/MainActivity;)I
    .locals 0

    .line 76
    iget p0, p0, Lfeem/MainActivity;->ACTIVITY_RESULT_NEW_DOWNLOAD_FOLDER:I

    return p0
.end method

.method static synthetic access$700(Lfeem/MainActivity;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 0

    .line 76
    iget-object p0, p0, Lfeem/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object p0
.end method

.method static synthetic access$800(Lfeem/MainActivity;)I
    .locals 0

    .line 76
    iget p0, p0, Lfeem/MainActivity;->CAMERA_CAPTURE_IMAGE_REQUEST_CODE:I

    return p0
.end method

.method static synthetic access$900(Lfeem/MainActivity;)Landroid/net/Uri;
    .locals 0

    .line 76
    iget-object p0, p0, Lfeem/MainActivity;->outputFileUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static openFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const-string v0, "feem.fileprovider"

    .line 586
    invoke-static {p0, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 587
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    .line 590
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 595
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 597
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 600
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 603
    invoke-virtual {v4, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "*/*"

    .line 610
    :cond_2
    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_3

    .line 612
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    const-string p1, "Open in..."

    .line 662
    invoke-static {v3, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 663
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 665
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openImageIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 904
    iput-object p1, p0, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    const-string v0, "apps"

    .line 906
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 907
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lfeem/AllAppsActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "to"

    .line 908
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    invoke-virtual {p0, p2}, Lfeem/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 945
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "*/*"

    .line 946
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    .line 947
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 957
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    const/4 v1, 0x1

    if-lt p2, v0, :cond_1

    const-string p2, "android.intent.extra.LOCAL_ONLY"

    .line 958
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 960
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p2, v0, :cond_2

    const-string p2, "android.intent.extra.ALLOW_MULTIPLE"

    .line 961
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    const-string p2, "Open in..."

    .line 967
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 968
    iget p2, p0, Lfeem/MainActivity;->CAMERA_CAPTURE_IMAGE_REQUEST_CODE:I

    invoke-virtual {p0, p1, p2}, Lfeem/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method handleActivityIntent(Landroid/content/Intent;)V
    .locals 4

    .line 279
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "feem"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfeem/MainActivity$3;

    invoke-direct {v3, p0, v0, v1, p1}, Lfeem/MainActivity$3;-><init>(Lfeem/MainActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 301
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method handleSendFile(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.intent.extra.STREAM"

    .line 308
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 309
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 313
    :try_start_0
    invoke-static {p0, p1}, Lfeem/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v1, :cond_0

    .line 319
    new-instance p1, Lfeem/MainActivity$4;

    invoke-direct {p1, p0}, Lfeem/MainActivity$4;-><init>(Lfeem/MainActivity;)V

    invoke-virtual {p0, p1}, Lfeem/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 329
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 335
    :cond_1
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    const-string v2, "pending_files_updated"

    .line 336
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "files"

    .line 337
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/pending_files_updated"

    const-string v1, "from_ui"

    .line 342
    invoke-static {v0, p1, v1}, Lfeem/FeemService;->request_from_core(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:native_callback("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 346
    new-instance v0, Lfeem/MainActivity$5;

    invoke-direct {v0, p0, p1}, Lfeem/MainActivity$5;-><init>(Lfeem/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lfeem/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 356
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 357
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FEEMWIFI"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method handleSendMultipleFiles(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.intent.extra.STREAM"

    .line 363
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 364
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_1

    .line 368
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const/4 v2, 0x0

    .line 371
    :try_start_0
    invoke-static {p0, v1}, Lfeem/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 373
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-nez v2, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 393
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 399
    :cond_2
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    const-string v2, "pending_files_updated"

    .line 400
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "files"

    .line 401
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/pending_files_updated"

    const-string v1, "from_ui"

    .line 406
    invoke-static {v0, p1, v1}, Lfeem/FeemService;->request_from_core(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:native_callback("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 410
    new-instance v0, Lfeem/MainActivity$7;

    invoke-direct {v0, p0, p1}, Lfeem/MainActivity$7;-><init>(Lfeem/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lfeem/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 418
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 419
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FEEMWIFI"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public isLocationPermissionRequired()Z
    .locals 4

    .line 1242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 1246
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 1247
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1250
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1252
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isStoragePermissionRequired()Z
    .locals 4

    .line 1220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 1224
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1225
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1228
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method launch_file_picker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 891
    invoke-direct {p0, p1, p2}, Lfeem/MainActivity;->openImageIntent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadads()V
    .locals 2

    .line 187
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 192
    iget-object v1, p0, Lfeem/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1266
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfeem/MainActivity$15;

    invoke-direct {v1, p0, p2, p1, p3}, Lfeem/MainActivity$15;-><init>(Lfeem/MainActivity;IILandroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1743
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onBackPressed()V
    .locals 7

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backbutton"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "feem"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-wide v2, Lfeem/MainActivity;->back_pressed:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v0, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 223
    invoke-virtual {p0}, Lfeem/MainActivity;->finish()V

    .line 224
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    .line 227
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0}, Lfeem/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Press once again to exit"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lfeem/MainActivity;->back_pressed:J

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 104
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "feem"

    const-string v0, "activity started"

    .line 105
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance p1, Lfeem/RequestPermissionHandler;

    invoke-direct {p1}, Lfeem/RequestPermissionHandler;-><init>()V

    iput-object p1, p0, Lfeem/MainActivity;->mRequestPermissionHandler:Lfeem/RequestPermissionHandler;

    .line 109
    invoke-virtual {p0}, Lfeem/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x2

    .line 112
    new-array p1, p1, [Lio/fabric/sdk/android/Kit;

    new-instance v0, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v0}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    new-instance v0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    invoke-direct {v0}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;-><init>()V

    const/4 v2, 0x1

    aput-object v0, p1, v2

    invoke-static {p0, p1}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 115
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lfeem/MainActivity;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "feem_message"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 118
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lfeem/MainActivity;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "show_alert"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 119
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lfeem/MainActivity;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "turn_on_accessibility"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 121
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lfeem/MainActivity;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "show_file_picker"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 122
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lfeem/MainActivity;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "add_shared_files"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 123
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lfeem/MainActivity;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "open_file_browser"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 124
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lfeem/MainActivity;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "change_downloads_folder"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 125
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lfeem/MainActivity;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "change_avatar"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 126
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lfeem/MainActivity;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "quit"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 127
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lfeem/MainActivity;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "copy_to_clipboard"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 128
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lfeem/MainActivity;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "show_ad"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 130
    iget-object p1, p0, Lfeem/MainActivity;->launchUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lfeem/MainActivity;->loadUrl(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lfeem/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Lfeem/MainActivity;->handleActivityIntent(Landroid/content/Intent;)V

    .line 138
    invoke-virtual {p0}, Lfeem/MainActivity;->isLocationPermissionRequired()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lfeem/MainActivity;->showLocationPermissionDialog()V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lfeem/MainActivity;->isStoragePermissionRequired()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    invoke-virtual {p0}, Lfeem/MainActivity;->showStoragePermissionDialog()V

    .line 149
    :cond_1
    new-instance p1, Lfeem/MainActivity$1;

    invoke-direct {p1, p0}, Lfeem/MainActivity$1;-><init>(Lfeem/MainActivity;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    .line 155
    new-instance p1, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lfeem/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 157
    iget-object p1, p0, Lfeem/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v0, "ca-app-pub-8388566269497561/2459757559"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lfeem/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v0, Lfeem/MainActivity$2;

    invoke-direct {v0, p0}, Lfeem/MainActivity$2;-><init>(Lfeem/MainActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 175
    iput-boolean v1, p0, Lfeem/MainActivity;->activityIsInBackground:Z

    .line 177
    invoke-virtual {p0}, Lfeem/MainActivity;->loadads()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 207
    invoke-super {p0}, Lorg/apache/cordova/CordovaActivity;->onDestroy()V

    const-string v0, "feem"

    const-string v1, "destroy"

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 209
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 260
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "feem"

    const-string v1, "on new intent called"

    .line 261
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0, p1}, Lfeem/MainActivity;->handleActivityIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 433
    invoke-super {p0}, Lorg/apache/cordova/CordovaActivity;->onPause()V

    const/4 v0, 0x1

    .line 435
    iput-boolean v0, p0, Lfeem/MainActivity;->activityIsInBackground:Z

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 896
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaActivity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 426
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaActivity;->onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 673
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 674
    iget-object v0, p0, Lfeem/MainActivity;->mRequestPermissionHandler:Lfeem/RequestPermissionHandler;

    invoke-virtual {v0, p1, p2, p3}, Lfeem/RequestPermissionHandler;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 537
    invoke-super {p0}, Lorg/apache/cordova/CordovaActivity;->onResume()V

    const-string v0, "feem"

    const-string v1, "onresume"

    .line 538
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v0, Lfeem/MainActivity$12;

    invoke-direct {v0, p0}, Lfeem/MainActivity$12;-><init>(Lfeem/MainActivity;)V

    .line 550
    invoke-virtual {v0}, Lfeem/MainActivity$12;->start()V

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 554
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 561
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 562
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 566
    iput-boolean v0, p0, Lfeem/MainActivity;->activityIsInBackground:Z

    .line 568
    iget-boolean v0, p0, Lfeem/MainActivity;->pendingAdToShow:Z

    if-eqz v0, :cond_2

    .line 569
    iget-object v0, p0, Lfeem/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    iget-object v0, p0, Lfeem/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 571
    invoke-virtual {p0}, Lfeem/MainActivity;->loadads()V

    :cond_2
    return-void
.end method

.method send_files_and_folders_to_destination(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "from_ui"

    const-string v3, "/create_upload"

    const-string v4, "id"

    const-string v5, ""

    const-string v6, "files"

    .line 985
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 986
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 991
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v9, v0

    .line 992
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v12, "feedback"

    const-string v13, "peer_id"

    move-object/from16 v18, v2

    const-string v2, "feedback_for_peer"

    move-object/from16 v19, v3

    const-string v3, "action"

    const-wide/16 v20, 0x3e8

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    const-string v4, "/"

    const-string v5, "error"

    move-object/from16 v26, v6

    const-string v6, "send_folder"

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v24, 0x1

    add-long v14, v14, v24

    move-object/from16 v27, v11

    .line 995
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 998
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 999
    :cond_0
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1000
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v28, v24, v16

    cmp-long v0, v28, v20

    if-lez v0, :cond_2

    .line 1008
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 1011
    :try_start_0
    invoke-virtual {v11, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1012
    iget-object v0, v1, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    invoke-virtual {v11, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing Path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1015
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1018
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfeem/MainActivity;->to_ui(Ljava/lang/String;)V

    move-wide/from16 v16, v24

    :cond_2
    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v26

    move-object/from16 v11, v27

    goto/16 :goto_0

    .line 1032
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/32 v14, 0x36ee80

    .line 1033
    div-long/2addr v9, v14

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1036
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 1038
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    if-eqz v11, :cond_5

    :try_start_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1039
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1040
    invoke-static {v0}, Lfeem/Feem;->sha256Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1042
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1043
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v27, v10

    const-string v10, "filename"

    move-object/from16 v28, v14

    .line 1044
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v10, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "fileurl"

    .line 1045
    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "filesize"

    .line 1046
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-object/from16 v14, v23

    :try_start_3
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object/from16 v23, v14

    :try_start_4
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "isDirectory"

    const-string v11, "0"

    .line 1047
    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1049
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1051
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    sub-long v14, v10, v16

    cmp-long v0, v14, v20

    if-lez v0, :cond_4

    .line 1056
    :try_start_5
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1059
    :try_start_6
    invoke-virtual {v14, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1060
    iget-object v0, v1, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    invoke-virtual {v14, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Processing File "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-wide/from16 v29, v10

    const-wide/16 v10, 0x1

    :try_start_7
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-wide/from16 v29, v10

    .line 1063
    :goto_4
    :try_start_8
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1066
    :goto_5
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfeem/MainActivity;->to_ui(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-wide/from16 v16, v29

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-wide/from16 v29, v10

    :goto_6
    move-object/from16 v9, v18

    move-object/from16 v7, v19

    move-object/from16 v10, v22

    move-object/from16 v14, v23

    move-object/from16 v11, v26

    move-wide/from16 v16, v29

    goto/16 :goto_c

    :cond_4
    :goto_7
    move-object/from16 v10, v27

    move-object/from16 v0, v28

    goto/16 :goto_3

    :catch_5
    move-exception v0

    move-object/from16 v9, v18

    move-object/from16 v7, v19

    move-object/from16 v10, v22

    goto :goto_8

    :catch_6
    move-exception v0

    move-object/from16 v9, v18

    move-object/from16 v7, v19

    move-object/from16 v10, v22

    move-object/from16 v14, v23

    :goto_8
    move-object/from16 v11, v26

    goto :goto_c

    .line 1074
    :cond_5
    :try_start_9
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1076
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    if-lez v10, :cond_6

    move-object/from16 v10, v22

    .line 1077
    :try_start_a
    invoke-virtual {v7, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sender"

    .line 1078
    invoke-static {}, Lfeem/FeemService;->deviceid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "receiver"

    .line 1079
    iget-object v11, v1, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    invoke-virtual {v7, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    move-object/from16 v11, v26

    .line 1080
    :try_start_b
    invoke-virtual {v7, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1081
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    move-object/from16 v9, v18

    move-object/from16 v7, v19

    .line 1082
    :try_start_c
    invoke-static {v7, v0, v9}, Lfeem/FeemService;->request_from_core(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_b

    :catch_8
    move-exception v0

    move-object/from16 v9, v18

    move-object/from16 v7, v19

    goto :goto_b

    :catch_9
    move-exception v0

    move-object/from16 v9, v18

    move-object/from16 v7, v19

    goto :goto_a

    :cond_6
    move-object/from16 v9, v18

    move-object/from16 v7, v19

    move-object/from16 v10, v22

    move-object/from16 v11, v26

    :goto_9
    move-object/from16 v14, v23

    goto :goto_d

    :catch_a
    move-exception v0

    move-object/from16 v9, v18

    move-object/from16 v7, v19

    move-object/from16 v10, v22

    :goto_a
    move-object/from16 v11, v26

    :goto_b
    move-object/from16 v14, v23

    .line 1089
    :goto_c
    invoke-static {v11, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1095
    :goto_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1097
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/32 v22, 0x36ee80

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    div-long v7, v18, v22

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v9

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";7"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1104
    invoke-static {v0}, Lfeem/Feem;->sha256Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1106
    new-instance v8, Ljava/util/ArrayDeque;

    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    .line 1108
    new-instance v0, Landroidx/core/util/Pair;

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9, v15}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1110
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-wide/16 v22, 0x0

    .line 1114
    :goto_f
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    .line 1115
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/util/Pair;

    move-object/from16 v19, v0

    .line 1116
    iget-object v0, v9, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v28, v11

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 1117
    iget-object v0, v9, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    .line 1120
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    const/4 v0, 0x0

    move-object/from16 v29, v7

    const/4 v7, 0x0

    move-object/from16 v36, v19

    move-object/from16 v19, v10

    move-object/from16 v10, v36

    .line 1122
    :goto_10
    array-length v0, v9

    if-ge v7, v0, :cond_a

    move-object/from16 v31, v10

    move-object/from16 v30, v11

    const-wide/16 v24, 0x1

    add-long v10, v22, v24

    .line 1125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v32, v22, v16

    cmp-long v0, v32, v20

    if-lez v0, :cond_7

    move-object/from16 v32, v14

    .line 1130
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 1133
    :try_start_d
    invoke-virtual {v14, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1134
    iget-object v0, v1, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    invoke-virtual {v14, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    move-object/from16 v33, v2

    :try_start_e
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Files : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_12

    :catch_b
    move-exception v0

    goto :goto_11

    :catch_c
    move-exception v0

    move-object/from16 v33, v2

    .line 1137
    :goto_11
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1140
    :goto_12
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfeem/MainActivity;->to_ui(Ljava/lang/String;)V

    move-wide/from16 v16, v22

    goto :goto_13

    :cond_7
    move-object/from16 v33, v2

    move-object/from16 v32, v14

    .line 1145
    :goto_13
    aget-object v0, v9, v7

    .line 1146
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adding folder "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    new-instance v2, Landroidx/core/util/Pair;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v3

    move-object/from16 v3, v30

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v30, v9

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9, v0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-object/from16 v35, v3

    move-wide/from16 v22, v10

    move-object/from16 v10, v19

    move-object/from16 v2, v26

    move-object/from16 v11, v28

    move-object/from16 v9, v29

    move-object/from16 v3, v31

    move-object/from16 v14, v32

    :goto_14
    move-object/from16 v36, v18

    move-object/from16 v18, v4

    move-object/from16 v4, v36

    goto/16 :goto_1b

    :cond_8
    move-object/from16 v34, v3

    move-object/from16 v3, v30

    move-object/from16 v30, v9

    .line 1153
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_f
    const-string v9, "filename"

    .line 1159
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_11

    move-object/from16 v35, v3

    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "filesize"

    .line 1160
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    move-object/from16 v14, v32

    :try_start_11
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    move-wide/from16 v22, v10

    :try_start_12
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "fileurl"

    .line 1161
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "isDirectory"

    const-string v3, "0"

    .line 1162
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    move-object/from16 v3, v31

    .line 1164
    :try_start_13
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    goto :goto_18

    :catch_d
    move-exception v0

    goto :goto_17

    :catch_e
    move-exception v0

    goto :goto_15

    :catch_f
    move-exception v0

    move-wide/from16 v22, v10

    :goto_15
    move-object/from16 v3, v31

    goto :goto_17

    :catch_10
    move-exception v0

    goto :goto_16

    :catch_11
    move-exception v0

    move-object/from16 v35, v3

    :goto_16
    move-wide/from16 v22, v10

    move-object/from16 v3, v31

    move-object/from16 v14, v32

    .line 1167
    :goto_17
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1170
    :goto_18
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_9

    .line 1173
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v10, v19

    move-object/from16 v9, v29

    .line 1177
    :try_start_14
    invoke-virtual {v2, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_13

    move-object/from16 v11, v28

    .line 1178
    :try_start_15
    invoke-virtual {v2, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sender"

    .line 1179
    invoke-static {}, Lfeem/FeemService;->deviceid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "receiver"

    .line 1180
    iget-object v3, v1, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    goto :goto_19

    :catch_13
    move-exception v0

    move-object/from16 v11, v28

    .line 1184
    :goto_19
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1187
    :goto_1a
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v18

    move-object/from16 v2, v26

    invoke-static {v2, v0, v3}, Lfeem/FeemService;->request_from_core(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1188
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v18, v4

    move-object v4, v3

    goto :goto_1c

    :cond_9
    move-object/from16 v10, v19

    move-object/from16 v2, v26

    move-object/from16 v11, v28

    move-object/from16 v9, v29

    goto/16 :goto_14

    :goto_1b
    move-object v0, v3

    :goto_1c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v26, v2

    move-object/from16 v29, v9

    move-object/from16 v19, v10

    move-object/from16 v28, v11

    move-object/from16 v9, v30

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v11, v35

    move-object v10, v0

    move-object/from16 v36, v18

    move-object/from16 v18, v4

    move-object/from16 v4, v36

    goto/16 :goto_10

    :cond_a
    move-object/from16 v33, v2

    move-object/from16 v34, v3

    move-object v3, v10

    move-object/from16 v10, v19

    move-object/from16 v2, v26

    move-object/from16 v11, v28

    move-object/from16 v9, v29

    const-wide/16 v24, 0x1

    move-object/from16 v36, v18

    move-object/from16 v18, v4

    move-object/from16 v4, v36

    .line 1195
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1199
    :try_start_16
    invoke-virtual {v7, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1200
    invoke-virtual {v7, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sender"

    .line 1201
    invoke-static {}, Lfeem/FeemService;->deviceid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "receiver"

    .line 1202
    iget-object v3, v1, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_14

    goto :goto_1d

    :catch_14
    move-exception v0

    .line 1205
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1208
    :goto_1d
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Lfeem/FeemService;->request_from_core(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1209
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v26, v2

    move-object v7, v9

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v36, v18

    move-object/from16 v18, v4

    move-object/from16 v4, v36

    goto/16 :goto_f

    :cond_b
    const-wide/16 v24, 0x1

    move-object/from16 v36, v18

    move-object/from16 v18, v4

    move-object/from16 v4, v36

    move-object v9, v4

    move-object/from16 v4, v18

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    goto/16 :goto_e

    :cond_c
    return-void
.end method

.method showLocationPermissionDialog()V
    .locals 4

    .line 442
    invoke-virtual {p0}, Lfeem/MainActivity;->isLocationPermissionRequired()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0d0038

    .line 447
    invoke-virtual {p0, v0}, Lfeem/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 448
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 449
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 450
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 451
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0034

    .line 452
    invoke-virtual {p0, v1}, Lfeem/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lfeem/MainActivity$9;

    invoke-direct {v3, p0}, Lfeem/MainActivity$9;-><init>(Lfeem/MainActivity;)V

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0030

    .line 477
    invoke-virtual {p0, v1}, Lfeem/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lfeem/MainActivity$8;

    invoke-direct {v3, p0}, Lfeem/MainActivity$8;-><init>(Lfeem/MainActivity;)V

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 485
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method showStoragePermissionDialog()V
    .locals 4

    .line 492
    invoke-virtual {p0}, Lfeem/MainActivity;->isStoragePermissionRequired()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0d0039

    .line 497
    invoke-virtual {p0, v0}, Lfeem/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 498
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 499
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 500
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 501
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0034

    .line 502
    invoke-virtual {p0, v1}, Lfeem/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lfeem/MainActivity$11;

    invoke-direct {v3, p0}, Lfeem/MainActivity$11;-><init>(Lfeem/MainActivity;)V

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0030

    .line 522
    invoke-virtual {p0, v1}, Lfeem/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lfeem/MainActivity$10;

    invoke-direct {v3, p0}, Lfeem/MainActivity$10;-><init>(Lfeem/MainActivity;)V

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 530
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 531
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method to_ui(Ljava/lang/String;)V
    .locals 2

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:native_callback("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 976
    new-instance v0, Lfeem/MainActivity$14;

    invoke-direct {v0, p0, p1}, Lfeem/MainActivity$14;-><init>(Lfeem/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lfeem/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
