.class Lfeem/PageAudio$AudioViewHolder$1;
.super Landroid/content/BroadcastReceiver;
.source "PageAudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PageAudio$AudioViewHolder;-><init>(Lfeem/PageAudio;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfeem/PageAudio$AudioViewHolder;

.field final synthetic val$this$0:Lfeem/PageAudio;


# direct methods
.method constructor <init>(Lfeem/PageAudio$AudioViewHolder;Lfeem/PageAudio;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lfeem/PageAudio$AudioViewHolder$1;->this$1:Lfeem/PageAudio$AudioViewHolder;

    iput-object p2, p0, Lfeem/PageAudio$AudioViewHolder$1;->val$this$0:Lfeem/PageAudio;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 326
    iget-object p1, p0, Lfeem/PageAudio$AudioViewHolder$1;->this$1:Lfeem/PageAudio$AudioViewHolder;

    invoke-virtual {p1}, Lfeem/PageAudio$AudioViewHolder;->updateCell()V

    return-void
.end method
