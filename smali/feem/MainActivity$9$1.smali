.class Lfeem/MainActivity$9$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lfeem/RequestPermissionHandler$RequestPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/MainActivity$9;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfeem/MainActivity$9;


# direct methods
.method constructor <init>(Lfeem/MainActivity$9;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lfeem/MainActivity$9$1;->this$1:Lfeem/MainActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    .line 468
    iget-object v0, p0, Lfeem/MainActivity$9$1;->this$1:Lfeem/MainActivity$9;

    iget-object v0, v0, Lfeem/MainActivity$9;->this$0:Lfeem/MainActivity;

    const-string v1, "Request permission failed. Feem will not be able to determine your Wi-Fi network."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 469
    new-instance v0, Landroid/content/Intent;

    const-string v1, "location_permission_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lfeem/MainActivity$9$1;->this$1:Lfeem/MainActivity$9;

    iget-object v1, v1, Lfeem/MainActivity$9;->this$0:Lfeem/MainActivity;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 461
    new-instance v0, Landroid/content/Intent;

    const-string v1, "location_permission_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lfeem/MainActivity$9$1;->this$1:Lfeem/MainActivity$9;

    iget-object v1, v1, Lfeem/MainActivity$9;->this$0:Lfeem/MainActivity;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
