.class Lfeem/MainActivity$12;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/MainActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/MainActivity;


# direct methods
.method constructor <init>(Lfeem/MainActivity;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lfeem/MainActivity$12;->this$0:Lfeem/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 542
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 543
    iget-object v0, p0, Lfeem/MainActivity$12;->this$0:Lfeem/MainActivity;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lfeem/FeemService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lfeem/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 544
    iget-object v0, p0, Lfeem/MainActivity$12;->this$0:Lfeem/MainActivity;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lfeem/FeemAccessibilityService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lfeem/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
