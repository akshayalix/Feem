.class public Lfeem/FeemFolderSelect$FolderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FeemFolderSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/FeemFolderSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FolderViewHolder"
.end annotation


# instance fields
.field private broadcast_receiver:Landroid/content/BroadcastReceiver;

.field private feemId:Ljava/lang/String;

.field private imgIcon:Landroid/widget/ImageView;

.field private imgThumb:Landroid/widget/ImageView;

.field private lblDescription:Landroid/widget/TextView;

.field private lblTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lfeem/FeemFolderSelect;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lfeem/FeemFolderSelect;Landroid/view/View;)V
    .locals 2

    .line 361
    iput-object p1, p0, Lfeem/FeemFolderSelect$FolderViewHolder;->this$0:Lfeem/FeemFolderSelect;

    .line 362
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 363
    invoke-virtual {p0, p2}, Lfeem/FeemFolderSelect$FolderViewHolder;->setView(Landroid/view/View;)V

    const v0, 0x7f0800d2

    .line 364
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lfeem/FeemFolderSelect$FolderViewHolder;->setImgThumb(Landroid/widget/ImageView;)V

    const v0, 0x7f0800d4

    .line 365
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lfeem/FeemFolderSelect$FolderViewHolder;->setLblTitle(Landroid/widget/TextView;)V

    const v0, 0x7f080045

    .line 366
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lfeem/FeemFolderSelect$FolderViewHolder;->setLblDescription(Landroid/widget/TextView;)V

    .line 369
    new-instance p2, Lfeem/FeemFolderSelect$FolderViewHolder$1;

    invoke-direct {p2, p0, p1}, Lfeem/FeemFolderSelect$FolderViewHolder$1;-><init>(Lfeem/FeemFolderSelect$FolderViewHolder;Lfeem/FeemFolderSelect;)V

    iput-object p2, p0, Lfeem/FeemFolderSelect$FolderViewHolder;->broadcast_receiver:Landroid/content/BroadcastReceiver;

    .line 377
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object p2, p0, Lfeem/FeemFolderSelect$FolderViewHolder;->broadcast_receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "update_files"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public getFeemId()Ljava/lang/String;
    .locals 1

    .line 465
    iget-object v0, p0, Lfeem/FeemFolderSelect$FolderViewHolder;->feemId:Ljava/lang/String;

    return-object v0
.end method

.method public getImgThumb()Landroid/widget/ImageView;
    .locals 1

    .line 439
    iget-object v0, p0, Lfeem/FeemFolderSelect$FolderViewHolder;->imgThumb:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLblDescription()Landroid/widget/TextView;
    .locals 1

    .line 457
    iget-object v0, p0, Lfeem/FeemFolderSelect$FolderViewHolder;->lblDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLblTitle()Landroid/widget/TextView;
    .locals 1

    .line 449
    iget-object v0, p0, Lfeem/FeemFolderSelect$FolderViewHolder;->lblTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 431
    iget-object v0, p0, Lfeem/FeemFolderSelect$FolderViewHolder;->view:Landroid/view/View;

    return-object v0
.end method

.method public setFeemId(Ljava/lang/String;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lfeem/FeemFolderSelect$FolderViewHolder;->feemId:Ljava/lang/String;

    return-void
.end method

.method public setImgIcon(Landroid/widget/ImageView;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lfeem/FeemFolderSelect$FolderViewHolder;->imgIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public setImgThumb(Landroid/widget/ImageView;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lfeem/FeemFolderSelect$FolderViewHolder;->imgThumb:Landroid/widget/ImageView;

    return-void
.end method

.method public setLblDescription(Landroid/widget/TextView;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lfeem/FeemFolderSelect$FolderViewHolder;->lblDescription:Landroid/widget/TextView;

    return-void
.end method

.method public setLblTitle(Landroid/widget/TextView;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lfeem/FeemFolderSelect$FolderViewHolder;->lblTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lfeem/FeemFolderSelect$FolderViewHolder;->view:Landroid/view/View;

    return-void
.end method

.method public updateCell()V
    .locals 0

    .line 384
    :try_start_0
    invoke-virtual {p0}, Lfeem/FeemFolderSelect$FolderViewHolder;->updatePhotoCell()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method updatePhotoCell()V
    .locals 0

    return-void
.end method
