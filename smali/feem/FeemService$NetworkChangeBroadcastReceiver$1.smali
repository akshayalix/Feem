.class Lfeem/FeemService$NetworkChangeBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "FeemService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/FeemService$NetworkChangeBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfeem/FeemService$NetworkChangeBroadcastReceiver;


# direct methods
.method constructor <init>(Lfeem/FeemService$NetworkChangeBroadcastReceiver;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lfeem/FeemService$NetworkChangeBroadcastReceiver$1;->this$1:Lfeem/FeemService$NetworkChangeBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 7

    const-string v0, "hotspot_stopped"

    const-string v1, "action"

    const/4 v2, 0x1

    const-string v3, "reason"

    const-string v4, "feemp2p"

    const-string v5, ""

    if-nez p1, :cond_2

    const-string p1, "new null group"

    .line 215
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget-object p1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iput-object v5, p1, Lfeem/FeemService$WiFiP2PInfo;->ssid:Ljava/lang/String;

    .line 218
    sget-object p1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iput-object v5, p1, Lfeem/FeemService$WiFiP2PInfo;->password:Ljava/lang/String;

    .line 219
    sget-object p1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iput-object v5, p1, Lfeem/FeemService$WiFiP2PInfo;->bssid:Ljava/lang/String;

    .line 221
    sget-object p1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object p1, p1, Lfeem/FeemService$WiFiP2PInfo;->lastpassword:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object p1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object p1, p1, Lfeem/FeemService$WiFiP2PInfo;->password:Ljava/lang/String;

    sget-object v4, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v4, v4, Lfeem/FeemService$WiFiP2PInfo;->lastpassword:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 222
    :cond_0
    sget-object p1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    sget-object v4, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v4, v4, Lfeem/FeemService$WiFiP2PInfo;->password:Ljava/lang/String;

    iput-object v4, p1, Lfeem/FeemService$WiFiP2PInfo;->lastpassword:Ljava/lang/String;

    .line 223
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 225
    :try_start_0
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 231
    :goto_0
    iget-object v0, p0, Lfeem/FeemService$NetworkChangeBroadcastReceiver$1;->this$1:Lfeem/FeemService$NetworkChangeBroadcastReceiver;

    iget-object v0, v0, Lfeem/FeemService$NetworkChangeBroadcastReceiver;->this$0:Lfeem/FeemService;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfeem/FeemService;->to_ui(Ljava/lang/String;)V

    .line 237
    :cond_1
    sget-object p1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iput-boolean v2, p1, Lfeem/FeemService$WiFiP2PInfo;->done:Z

    goto/16 :goto_3

    .line 241
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    if-nez v6, :cond_5

    .line 244
    sget-object p1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iput-object v5, p1, Lfeem/FeemService$WiFiP2PInfo;->ssid:Ljava/lang/String;

    .line 245
    sget-object p1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iput-object v5, p1, Lfeem/FeemService$WiFiP2PInfo;->password:Ljava/lang/String;

    .line 246
    sget-object p1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iput-object v5, p1, Lfeem/FeemService$WiFiP2PInfo;->bssid:Ljava/lang/String;

    .line 247
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 249
    :try_start_1
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    iget v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const-string v0, "Your device does not support Wi-Fi Direct :("

    .line 251
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 253
    :cond_3
    iget v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string v0, "Failed to activate Wi-Fi Direct :("

    .line 254
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    const-string v0, "Failed to activate Wi-Fi Direct :(. Unknown Reason"

    .line 257
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 261
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 264
    :goto_1
    iget-object v0, p0, Lfeem/FeemService$NetworkChangeBroadcastReceiver$1;->this$1:Lfeem/FeemService$NetworkChangeBroadcastReceiver;

    iget-object v0, v0, Lfeem/FeemService$NetworkChangeBroadcastReceiver;->this$0:Lfeem/FeemService;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfeem/FeemService;->to_ui(Ljava/lang/String;)V

    .line 265
    sget-object p1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iput-boolean v2, p1, Lfeem/FeemService$WiFiP2PInfo;->done:Z

    goto/16 :goto_3

    .line 269
    :cond_5
    sget-object v0, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfeem/FeemService$WiFiP2PInfo;->ssid:Ljava/lang/String;

    .line 270
    sget-object v0, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfeem/FeemService$WiFiP2PInfo;->password:Ljava/lang/String;

    .line 271
    sget-object v0, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfeem/FeemService$WiFiP2PInfo;->bssid:Ljava/lang/String;

    .line 272
    sget-object v0, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v0, v0, Lfeem/FeemService$WiFiP2PInfo;->password:Ljava/lang/String;

    sget-object v3, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v3, v3, Lfeem/FeemService$WiFiP2PInfo;->lastpassword:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 273
    sget-object v0, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    sget-object v3, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iget-object v3, v3, Lfeem/FeemService$WiFiP2PInfo;->password:Ljava/lang/String;

    iput-object v3, v0, Lfeem/FeemService$WiFiP2PInfo;->lastpassword:Ljava/lang/String;

    .line 275
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v3, "hotspot_created"

    .line 277
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ssid"

    .line 278
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "password"

    .line 279
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 281
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 284
    :goto_2
    iget-object v1, p0, Lfeem/FeemService$NetworkChangeBroadcastReceiver$1;->this$1:Lfeem/FeemService$NetworkChangeBroadcastReceiver;

    iget-object v1, v1, Lfeem/FeemService$NetworkChangeBroadcastReceiver;->this$0:Lfeem/FeemService;

    invoke-static {v1}, Lfeem/FeemService;->access$000(Lfeem/FeemService;)V

    .line 287
    iget-object v1, p0, Lfeem/FeemService$NetworkChangeBroadcastReceiver$1;->this$1:Lfeem/FeemService$NetworkChangeBroadcastReceiver;

    iget-object v1, v1, Lfeem/FeemService$NetworkChangeBroadcastReceiver;->this$0:Lfeem/FeemService;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfeem/FeemService;->to_ui(Ljava/lang/String;)V

    .line 290
    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sget-object p1, Lfeem/FeemService;->wiFiP2PInfo:Lfeem/FeemService$WiFiP2PInfo;

    iput-boolean v2, p1, Lfeem/FeemService$WiFiP2PInfo;->done:Z

    :goto_3
    return-void
.end method
