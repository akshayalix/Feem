.class Lfeem/FeemService$8;
.super Landroid/database/ContentObserver;
.source "FeemService.java"


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
.method constructor <init>(Lfeem/FeemService;Landroid/os/Handler;)V
    .locals 0

    .line 1633
    iput-object p1, p0, Lfeem/FeemService$8;->this$0:Lfeem/FeemService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1636
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "feemaccess"

    const-string v0, "system settings changed"

    .line 1637
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object p1, p0, Lfeem/FeemService$8;->this$0:Lfeem/FeemService;

    invoke-static {p1}, Lfeem/FeemService;->access$000(Lfeem/FeemService;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1645
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string p1, "feemaccess"

    const-string p2, "system settings changed uri"

    .line 1646
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
