.class public Lfeem/FeemService$NetworkChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FeemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/FeemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkChangeBroadcastReceiver"
.end annotation


# instance fields
.field private lastpassword:Ljava/lang/String;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field final synthetic this$0:Lfeem/FeemService;


# direct methods
.method public constructor <init>(Lfeem/FeemService;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lfeem/FeemService$NetworkChangeBroadcastReceiver;->this$0:Lfeem/FeemService;

    .line 183
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string p1, ""

    .line 180
    iput-object p1, p0, Lfeem/FeemService$NetworkChangeBroadcastReceiver;->lastpassword:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lfeem/FeemService$NetworkChangeBroadcastReceiver;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 185
    iput-object p3, p0, Lfeem/FeemService$NetworkChangeBroadcastReceiver;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 192
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "feemp2p"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.net.wifi.p2p.STATE_CHANGED"

    .line 197
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p2, "android.net.wifi.p2p.PEERS_CHANGED"

    .line 199
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 201
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 204
    iget-object p1, p0, Lfeem/FeemService$NetworkChangeBroadcastReceiver;->this$0:Lfeem/FeemService;

    iget-boolean p1, p1, Lfeem/FeemService;->activate_wifi_direct_after_turning_on_wifi:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lfeem/FeemService$NetworkChangeBroadcastReceiver;->this$0:Lfeem/FeemService;

    iget-object p1, p1, Lfeem/FeemService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 205
    iget-object p1, p0, Lfeem/FeemService$NetworkChangeBroadcastReceiver;->this$0:Lfeem/FeemService;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lfeem/FeemService;->activate_wifi_direct_after_turning_on_wifi:Z

    .line 206
    invoke-static {p1}, Lfeem/FeemService;->access$100(Lfeem/FeemService;)Z

    return-void

    .line 210
    :cond_2
    sget-object p1, Lfeem/FeemService;->mP2PManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz p1, :cond_7

    sget-object p1, Lfeem/FeemService;->mP2PChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz p1, :cond_7

    .line 211
    sget-object p1, Lfeem/FeemService;->mP2PManager:Landroid/net/wifi/p2p/WifiP2pManager;

    sget-object p2, Lfeem/FeemService;->mP2PChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v0, Lfeem/FeemService$NetworkChangeBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lfeem/FeemService$NetworkChangeBroadcastReceiver$1;-><init>(Lfeem/FeemService$NetworkChangeBroadcastReceiver;)V

    invoke-virtual {p1, p2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto :goto_0

    :cond_3
    const-string p2, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    .line 306
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 311
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 312
    iget-object p1, p0, Lfeem/FeemService$NetworkChangeBroadcastReceiver;->this$0:Lfeem/FeemService;

    invoke-static {p1}, Lfeem/FeemService;->access$000(Lfeem/FeemService;)V

    goto :goto_0

    :cond_5
    const-string p2, "android.net.wifi.STATE_CHANGE"

    .line 316
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 317
    iget-object p1, p0, Lfeem/FeemService$NetworkChangeBroadcastReceiver;->this$0:Lfeem/FeemService;

    invoke-static {p1}, Lfeem/FeemService;->access$000(Lfeem/FeemService;)V

    goto :goto_0

    :cond_6
    const-string p2, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    .line 321
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 322
    iget-object p1, p0, Lfeem/FeemService$NetworkChangeBroadcastReceiver;->this$0:Lfeem/FeemService;

    invoke-static {p1}, Lfeem/FeemService;->access$000(Lfeem/FeemService;)V

    :cond_7
    :goto_0
    return-void
.end method
