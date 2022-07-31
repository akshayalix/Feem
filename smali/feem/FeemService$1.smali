.class Lfeem/FeemService$1;
.super Landroid/content/BroadcastReceiver;
.source "FeemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/FeemService;
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

    .line 164
    iput-object p1, p0, Lfeem/FeemService$1;->this$0:Lfeem/FeemService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "location_permission_changed"

    .line 170
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lfeem/FeemService$1;->this$0:Lfeem/FeemService;

    invoke-static {p1}, Lfeem/FeemService;->access$000(Lfeem/FeemService;)V

    :cond_0
    return-void
.end method
