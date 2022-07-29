.class Lfeem/PagePhotos$PictureOrDateViewHolder$1;
.super Landroid/content/BroadcastReceiver;
.source "PagePhotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PagePhotos$PictureOrDateViewHolder;-><init>(Lfeem/PagePhotos;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfeem/PagePhotos$PictureOrDateViewHolder;

.field final synthetic val$this$0:Lfeem/PagePhotos;


# direct methods
.method constructor <init>(Lfeem/PagePhotos$PictureOrDateViewHolder;Lfeem/PagePhotos;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lfeem/PagePhotos$PictureOrDateViewHolder$1;->this$1:Lfeem/PagePhotos$PictureOrDateViewHolder;

    iput-object p2, p0, Lfeem/PagePhotos$PictureOrDateViewHolder$1;->val$this$0:Lfeem/PagePhotos;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 318
    iget-object p1, p0, Lfeem/PagePhotos$PictureOrDateViewHolder$1;->this$1:Lfeem/PagePhotos$PictureOrDateViewHolder;

    invoke-virtual {p1}, Lfeem/PagePhotos$PictureOrDateViewHolder;->updateCell()V

    return-void
.end method
