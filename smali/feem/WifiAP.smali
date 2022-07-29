.class public Lfeem/WifiAP;
.super Ljava/lang/Object;
.source "WifiAP.java"


# static fields
.field public static WIFI_AP_STATE_DISABLED:I = 0x1

.field public static WIFI_AP_STATE_DISABLING:I = 0x0

.field private static WIFI_AP_STATE_FAILED:I = 0x4

.field private static final WIFI_AP_STATE_UNKNOWN:I = -0x1

.field private static constant:I


# instance fields
.field private TAG:Ljava/lang/String;

.field public WIFI_AP_STATE_ENABLED:I

.field public WIFI_AP_STATE_ENABLING:I

.field private final WIFI_STATE_TEXTSTATE:[Ljava/lang/String;

.field private alwaysEnableWifi:Z

.field private stateWifiWasIn:I

.field private wifi:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 22
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DISABLING"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DISABLED"

    aput-object v2, v0, v1

    const/4 v2, 0x2

    const-string v3, "ENABLING"

    aput-object v3, v0, v2

    const/4 v3, 0x3

    const-string v4, "ENABLED"

    aput-object v4, v0, v3

    const/4 v4, 0x4

    const-string v5, "FAILED"

    aput-object v5, v0, v4

    iput-object v0, p0, Lfeem/WifiAP;->WIFI_STATE_TEXTSTATE:[Ljava/lang/String;

    .line 25
    iput v2, p0, Lfeem/WifiAP;->WIFI_AP_STATE_ENABLING:I

    .line 26
    iput v3, p0, Lfeem/WifiAP;->WIFI_AP_STATE_ENABLED:I

    const-string v0, "WifiAP"

    .line 28
    iput-object v0, p0, Lfeem/WifiAP;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lfeem/WifiAP;->stateWifiWasIn:I

    .line 32
    iput-boolean v1, p0, Lfeem/WifiAP;->alwaysEnableWifi:Z

    return-void
.end method


# virtual methods
.method public getWifiAPState()I
    .locals 5

    const/4 v0, -0x1

    .line 154
    :try_start_0
    iget-object v1, p0, Lfeem/WifiAP;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getWifiApState"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lfeem/WifiAP;->wifi:Landroid/net/wifi/WifiManager;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    :goto_0
    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 162
    sput v2, Lfeem/WifiAP;->constant:I

    .line 166
    :cond_0
    sget v2, Lfeem/WifiAP;->constant:I

    add-int/lit8 v3, v2, 0x0

    sput v3, Lfeem/WifiAP;->WIFI_AP_STATE_DISABLING:I

    add-int/lit8 v3, v2, 0x1

    .line 167
    sput v3, Lfeem/WifiAP;->WIFI_AP_STATE_DISABLED:I

    add-int/lit8 v3, v2, 0x2

    .line 168
    iput v3, p0, Lfeem/WifiAP;->WIFI_AP_STATE_ENABLING:I

    add-int/lit8 v3, v2, 0x3

    .line 169
    iput v3, p0, Lfeem/WifiAP;->WIFI_AP_STATE_ENABLED:I

    add-int/lit8 v2, v2, 0x4

    .line 170
    sput v2, Lfeem/WifiAP;->WIFI_AP_STATE_FAILED:I

    .line 172
    iget-object v2, p0, Lfeem/WifiAP;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiAPState.state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, v0, :cond_1

    const-string v0, "UNKNOWN"

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lfeem/WifiAP;->WIFI_STATE_TEXTSTATE:[Ljava/lang/String;

    sget v4, Lfeem/WifiAP;->constant:I

    sub-int v4, v1, v4

    aget-object v0, v0, v4

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiManager;Z)I
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p2

    const-string v3, "enabling"

    const-string v4, "disabling"

    .line 56
    iget-object v0, v1, Lfeem/WifiAP;->wifi:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    move-object/from16 v0, p1

    .line 57
    iput-object v0, v1, Lfeem/WifiAP;->wifi:Landroid/net/wifi/WifiManager;

    .line 59
    :cond_0
    iget-object v0, v1, Lfeem/WifiAP;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** setWifiApEnabled CALLED **** "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 62
    invoke-static {}, Lfeem/FeemService;->adhocSSIDName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 63
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    const/4 v5, -0x1

    if-eqz v2, :cond_1

    .line 66
    iget v7, v1, Lfeem/WifiAP;->stateWifiWasIn:I

    if-ne v7, v5, :cond_1

    .line 67
    iget-object v7, v1, Lfeem/WifiAP;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    iput v7, v1, Lfeem/WifiAP;->stateWifiWasIn:I

    :cond_1
    const-wide/16 v7, 0x1f4

    const/4 v9, 0x1

    const/16 v10, 0xa

    if-eqz v2, :cond_3

    .line 71
    iget-object v11, v1, Lfeem/WifiAP;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 72
    iget-object v11, v1, Lfeem/WifiAP;->TAG:Ljava/lang/String;

    const-string v12, "disable wifi: calling"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v11, v1, Lfeem/WifiAP;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/16 v11, 0xa

    :goto_0
    if-lez v11, :cond_2

    .line 75
    iget-object v12, v1, Lfeem/WifiAP;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v12

    if-eq v12, v9, :cond_2

    .line 76
    iget-object v12, v1, Lfeem/WifiAP;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "disable wifi: waiting, pass: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int/lit8 v14, v11, 0xa

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 84
    :cond_2
    iget-object v12, v1, Lfeem/WifiAP;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "disable wifi: done, pass: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int/lit8 v11, v11, 0xa

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v11, 0x2

    .line 90
    :try_start_1
    iget-object v12, v1, Lfeem/WifiAP;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_4

    move-object v14, v3

    goto :goto_1

    :cond_4
    move-object v14, v4

    :goto_1
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " wifi ap: calling"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v12, v1, Lfeem/WifiAP;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 92
    iget-object v12, v1, Lfeem/WifiAP;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "setWifiApEnabled"

    new-array v14, v11, [Ljava/lang/Class;

    const-class v15, Landroid/net/wifi/WifiConfiguration;

    aput-object v15, v14, v6

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v15, v14, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 94
    iget-object v13, v1, Lfeem/WifiAP;->wifi:Landroid/net/wifi/WifiManager;

    new-array v14, v11, [Ljava/lang/Object;

    aput-object v0, v14, v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v14, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, v1, Lfeem/WifiAP;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v12, "getWifiApState"

    new-array v13, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 96
    iget-object v12, v1, Lfeem/WifiAP;->wifi:Landroid/net/wifi/WifiManager;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v12, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 99
    iget-object v6, v1, Lfeem/WifiAP;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, -0x1

    :goto_2
    const-string v6, " wifi ap: waiting, pass: "

    const-string v12, " wifi ap: done, pass: "

    if-nez v2, :cond_c

    const/16 v13, 0xa

    :goto_3
    if-lez v13, :cond_8

    .line 109
    invoke-virtual/range {p0 .. p0}, Lfeem/WifiAP;->getWifiAPState()I

    move-result v14

    sget v15, Lfeem/WifiAP;->WIFI_AP_STATE_DISABLING:I

    if-eq v14, v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Lfeem/WifiAP;->getWifiAPState()I

    move-result v14

    iget v15, v1, Lfeem/WifiAP;->WIFI_AP_STATE_ENABLED:I

    if-eq v14, v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Lfeem/WifiAP;->getWifiAPState()I

    move-result v14

    sget v15, Lfeem/WifiAP;->WIFI_AP_STATE_FAILED:I

    if-ne v14, v15, :cond_8

    .line 110
    :cond_6
    iget-object v14, v1, Lfeem/WifiAP;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_7

    move-object v5, v3

    goto :goto_4

    :cond_7
    move-object v5, v4

    :goto_4
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int/lit8 v5, v13, 0xa

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v13, v13, -0x1

    :catch_2
    const/4 v5, -0x1

    goto :goto_3

    .line 118
    :cond_8
    iget-object v5, v1, Lfeem/WifiAP;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    move-object v3, v4

    :goto_5
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v10, v13

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget v2, v1, Lfeem/WifiAP;->stateWifiWasIn:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a

    if-eq v2, v11, :cond_a

    const/4 v3, 0x4

    if-eq v2, v3, :cond_a

    iget-boolean v2, v1, Lfeem/WifiAP;->alwaysEnableWifi:Z

    if-eqz v2, :cond_b

    .line 123
    :cond_a
    iget-object v2, v1, Lfeem/WifiAP;->TAG:Ljava/lang/String;

    const-string v3, "enable wifi: calling"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v2, v1, Lfeem/WifiAP;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_b
    const/4 v2, -0x1

    .line 128
    iput v2, v1, Lfeem/WifiAP;->stateWifiWasIn:I

    goto :goto_9

    :cond_c
    if-eqz v2, :cond_11

    const/16 v5, 0xa

    :goto_6
    if-lez v5, :cond_f

    .line 131
    invoke-virtual/range {p0 .. p0}, Lfeem/WifiAP;->getWifiAPState()I

    move-result v9

    iget v11, v1, Lfeem/WifiAP;->WIFI_AP_STATE_ENABLING:I

    if-eq v9, v11, :cond_d

    invoke-virtual/range {p0 .. p0}, Lfeem/WifiAP;->getWifiAPState()I

    move-result v9

    sget v11, Lfeem/WifiAP;->WIFI_AP_STATE_DISABLED:I

    if-eq v9, v11, :cond_d

    invoke-virtual/range {p0 .. p0}, Lfeem/WifiAP;->getWifiAPState()I

    move-result v9

    sget v11, Lfeem/WifiAP;->WIFI_AP_STATE_FAILED:I

    if-ne v9, v11, :cond_f

    .line 132
    :cond_d
    iget-object v9, v1, Lfeem/WifiAP;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_e

    move-object v13, v3

    goto :goto_7

    :cond_e
    move-object v13, v4

    :goto_7
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int/lit8 v13, v5, 0xa

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :try_start_3
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :catch_3
    nop

    goto :goto_6

    .line 140
    :cond_f
    iget-object v6, v1, Lfeem/WifiAP;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_10

    goto :goto_8

    :cond_10
    move-object v3, v4

    :goto_8
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v10, v5

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_9
    return v0
.end method

.method public toggleWiFiAP(Landroid/net/wifi/WifiManager;Landroid/content/Context;)V
    .locals 0

    .line 41
    iget-object p2, p0, Lfeem/WifiAP;->wifi:Landroid/net/wifi/WifiManager;

    if-nez p2, :cond_0

    .line 42
    iput-object p1, p0, Lfeem/WifiAP;->wifi:Landroid/net/wifi/WifiManager;

    .line 45
    :cond_0
    invoke-virtual {p0}, Lfeem/WifiAP;->getWifiAPState()I

    move-result p1

    iget p2, p0, Lfeem/WifiAP;->WIFI_AP_STATE_ENABLED:I

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Lfeem/WifiAP;->getWifiAPState()I

    move-result p1

    iget p2, p0, Lfeem/WifiAP;->WIFI_AP_STATE_ENABLING:I

    :cond_1
    return-void
.end method
