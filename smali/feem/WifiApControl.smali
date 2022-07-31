.class public Lfeem/WifiApControl;
.super Ljava/lang/Object;
.source "WifiApControl.java"


# static fields
.field public static final EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0x1

.field public static final WIFI_AP_STATE_DISABLING:I = 0x0

.field public static final WIFI_AP_STATE_ENABLED:I = 0x3

.field public static final WIFI_AP_STATE_ENABLING:I = 0x2

.field public static final WIFI_AP_STATE_FAILED:I = 0x4

.field private static getWifiApConfiguration:Ljava/lang/reflect/Method;

.field private static getWifiApState:Ljava/lang/reflect/Method;

.field private static isWifiApEnabled:Ljava/lang/reflect/Method;

.field private static setWifiApEnabled:Ljava/lang/reflect/Method;


# instance fields
.field private mgr:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    const-class v0, Landroid/net/wifi/WifiManager;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 26
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getWifiApState"

    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 28
    sput-object v3, Lfeem/WifiApControl;->getWifiApState:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_0
    const-string v5, "isWifiApEnabled"

    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 30
    sput-object v3, Lfeem/WifiApControl;->isWifiApEnabled:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_1
    const-string v5, "setWifiApEnabled"

    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 32
    sput-object v3, Lfeem/WifiApControl;->setWifiApEnabled:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_2
    const-string v5, "getWifiApConfiguration"

    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 34
    sput-object v3, Lfeem/WifiApControl;->getWifiApConfiguration:Ljava/lang/reflect/Method;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lfeem/WifiApControl;->mgr:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static getApControl(Landroid/net/wifi/WifiManager;)Lfeem/WifiApControl;
    .locals 1

    .line 54
    invoke-static {}, Lfeem/WifiApControl;->isApSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    new-instance v0, Lfeem/WifiApControl;

    invoke-direct {v0, p0}, Lfeem/WifiApControl;-><init>(Landroid/net/wifi/WifiManager;)V

    return-object v0
.end method

.method public static isApSupported()Z
    .locals 1

    .line 49
    sget-object v0, Lfeem/WifiApControl;->getWifiApState:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lfeem/WifiApControl;->isWifiApEnabled:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lfeem/WifiApControl;->setWifiApEnabled:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lfeem/WifiApControl;->getWifiApConfiguration:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static turnOnOffWifi(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "wifi"

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 69
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method


# virtual methods
.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 3

    .line 92
    :try_start_0
    sget-object v0, Lfeem/WifiApControl;->getWifiApConfiguration:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lfeem/WifiApControl;->mgr:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatPhone"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiApState()I
    .locals 3

    .line 83
    :try_start_0
    sget-object v0, Lfeem/WifiApControl;->getWifiApState:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lfeem/WifiApControl;->mgr:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatPhone"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public isWifiApEnabled()Z
    .locals 4

    const/4 v0, 0x0

    .line 74
    :try_start_0
    sget-object v1, Lfeem/WifiApControl;->isWifiApEnabled:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lfeem/WifiApControl;->mgr:Landroid/net/wifi/WifiManager;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatPhone"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 4

    const/4 v0, 0x0

    .line 101
    :try_start_0
    sget-object v1, Lfeem/WifiApControl;->setWifiApEnabled:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lfeem/WifiApControl;->mgr:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v3, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "BatPhone"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
