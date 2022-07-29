.class Lfeem/PageApps$AppViewHolder$1;
.super Landroid/content/BroadcastReceiver;
.source "PageApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PageApps$AppViewHolder;-><init>(Lfeem/PageApps;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfeem/PageApps$AppViewHolder;

.field final synthetic val$this$0:Lfeem/PageApps;


# direct methods
.method constructor <init>(Lfeem/PageApps$AppViewHolder;Lfeem/PageApps;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lfeem/PageApps$AppViewHolder$1;->this$1:Lfeem/PageApps$AppViewHolder;

    iput-object p2, p0, Lfeem/PageApps$AppViewHolder$1;->val$this$0:Lfeem/PageApps;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 236
    iget-object p1, p0, Lfeem/PageApps$AppViewHolder$1;->this$1:Lfeem/PageApps$AppViewHolder;

    invoke-virtual {p1}, Lfeem/PageApps$AppViewHolder;->updateCell()V

    return-void
.end method
