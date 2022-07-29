.class Lfeem/FeemService$3;
.super Ljava/lang/Object;
.source "FeemService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/FeemService;->start_hotspot()Z
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

    .line 613
    iput-object p1, p0, Lfeem/FeemService$3;->this$0:Lfeem/FeemService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onfailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "feemp2p"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "action"

    const-string v1, "hotspot_stopped"

    .line 628
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "reason"

    const-string v1, "Please turn on your Wi-Fi, and try again. Or manually tether your data connection."

    .line 629
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 631
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 634
    :goto_0
    iget-object v0, p0, Lfeem/FeemService$3;->this$0:Lfeem/FeemService;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfeem/FeemService;->to_ui(Ljava/lang/String;)V

    .line 635
    iget-object p1, p0, Lfeem/FeemService$3;->this$0:Lfeem/FeemService;

    invoke-static {p1}, Lfeem/FeemService;->access$000(Lfeem/FeemService;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "feemp2p"

    const-string v1, "onsuccess"

    .line 616
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lfeem/FeemService$3;->this$0:Lfeem/FeemService;

    invoke-static {v0}, Lfeem/FeemService;->access$000(Lfeem/FeemService;)V

    return-void
.end method
