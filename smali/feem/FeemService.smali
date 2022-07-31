.class public Lfeem/FeemService;
.super Landroid/app/Service;
.source "FeemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfeem/FeemService$UnprocessedMessage;,
        Lfeem/FeemService$WiFiP2PInfo;,
        Lfeem/FeemService$NetworkChangeBroadcastReceiver;
    }
.end annotation


# static fields
.field public static AP_STATE_DISABLED:I

.field public static AP_STATE_DISABLING:I

.field public static AP_STATE_ENABLED:I

.field public static AP_STATE_ENABLING:I

.field public static AP_STATE_FAILED:I

.field static PREF_UNIQUE_ID:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field static context:Landroid/content/Context;

.field static core_started:Z

.field public static counter:I

.field static mP2PChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field static mP2PManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field static previous_access_point_state:I

.field static uniqueID:Ljava/lang/String;

.field static unprocessed_messages:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lfeem/FeemService$UnprocessedMessage;",
            ">;"
        }
    .end annotation
.end field

.field static final wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;


# instance fields
.field activate_wifi_direct_after_turning_on_wifi:Z

.field assetManager:Landroid/content/res/AssetManager;

.field content_observer:Landroid/database/ContentObserver;

.field idle_timer:Ljava/util/Timer;

.field is_scanning:Z

.field last_idle_time:J

.field private mMessageReceiver:Landroid/content/BroadcastReceiver;

.field networkChangeBroadcastReceiver:Lfeem/FeemService$NetworkChangeBroadcastReceiver;

.field new_accessibility_is_on:Z

.field old_accessibility_is_on:Z

.field wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 438
    new-instance v0, Lfeem/FeemService$WiFiP2PInfo;

    invoke-direct {v0}, Lfeem/FeemService$WiFiP2PInfo;-><init>()V

    sput-object v0, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    const-string v0, "[FEEMSERVICE]"

    .line 729
    sput-object v0, Lfeem/FeemService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 739
    sput-boolean v0, Lfeem/FeemService;->core_started:Z

    .line 747
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v1, Lfeem/FeemService;->unprocessed_messages:Ljava/util/concurrent/LinkedBlockingQueue;

    const-string v1, "c++_shared"

    .line 1431
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "feem_core_jni"

    .line 1432
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1469
    sput v0, Lfeem/FeemService;->counter:I

    const/4 v1, 0x0

    .line 1491
    sput-object v1, Lfeem/FeemService;->context:Landroid/content/Context;

    .line 1493
    sput-object v1, Lfeem/FeemService;->uniqueID:Ljava/lang/String;

    const-string v1, "feem_unique_id"

    .line 1494
    sput-object v1, Lfeem/FeemService;->PREF_UNIQUE_ID:Ljava/lang/String;

    .line 2046
    sput v2, Lfeem/FeemService;->AP_STATE_DISABLING:I

    const/16 v1, 0xb

    .line 2047
    sput v1, Lfeem/FeemService;->AP_STATE_DISABLED:I

    const/16 v1, 0xc

    .line 2048
    sput v1, Lfeem/FeemService;->AP_STATE_ENABLING:I

    const/16 v1, 0xd

    .line 2049
    sput v1, Lfeem/FeemService;->AP_STATE_ENABLED:I

    const/16 v1, 0xe

    .line 2050
    sput v1, Lfeem/FeemService;->AP_STATE_FAILED:I

    .line 2079
    sput v0, Lfeem/FeemService;->previous_access_point_state:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1472
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lfeem/FeemService;->activate_wifi_direct_after_turning_on_wifi:Z

    .line 164
    new-instance v1, Lfeem/FeemService$1;

    invoke-direct {v1, p0}, Lfeem/FeemService$1;-><init>(Lfeem/FeemService;)V

    iput-object v1, p0, Lfeem/FeemService;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 488
    iput-boolean v0, p0, Lfeem/FeemService;->old_accessibility_is_on:Z

    .line 489
    iput-boolean v0, p0, Lfeem/FeemService;->new_accessibility_is_on:Z

    .line 777
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lfeem/FeemService;->last_idle_time:J

    const/4 v1, 0x0

    .line 779
    iput-object v1, p0, Lfeem/FeemService;->idle_timer:Ljava/util/Timer;

    .line 1518
    iput-object v1, p0, Lfeem/FeemService;->networkChangeBroadcastReceiver:Lfeem/FeemService$NetworkChangeBroadcastReceiver;

    .line 1521
    iput-object v1, p0, Lfeem/FeemService;->assetManager:Landroid/content/res/AssetManager;

    .line 1524
    iput-object v1, p0, Lfeem/FeemService;->content_observer:Landroid/database/ContentObserver;

    .line 2053
    iput-boolean v0, p0, Lfeem/FeemService;->is_scanning:Z

    return-void
.end method

.method public static _cache_folder()Ljava/lang/String;
    .locals 2

    .line 1784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfeem/FeemService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _data_folder()Ljava/lang/String;
    .locals 3

    .line 1792
    sget-object v0, Lfeem/FeemService;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1793
    sget-object v1, Lfeem/FeemService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1795
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1796
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1800
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _temp_folder()Ljava/lang/String;
    .locals 2

    .line 1806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfeem/FeemService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lfeem/FeemService;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lfeem/FeemService;->send_update_android_info_to_core()V

    return-void
.end method

.method static synthetic access$100(Lfeem/FeemService;)Z
    .locals 0

    .line 74
    invoke-direct {p0}, Lfeem/FeemService;->start_hotspot()Z

    move-result p0

    return p0
.end method

.method public static adhocSSIDName()Ljava/lang/String;
    .locals 4

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeemWiFi-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lfeem/FeemService;->deviceid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfeem/Feem;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static broadcast_addresses()Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1850
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 1852
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1853
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 1855
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_3

    .line 1858
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 1860
    :catch_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_0

    .line 1863
    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1864
    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1867
    :cond_1
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1872
    :cond_2
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[\\d]+$"

    const-string v5, "255"

    .line 1873
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "255.255.255.0"

    .line 1877
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 1880
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 1883
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 1884
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 1895
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 1898
    :cond_4
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isPointToPoint()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    .line 1901
    :cond_5
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    .line 1905
    :cond_6
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    .line 1907
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InterfaceAddress;
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1909
    :try_start_3
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    .line 1910
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v4

    const/4 v5, -0x1

    .line 1913
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v3

    rsub-int/lit8 v3, v3, 0x20

    shl-int v3, v5, v3

    const/4 v5, 0x4

    .line 1915
    new-array v5, v5, [B

    const/4 v6, 0x0

    ushr-int/lit8 v7, v3, 0x18

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    const/4 v6, 0x1

    shr-int/lit8 v7, v3, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    const/4 v6, 0x2

    shr-int/lit8 v7, v3, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    const/4 v6, 0x3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    .line 1919
    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    if-nez v4, :cond_7

    goto :goto_2

    .line 1924
    :cond_7
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 1940
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    .line 1945
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "|"

    .line 1946
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    const-string v0, ""

    :goto_3
    return-object v0
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    .line 1410
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1411
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p3, :cond_1

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v1, v0

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 1415
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 1416
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    mul-int p1, p1, v0

    int-to-float p1, p1

    mul-int p2, p2, p3

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    :goto_2
    mul-int p3, v1, v1

    int-to-float p3, p3

    div-float p3, p1, p3

    cmpl-float p3, p3, p2

    if-lez p3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return v1
.end method

.method static native change_avatar(Ljava/lang/String;)V
.end method

.method static native change_downloads_folder(Ljava/lang/String;)V
.end method

.method private createAPConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3

    .line 80
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string p1, "OPEN"

    .line 84
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_0
    const-string p1, "WEP"

    .line 88
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    .line 91
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 92
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 93
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_1
    const-string p1, "PSK"

    .line 95
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const/4 p2, 0x2

    .line 99
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 100
    iget-object p3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p3, p2}, Ljava/util/BitSet;->set(I)V

    .line 101
    iget-object p3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {p3, v2}, Ljava/util/BitSet;->set(I)V

    .line 102
    iget-object p3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p3, p1}, Ljava/util/BitSet;->set(I)V

    .line 103
    iget-object p3, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p3, p1}, Ljava/util/BitSet;->set(I)V

    .line 104
    iget-object p3, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p3, p2}, Ljava/util/BitSet;->set(I)V

    .line 105
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 106
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    :goto_0
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static native deviceid()Ljava/lang/String;
.end method

.method private getBestLocation()Landroid/location/Location;
    .locals 10

    const-string v0, "gps"

    .line 2347
    invoke-direct {p0, v0}, Lfeem/FeemService;->getLocationByProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    const-string v1, "network"

    .line 2349
    invoke-direct {p0, v1}, Lfeem/FeemService;->getLocationByProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez v1, :cond_1

    return-object v0

    .line 2364
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    sub-long/2addr v2, v4

    .line 2365
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v4, v2

    if-gez v8, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 2366
    :goto_0
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v5, v8, v2

    if-gez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-nez v4, :cond_4

    return-object v0

    :cond_4
    if-nez v6, :cond_5

    return-object v1

    .line 2378
    :cond_5
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_6

    return-object v0

    :cond_6
    return-object v1
.end method

.method private getLocationByProvider(Ljava/lang/String;)Landroid/location/Location;
    .locals 3

    .line 2395
    invoke-virtual {p0}, Lfeem/FeemService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    .line 2396
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const/4 v1, 0x0

    .line 2398
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2399
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    :catch_0
    :cond_0
    return-object v1
.end method

.method static native getalias()Ljava/lang/String;
.end method

.method public static human_readable_sysinfo()Ljava/lang/String;
    .locals 3

    .line 2042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAccessibilitySettingsOn(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public static local_ips()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1957
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1962
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 1964
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1965
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 1967
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_3

    .line 1970
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 1972
    :catch_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_0

    .line 1975
    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1976
    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1979
    :cond_1
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1984
    :cond_2
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 1985
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 1996
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 1999
    :cond_4
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isPointToPoint()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    .line 2002
    :cond_5
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    .line 2006
    :cond_6
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    .line 2008
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InterfaceAddress;
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2010
    :try_start_3
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 2011
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 2026
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    .line 2031
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "|"

    .line 2032
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    const-string v0, ""

    :goto_3
    return-object v0
.end method

.method static native quit()V
.end method

.method public static request_from_core(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 752
    sget-boolean v0, Lfeem/FeemService;->core_started:Z

    if-eqz v0, :cond_0

    .line 755
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1, p2}, Lfeem/FeemService;->request_from_core_impl(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 757
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 761
    :cond_0
    new-instance v0, Lfeem/FeemService$UnprocessedMessage;

    invoke-direct {v0}, Lfeem/FeemService$UnprocessedMessage;-><init>()V

    .line 762
    iput-object p0, v0, Lfeem/FeemService$UnprocessedMessage;->endpoint:Ljava/lang/String;

    .line 763
    iput-object p1, v0, Lfeem/FeemService$UnprocessedMessage;->message:Ljava/lang/String;

    .line 764
    iput-object p2, v0, Lfeem/FeemService$UnprocessedMessage;->from:Ljava/lang/String;

    .line 766
    sget-object p1, Lfeem/FeemService;->unprocessed_messages:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 768
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unprocessed endpoint "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "feem"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static native request_from_core_impl(Ljava/lang/String;[BLjava/lang/String;)[B
.end method

.method private send_update_android_info_to_core()V
    .locals 6

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accessibility status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfeem/FeemService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lfeem/FeemService;->isAccessibilitySettingsOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "feemaccess"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 503
    :try_start_0
    invoke-virtual {p0}, Lfeem/FeemService;->getPackageName()Ljava/lang/String;

    .line 504
    invoke-virtual {p0}, Lfeem/FeemService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lfeem/FeemService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 505
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Feem_Installer_For_Android_v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".apk"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 507
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 509
    sget-object v4, Lfeem/FeemService;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-object v4, Lfeem/FeemService;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {p0}, Lfeem/FeemService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lfeem/FeemService;->isAccessibilitySettingsOn(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lfeem/FeemService;->new_accessibility_is_on:Z

    const-string v4, "ssid"

    .line 513
    invoke-virtual {p0}, Lfeem/FeemService;->ssid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "bssid"

    .line 514
    invoke-virtual {p0}, Lfeem/FeemService;->bssid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "broadcast_addresses"

    .line 515
    invoke-static {}, Lfeem/FeemService;->broadcast_addresses()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "local_ips"

    .line 516
    invoke-static {}, Lfeem/FeemService;->local_ips()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "hotspot_is_running"

    .line 517
    invoke-virtual {p0}, Lfeem/FeemService;->hotspot_is_running()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "hotspot_ssid"

    .line 518
    sget-object v5, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v5, v5, Lfeem/FeemService$WiFiP2PInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "hotspot_password"

    .line 519
    sget-object v5, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v5, v5, Lfeem/FeemService$WiFiP2PInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "app_name"

    .line 521
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_apk"

    .line 522
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    iget-boolean v1, p0, Lfeem/FeemService;->new_accessibility_is_on:Z

    iget-boolean v2, p0, Lfeem/FeemService;->old_accessibility_is_on:Z

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    .line 527
    iget-boolean v1, p0, Lfeem/FeemService;->new_accessibility_is_on:Z

    iput-boolean v1, p0, Lfeem/FeemService;->old_accessibility_is_on:Z

    :cond_0
    const-string v1, "android_device_updated"

    .line 529
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "/update_android"

    .line 536
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "native"

    invoke-static {v1, v0, v2}, Lfeem/FeemService;->request_from_core_impl(Ljava/lang/String;[BLjava/lang/String;)[B
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 544
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 540
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setMobileDataEnabled(Landroid/content/Context;Z)V
    .locals 6

    :try_start_0
    const-string v0, "connectivity"

    .line 388
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 390
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mService"

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 395
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 397
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setMobileDataEnabled"

    .line 398
    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 399
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 402
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 405
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private start_hotspot()Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "feemp2p"

    const-string v1, "starting hotspot"

    .line 555
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    sget-object v1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v1, v1, Lfeem/FeemService$WiFiP2PInfo;->ssid:Ljava/lang/String;

    const-string v2, "password"

    const-string v3, "ssid"

    const-string v4, "hotspot_created"

    const-string v5, "action"

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v1, v1, Lfeem/FeemService$WiFiP2PInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 561
    :try_start_0
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    sget-object v1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v1, v1, Lfeem/FeemService$WiFiP2PInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 563
    sget-object v1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v1, v1, Lfeem/FeemService$WiFiP2PInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 565
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 568
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfeem/FeemService;->to_ui(Ljava/lang/String;)V

    return v6

    .line 573
    :cond_0
    invoke-virtual {p0}, Lfeem/FeemService;->access_point_is_running()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 575
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 577
    :try_start_1
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    sget-object v1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v1, v1, Lfeem/FeemService$WiFiP2PInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 579
    sget-object v1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v1, v1, Lfeem/FeemService$WiFiP2PInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 581
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 584
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfeem/FeemService;->to_ui(Ljava/lang/String;)V

    return v6

    .line 592
    :cond_1
    iget-object v1, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Enabling Wi-Fi"

    const-string v2, "We are turning on your Wi-Fi to start Wi-Fi Direct."

    .line 594
    invoke-virtual {p0, v1, v2}, Lfeem/FeemService;->show_alert(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iput-boolean v6, p0, Lfeem/FeemService;->activate_wifi_direct_after_turning_on_wifi:Z

    .line 596
    iget-object v1, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set wifi enabled result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 601
    :cond_2
    sget-object v0, Lfeem/FeemService;->mP2PManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_4

    sget-object v1, Lfeem/FeemService;->mP2PChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v1, :cond_3

    goto :goto_2

    .line 613
    :cond_3
    new-instance v2, Lfeem/FeemService$3;

    invoke-direct {v2, p0}, Lfeem/FeemService$3;-><init>(Lfeem/FeemService;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_3

    .line 602
    :cond_4
    :goto_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v1, "hotspot_stopped"

    .line 604
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reason"

    const-string v2, "Please turn on your Wi-Fi, and try again. Or manually tether your data connection."

    .line 605
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 607
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return v6
.end method

.method private stop_hotspot()Ljava/lang/Boolean;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 443
    invoke-virtual {p0}, Lfeem/FeemService;->access_point_is_running()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 444
    sget-object v0, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    const-string v2, ""

    iput-object v2, v0, Lfeem/FeemService$WiFiP2PInfo;->ssid:Ljava/lang/String;

    .line 445
    iput-object v2, v0, Lfeem/FeemService$WiFiP2PInfo;->bssid:Ljava/lang/String;

    .line 446
    iget-object v3, v0, Lfeem/FeemService$WiFiP2PInfo;->password:Ljava/lang/String;

    iput-object v3, v0, Lfeem/FeemService$WiFiP2PInfo;->lastpassword:Ljava/lang/String;

    .line 447
    sget-object v0, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iput-object v2, v0, Lfeem/FeemService$WiFiP2PInfo;->password:Ljava/lang/String;

    const/4 v0, 0x0

    .line 448
    sput v0, Lfeem/FeemService;->previous_access_point_state:I

    .line 450
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "action"

    const-string v4, "hotspot_stopped"

    .line 452
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "reason"

    .line 453
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 455
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 458
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfeem/FeemService;->to_ui(Ljava/lang/String;)V

    return-object v1

    .line 464
    :cond_0
    sget-object v0, Lfeem/FeemService;->mP2PManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    sget-object v0, Lfeem/FeemService;->mP2PChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v0, :cond_1

    const-string v0, "feemp2p"

    const-string v2, "stopping hotspot"

    .line 466
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    sget-object v0, Lfeem/FeemService;->mP2PManager:Landroid/net/wifi/p2p/WifiP2pManager;

    sget-object v2, Lfeem/FeemService;->mP2PChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lfeem/FeemService$2;

    invoke-direct {v3, p0}, Lfeem/FeemService$2;-><init>(Lfeem/FeemService;)V

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_1
    return-object v1
.end method

.method public static transform_to_valid_filename(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "\\.\\."

    .line 2328
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2333
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v3, v0, v2

    const/16 v4, 0x5f

    .line 2334
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private update_photos()V
    .locals 0

    return-void
.end method


# virtual methods
.method public access_point_is_running()Z
    .locals 7

    const/4 v0, 0x0

    .line 2082
    :try_start_0
    iget-object v1, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getWifiApState"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 2083
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2084
    iget-object v3, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "feemap"

    .line 2085
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    sget v4, Lfeem/FeemService;->AP_STATE_ENABLED:I

    if-ne v3, v4, :cond_3

    sget v4, Lfeem/FeemService;->previous_access_point_state:I

    sget v5, Lfeem/FeemService;->AP_STATE_ENABLED:I

    if-eq v4, v5, :cond_3

    .line 2089
    iget-object v4, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getWifiApConfiguration"

    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2090
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2091
    iget-object v1, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2092
    sget-object v4, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v5, v4, Lfeem/FeemService$WiFiP2PInfo;->ssid:Ljava/lang/String;

    .line 2093
    sget-object v4, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v5, v4, Lfeem/FeemService$WiFiP2PInfo;->bssid:Ljava/lang/String;

    .line 2096
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2097
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 2098
    :cond_0
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v1, v0

    :cond_1
    if-nez v4, :cond_2

    const-string v4, ""

    .line 2106
    :cond_2
    sget-object v1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    sget-object v5, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v5, v5, Lfeem/FeemService$WiFiP2PInfo;->password:Ljava/lang/String;

    iput-object v5, v1, Lfeem/FeemService$WiFiP2PInfo;->lastpassword:Ljava/lang/String;

    .line 2108
    sget-object v1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iput-object v4, v1, Lfeem/FeemService$WiFiP2PInfo;->password:Ljava/lang/String;

    .line 2113
    :cond_3
    sput v3, Lfeem/FeemService;->previous_access_point_state:I

    .line 2115
    sget v1, Lfeem/FeemService;->AP_STATE_ENABLED:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v1, :cond_4

    return v2

    :catch_0
    :cond_4
    return v0
.end method

.method alertUINoSound(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 864
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lfeem/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, -0x1

    const/high16 v2, 0x10000000

    .line 865
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "notification"

    .line 869
    invoke-virtual {p0, v1}, Lfeem/FeemService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 871
    invoke-virtual {p0}, Lfeem/FeemService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 872
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 875
    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v4, 0x7f07006e

    .line 876
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 878
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 877
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 881
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 882
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 883
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 884
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    const/4 p2, 0x0

    .line 886
    invoke-virtual {v1, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public bssid()Ljava/lang/String;
    .locals 9

    .line 2245
    iget-object v0, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 2248
    :cond_0
    iget-object v0, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 2249
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2252
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 2254
    :cond_1
    :try_start_0
    iget-object v2, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2255
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    move-object v5, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    :try_start_1
    aget-object v6, v2, v0

    .line 2256
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getWifiApConfiguration"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2257
    iget-object v7, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 2258
    iget-object v5, v6, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    move-object v0, v5

    goto :goto_1

    :catch_1
    nop

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    const-string v2, "\""

    .line 2269
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v0, "unknown"

    :goto_2
    return-object v0
.end method

.method public connectToAP(Landroid/net/wifi/ScanResult;Ljava/lang/String;)I
    .locals 1

    .line 120
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 122
    invoke-virtual {p0, p1}, Lfeem/FeemService;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-direct {p0, v0, p2, p1}, Lfeem/FeemService;->createAPConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 126
    iget-object p2, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    .line 129
    iget-object p2, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 132
    iget-object p2, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 134
    iget-object p2, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    const/4 p2, -0x1

    return p1
.end method

.method public declared-synchronized copy_to_clipboard(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 906
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "copy_to_clipboard"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "msg"

    .line 908
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method create_thumbnail(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .line 1300
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 1304
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1306
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1308
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1309
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v4, 0x190

    mul-int/lit16 v2, v2, 0x190

    .line 1314
    div-int/2addr v2, v3

    .line 1320
    invoke-direct {p0, v0, v4, v2}, Lfeem/FeemService;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    .line 1323
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1326
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1327
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const/16 v3, 0x4000

    .line 1328
    new-array v3, v3, [B

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 1332
    :try_start_0
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 1360
    :try_start_1
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    .line 1362
    invoke-virtual {v0, p1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    .line 1365
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x42b40000    # 90.0f

    .line 1367
    invoke-virtual {v9, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/high16 p1, 0x43340000    # 180.0f

    .line 1370
    invoke-virtual {v9, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    const/high16 p1, 0x43870000    # 270.0f

    .line 1373
    invoke-virtual {v9, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_2
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1379
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    .line 1378
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1386
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1388
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1392
    :cond_3
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1397
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x14

    invoke-virtual {p1, p2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 1400
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return v2

    :catch_1
    move-exception p1

    .line 1382
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v2

    :catch_2
    move-exception p1

    .line 1334
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    return v2
.end method

.method public from_core([B)V
    .locals 6

    .line 934
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "update_photos"

    .line 936
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 937
    invoke-direct {p0}, Lfeem/FeemService;->update_photos()V

    return-void

    :cond_0
    const-string p1, "show_alert"

    .line 940
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "action"

    if-eqz v1, :cond_1

    .line 943
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 944
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 945
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "title"

    .line 946
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "description"

    .line 947
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 948
    invoke-virtual {p0, p1, v1}, Lfeem/FeemService;->show_alert(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    const-string p1, "copy_to_clipboard"

    .line 958
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 959
    sget-object v1, Lfeem/FeemService;->TAG:Ljava/lang/String;

    const-string v3, "copying to clipboard"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 963
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 964
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "msg"

    .line 965
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 966
    invoke-virtual {p0, p1}, Lfeem/FeemService;->copy_to_clipboard(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_2
    const-string p1, "scan_wifi"

    .line 976
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 979
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 980
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 981
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 982
    invoke-virtual {p0}, Lfeem/FeemService;->scan_wifi()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :cond_3
    const-string p1, "show_in_folder"

    .line 993
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "folder"

    const-string v4, "filepath"

    if-eqz v1, :cond_4

    .line 997
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 998
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 999
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1000
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1001
    invoke-virtual {p0, v3, p1}, Lfeem/FeemService;->show_alert(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :cond_4
    const-string p1, "create_thumbnail"

    .line 1012
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v5, "destination"

    if-eqz v1, :cond_5

    .line 1015
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1017
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "source"

    .line 1018
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1019
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1021
    invoke-virtual {p0, p1, v1}, Lfeem/FeemService;->create_thumbnail(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_5
    const-string p1, "send_folder"

    .line 1032
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1035
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1037
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1038
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1039
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1040
    invoke-virtual {p0, p1, v1}, Lfeem/FeemService;->send_folder(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    :cond_6
    const-string p1, "turn_on_accessibility"

    .line 1053
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1056
    :try_start_6
    sget-object v1, Lfeem/FeemService;->TAG:Ljava/lang/String;

    const-string v3, "turning on accessibility 3"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1060
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1061
    invoke-virtual {p0}, Lfeem/FeemService;->turn_on_accessibility()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    :cond_7
    const-string p1, "start_hotspot"

    .line 1073
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1076
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1078
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1079
    invoke-direct {p0}, Lfeem/FeemService;->start_hotspot()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return-void

    :cond_8
    const-string p1, "stop_hotspot"

    .line 1090
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1093
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1095
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1096
    invoke-direct {p0}, Lfeem/FeemService;->stop_hotspot()Ljava/lang/Boolean;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    return-void

    :cond_9
    const-string p1, "download_completed"

    .line 1107
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1110
    :try_start_9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1112
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1113
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1123
    invoke-virtual {p0}, Lfeem/FeemService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x0

    new-instance v3, Lfeem/FeemService$5;

    invoke-direct {v3, p0, v0}, Lfeem/FeemService$5;-><init>(Lfeem/FeemService;Ljava/lang/String;)V

    .line 1122
    invoke-static {v1, v2, p1, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 1143
    :catch_0
    :cond_a
    invoke-virtual {p0, v0}, Lfeem/FeemService;->to_ui(Ljava/lang/String;)V

    return-void
.end method

.method public getScanResultSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 4

    .line 150
    iget-object p1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const/4 v0, 0x3

    .line 151
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WEP"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PSK"

    aput-object v2, v0, v1

    const/4 v2, 0x2

    const-string v3, "EAP"

    aput-object v3, v0, v2

    .line 153
    array-length v2, v0

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_1

    .line 154
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    aget-object p1, v0, v2

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const-string p1, "OPEN"

    return-object p1
.end method

.method public hotspot_is_running()Z
    .locals 4

    .line 2135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hotspot is running ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v1, v1, Lfeem/FeemService$WiFiP2PInfo;->ssid:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v1, v1, Lfeem/FeemService$WiFiP2PInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "feemp2p"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    sget-object v0, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v0, v0, Lfeem/FeemService$WiFiP2PInfo;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v0, v0, Lfeem/FeemService$WiFiP2PInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method makeSound()V
    .locals 2

    const/4 v0, 0x2

    .line 847
    :try_start_0
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 848
    invoke-virtual {p0}, Lfeem/FeemService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 850
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1528
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1529
    sput-object p0, Lfeem/FeemService;->context:Landroid/content/Context;

    const-string v0, "feemservice"

    const-string v1, "service started"

    .line 1531
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    invoke-virtual {p0}, Lfeem/FeemService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1537
    sget-object v0, Lfeem/FeemService;->mP2PManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "wifip2p"

    .line 1539
    invoke-virtual {p0, v0}, Lfeem/FeemService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    sput-object v0, Lfeem/FeemService;->mP2PManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1549
    :cond_0
    :goto_0
    sget-object v0, Lfeem/FeemService;->mP2PManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    sget-object v1, Lfeem/FeemService;->mP2PChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v1, :cond_1

    .line 1551
    :try_start_1
    invoke-virtual {p0}, Lfeem/FeemService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    sput-object v0, Lfeem/FeemService;->mP2PChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 1559
    :cond_1
    :goto_1
    sget-object v0, Lfeem/FeemService;->mP2PChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_2

    .line 1560
    new-instance v1, Lfeem/FeemService$NetworkChangeBroadcastReceiver;

    sget-object v2, Lfeem/FeemService;->mP2PManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct {v1, p0, v2, v0}, Lfeem/FeemService$NetworkChangeBroadcastReceiver;-><init>(Lfeem/FeemService;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    iput-object v1, p0, Lfeem/FeemService;->networkChangeBroadcastReceiver:Lfeem/FeemService$NetworkChangeBroadcastReceiver;

    .line 1564
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    .line 1565
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    .line 1566
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 1567
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    .line 1568
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 1569
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 1570
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    .line 1571
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1572
    iget-object v1, p0, Lfeem/FeemService;->networkChangeBroadcastReceiver:Lfeem/FeemService$NetworkChangeBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lfeem/FeemService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1575
    sget-object v0, Lfeem/FeemService;->mP2PManager:Landroid/net/wifi/p2p/WifiP2pManager;

    sget-object v1, Lfeem/FeemService;->mP2PChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lfeem/FeemService$7;

    invoke-direct {v2, p0}, Lfeem/FeemService$7;-><init>(Lfeem/FeemService;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 1631
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1633
    new-instance v1, Lfeem/FeemService$8;

    invoke-direct {v1, p0, v0}, Lfeem/FeemService$8;-><init>(Lfeem/FeemService;Landroid/os/Handler;)V

    iput-object v1, p0, Lfeem/FeemService;->content_observer:Landroid/database/ContentObserver;

    .line 1651
    invoke-virtual {p0}, Lfeem/FeemService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lfeem/FeemService;->content_observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1658
    invoke-virtual {p0}, Lfeem/FeemService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lfeem/FeemService;->assetManager:Landroid/content/res/AssetManager;

    .line 1660
    iget-object v0, p0, Lfeem/FeemService;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {p0, v0}, Lfeem/FeemService;->register_core(Landroid/content/res/AssetManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1662
    sget-object v0, Lfeem/FeemService;->TAG:Ljava/lang/String;

    const-string v1, "REGISTERED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1665
    :cond_3
    sget-object v0, Lfeem/FeemService;->TAG:Ljava/lang/String;

    const-string v1, "NOT_REGISTERED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    :goto_2
    :try_start_2
    sget-object v0, Lfeem/FeemService;->TAG:Ljava/lang/String;

    const-string v1, "setup android"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    const-string v2, "setup_android"

    .line 1674
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data_folder"

    .line 1675
    invoke-static {}, Lfeem/FeemService;->_data_folder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "temp_folder"

    .line 1676
    invoke-static {}, Lfeem/FeemService;->_temp_folder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ssid"

    .line 1677
    invoke-virtual {p0}, Lfeem/FeemService;->ssid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bssid"

    .line 1678
    invoke-virtual {p0}, Lfeem/FeemService;->bssid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sys_info"

    .line 1679
    invoke-static {}, Lfeem/FeemService;->human_readable_sysinfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "folder_downloads"

    .line 1680
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "folder_photos"

    .line 1681
    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "folder_movies"

    .line 1682
    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "folder_music"

    .line 1683
    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "/setup_android"

    .line 1685
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "native"

    invoke-static {v1, v0, v2}, Lfeem/FeemService;->request_from_core_impl(Ljava/lang/String;[BLjava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 1689
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1699
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1700
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1701
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1702
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1703
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1706
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1707
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1708
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_4

    .line 1712
    :cond_5
    invoke-direct {p0}, Lfeem/FeemService;->send_update_android_info_to_core()V

    .line 1714
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lfeem/FeemService;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "location_permission_changed"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1773
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "service on destroy"

    const-string v1, "feemservice"

    .line 1774
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    iget-object v2, p0, Lfeem/FeemService;->networkChangeBroadcastReceiver:Lfeem/FeemService$NetworkChangeBroadcastReceiver;

    invoke-virtual {p0, v2}, Lfeem/FeemService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1778
    invoke-static {}, Lfeem/FeemService;->quit()V

    .line 1779
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1780
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1485
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const-string p1, "feemservice"

    const-string p2, "onstart command"

    .line 1486
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    return p1
.end method

.method native register_core(Landroid/content/res/AssetManager;)Z
.end method

.method public scan_wifi()V
    .locals 3

    .line 2059
    invoke-virtual {p0}, Lfeem/FeemService;->hotspot_is_running()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2061
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    const-string v2, "update_networks"

    .line 2063
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "networks"

    .line 2064
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2065
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfeem/FeemService;->to_ui(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2073
    iput-boolean v0, p0, Lfeem/FeemService;->is_scanning:Z

    .line 2074
    iget-object v1, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2075
    iget-object v0, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    return-void
.end method

.method send_folder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfeem/FeemService$6;

    invoke-direct {v1, p0, p1, p2}, Lfeem/FeemService$6;-><init>(Lfeem/FeemService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1291
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized show_alert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 891
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "show_alert"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "title"

    .line 892
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "description"

    .line 893
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 896
    invoke-virtual {p0, p1, p2}, Lfeem/FeemService;->alertUINoSound(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-virtual {p0}, Lfeem/FeemService;->makeSound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public ssid()Ljava/lang/String;
    .locals 9

    .line 2148
    iget-object v0, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "Not Connected To Wi-Fi"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 2151
    :cond_0
    iget-object v0, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 2152
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    const-string v3, "\""

    if-eqz v0, :cond_1

    .line 2154
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 2160
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "<unknown ssid>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "0x"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2167
    :cond_2
    :try_start_0
    iget-object v4, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getWifiApState"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    .line 2168
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2169
    iget-object v7, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2172
    sget v8, Lfeem/FeemService;->AP_STATE_ENABLING:I

    if-ne v7, v8, :cond_4

    const-string v1, "starting hotspot"

    :catch_0
    :cond_3
    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 2175
    :cond_4
    sget v8, Lfeem/FeemService;->AP_STATE_DISABLING:I

    if-ne v7, v8, :cond_5

    const-string v1, "stopping hotpsot"

    goto :goto_0

    .line 2179
    :cond_5
    sget v8, Lfeem/FeemService;->AP_STATE_ENABLED:I

    if-ne v7, v8, :cond_8

    .line 2180
    iget-object v1, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v7, "getWifiApConfiguration"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2181
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2182
    iget-object v4, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2183
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2184
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 2185
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    .line 2186
    :cond_6
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v1, v6

    .line 2193
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HotSpot:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2199
    :cond_8
    :try_start_1
    iget-object v0, p0, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "Unknown Wi-Fi"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    nop

    :cond_9
    :goto_1
    if-eqz v0, :cond_a

    .line 2226
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    const-string v0, "unknown"

    :goto_2
    return-object v0
.end method

.method public declared-synchronized to_ui(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 783
    :try_start_0
    iget-object v0, p0, Lfeem/FeemService;->idle_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    const-string v0, "feem"

    const-string v1, "idle timer cancelled"

    .line 784
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v0, p0, Lfeem/FeemService;->idle_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 788
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lfeem/FeemService;->idle_timer:Ljava/util/Timer;

    .line 789
    iget-object v0, p0, Lfeem/FeemService;->idle_timer:Ljava/util/Timer;

    new-instance v1, Lfeem/FeemService$4;

    invoke-direct {v1, p0}, Lfeem/FeemService$4;-><init>(Lfeem/FeemService;)V

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "core_started"

    .line 800
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    .line 802
    sput-boolean p1, Lfeem/FeemService;->core_started:Z

    const-string p1, "feemservice"

    const-string v0, "core_started"

    .line 803
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_1
    :goto_0
    sget-object p1, Lfeem/FeemService;->unprocessed_messages:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 806
    sget-object p1, Lfeem/FeemService;->unprocessed_messages:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfeem/FeemService$UnprocessedMessage;

    if-eqz p1, :cond_1

    .line 808
    iget-object v0, p1, Lfeem/FeemService$UnprocessedMessage;->endpoint:Ljava/lang/String;

    iget-object v1, p1, Lfeem/FeemService$UnprocessedMessage;->message:Ljava/lang/String;

    iget-object v2, p1, Lfeem/FeemService$UnprocessedMessage;->from:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfeem/FeemService;->request_from_core(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "feem"

    .line 809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delayed processed endpoint "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lfeem/FeemService$UnprocessedMessage;->endpoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ;;;; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lfeem/FeemService$UnprocessedMessage;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v0, p1, Lfeem/FeemService$UnprocessedMessage;->endpoint:Ljava/lang/String;

    const-string v1, "/pending_files_updated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    iget-object p1, p1, Lfeem/FeemService$UnprocessedMessage;->message:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lfeem/FeemService;->to_ui(Ljava/lang/String;)V

    goto :goto_0

    .line 822
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "feem_message"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    .line 823
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized turn_on_accessibility()V
    .locals 2

    monitor-enter p0

    .line 924
    :try_start_0
    sget-object v0, Lfeem/FeemService;->TAG:Ljava/lang/String;

    const-string v1, "turning on accessibility 4"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    new-instance v0, Landroid/content/Intent;

    const-string v1, "turn_on_accessibility"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 928
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
