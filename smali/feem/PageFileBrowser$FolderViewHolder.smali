.class public Lfeem/PageFileBrowser$FolderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PageFileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageFileBrowser;
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

.field final synthetic this$0:Lfeem/PageFileBrowser;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lfeem/PageFileBrowser;Landroid/view/View;)V
    .locals 2

    .line 400
    iput-object p1, p0, Lfeem/PageFileBrowser$FolderViewHolder;->this$0:Lfeem/PageFileBrowser;

    .line 401
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 402
    invoke-virtual {p0, p2}, Lfeem/PageFileBrowser$FolderViewHolder;->setView(Landroid/view/View;)V

    const v0, 0x7f0800d2

    .line 403
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lfeem/PageFileBrowser$FolderViewHolder;->setImgThumb(Landroid/widget/ImageView;)V

    const v0, 0x7f0800d4

    .line 404
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lfeem/PageFileBrowser$FolderViewHolder;->setLblTitle(Landroid/widget/TextView;)V

    const v0, 0x7f080045

    .line 405
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lfeem/PageFileBrowser$FolderViewHolder;->setLblDescription(Landroid/widget/TextView;)V

    const v0, 0x7f080065

    .line 406
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lfeem/PageFileBrowser$FolderViewHolder;->setImgIcon(Landroid/widget/ImageView;)V

    .line 408
    new-instance p2, Lfeem/PageFileBrowser$FolderViewHolder$1;

    invoke-direct {p2, p0, p1}, Lfeem/PageFileBrowser$FolderViewHolder$1;-><init>(Lfeem/PageFileBrowser$FolderViewHolder;Lfeem/PageFileBrowser;)V

    iput-object p2, p0, Lfeem/PageFileBrowser$FolderViewHolder;->broadcast_receiver:Landroid/content/BroadcastReceiver;

    .line 416
    invoke-virtual {p1}, Lfeem/PageFileBrowser;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object p2, p0, Lfeem/PageFileBrowser$FolderViewHolder;->broadcast_receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "update_files"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public getFeemId()Ljava/lang/String;
    .locals 1

    .line 504
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderViewHolder;->feemId:Ljava/lang/String;

    return-object v0
.end method

.method public getImgIcon()Landroid/widget/ImageView;
    .locals 1

    .line 512
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderViewHolder;->imgIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImgThumb()Landroid/widget/ImageView;
    .locals 1

    .line 478
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderViewHolder;->imgThumb:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLblDescription()Landroid/widget/TextView;
    .locals 1

    .line 496
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderViewHolder;->lblDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLblTitle()Landroid/widget/TextView;
    .locals 1

    .line 488
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderViewHolder;->lblTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 470
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderViewHolder;->view:Landroid/view/View;

    return-object v0
.end method

.method public setFeemId(Ljava/lang/String;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lfeem/PageFileBrowser$FolderViewHolder;->feemId:Ljava/lang/String;

    return-void
.end method

.method public setImgIcon(Landroid/widget/ImageView;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lfeem/PageFileBrowser$FolderViewHolder;->imgIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public setImgThumb(Landroid/widget/ImageView;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lfeem/PageFileBrowser$FolderViewHolder;->imgThumb:Landroid/widget/ImageView;

    return-void
.end method

.method public setLblDescription(Landroid/widget/TextView;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lfeem/PageFileBrowser$FolderViewHolder;->lblDescription:Landroid/widget/TextView;

    return-void
.end method

.method public setLblTitle(Landroid/widget/TextView;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lfeem/PageFileBrowser$FolderViewHolder;->lblTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lfeem/PageFileBrowser$FolderViewHolder;->view:Landroid/view/View;

    return-void
.end method

.method public updateCell()V
    .locals 0

    .line 423
    :try_start_0
    invoke-virtual {p0}, Lfeem/PageFileBrowser$FolderViewHolder;->updatePhotoCell()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method updatePhotoCell()V
    .locals 4

    .line 436
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderViewHolder;->this$0:Lfeem/PageFileBrowser;

    iget-object v0, v0, Lfeem/PageFileBrowser;->m_selected_items:Ljava/util/HashSet;

    iget-object v1, p0, Lfeem/PageFileBrowser$FolderViewHolder;->feemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 438
    invoke-virtual {p0}, Lfeem/PageFileBrowser$FolderViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v2, 0x15

    if-eqz v0, :cond_1

    .line 445
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v3, 0x7f07005c

    if-lt v0, v2, :cond_0

    .line 446
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderViewHolder;->this$0:Lfeem/PageFileBrowser;

    invoke-virtual {v0}, Lfeem/PageFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lfeem/PageFileBrowser$FolderViewHolder;->this$0:Lfeem/PageFileBrowser;

    invoke-virtual {v2}, Lfeem/PageFileBrowser;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderViewHolder;->this$0:Lfeem/PageFileBrowser;

    invoke-virtual {v0}, Lfeem/PageFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 453
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v3, 0x7f07005d

    if-lt v0, v2, :cond_2

    .line 454
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderViewHolder;->this$0:Lfeem/PageFileBrowser;

    invoke-virtual {v0}, Lfeem/PageFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lfeem/PageFileBrowser$FolderViewHolder;->this$0:Lfeem/PageFileBrowser;

    invoke-virtual {v2}, Lfeem/PageFileBrowser;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 456
    :cond_2
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderViewHolder;->this$0:Lfeem/PageFileBrowser;

    invoke-virtual {v0}, Lfeem/PageFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
