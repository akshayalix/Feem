.class Lfeem/FeemService$7;
.super Ljava/lang/Object;
.source "FeemService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/FeemService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/FeemService;


# direct methods
.method constructor <init>(Lfeem/FeemService;)V
    .locals 0

    .line 1575
    iput-object p1, p0, Lfeem/FeemService$7;->this$0:Lfeem/FeemService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 4

    const-string v0, "feemp2p"

    if-nez p1, :cond_0

    const-string p1, "new null group"

    .line 1579
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_0
    const-string v1, "group is not null"

    .line 1582
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    .line 1586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    const-string v1, "device != null"

    .line 1589
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    sget-object v1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfeem/FeemService$WiFiP2PInfo;->ssid:Ljava/lang/String;

    .line 1592
    sget-object v1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfeem/FeemService$WiFiP2PInfo;->password:Ljava/lang/String;

    .line 1593
    sget-object v1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfeem/FeemService$WiFiP2PInfo;->bssid:Ljava/lang/String;

    .line 1594
    sget-object v1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v1, v1, Lfeem/FeemService$WiFiP2PInfo;->password:Ljava/lang/String;

    sget-object v2, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v2, v2, Lfeem/FeemService$WiFiP2PInfo;->lastpassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1595
    sget-object v1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    sget-object v2, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v2, v2, Lfeem/FeemService$WiFiP2PInfo;->password:Ljava/lang/String;

    iput-object v2, v1, Lfeem/FeemService$WiFiP2PInfo;->lastpassword:Ljava/lang/String;

    .line 1597
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "action"

    const-string v3, "hotspot_created"

    .line 1599
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ssid"

    .line 1600
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "password"

    .line 1601
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1603
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1606
    :goto_0
    iget-object v2, p0, Lfeem/FeemService$7;->this$0:Lfeem/FeemService;

    invoke-static {v2}, Lfeem/FeemService;->access$000(Lfeem/FeemService;)V

    .line 1609
    iget-object v2, p0, Lfeem/FeemService$7;->this$0:Lfeem/FeemService;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lfeem/FeemService;->to_ui(Ljava/lang/String;)V

    .line 1612
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    sget-object p1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lfeem/FeemService$WiFiP2PInfo;->done:Z

    :cond_2
    :goto_1
    return-void
.end method
