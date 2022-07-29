.class Lfeem/PageVideos$VideoViewHolder$1;
.super Landroid/content/BroadcastReceiver;
.source "PageVideos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PageVideos$VideoViewHolder;-><init>(Lfeem/PageVideos;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfeem/PageVideos$VideoViewHolder;

.field final synthetic val$this$0:Lfeem/PageVideos;


# direct methods
.method constructor <init>(Lfeem/PageVideos$VideoViewHolder;Lfeem/PageVideos;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lfeem/PageVideos$VideoViewHolder$1;->this$1:Lfeem/PageVideos$VideoViewHolder;

    iput-object p2, p0, Lfeem/PageVideos$VideoViewHolder$1;->val$this$0:Lfeem/PageVideos;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 242
    iget-object p1, p0, Lfeem/PageVideos$VideoViewHolder$1;->this$1:Lfeem/PageVideos$VideoViewHolder;

    invoke-virtual {p1}, Lfeem/PageVideos$VideoViewHolder;->updateCell()V

    return-void
.end method
