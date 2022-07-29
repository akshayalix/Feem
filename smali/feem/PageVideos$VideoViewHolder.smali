.class public Lfeem/PageVideos$VideoViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PageVideos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageVideos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoViewHolder"
.end annotation


# instance fields
.field private broadcast_receiver:Landroid/content/BroadcastReceiver;

.field private feemId:Ljava/lang/String;

.field private imgThumb:Landroid/widget/ImageView;

.field private lblDescription:Landroid/widget/TextView;

.field private lblTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lfeem/PageVideos;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lfeem/PageVideos;Landroid/view/View;)V
    .locals 2

    .line 231
    iput-object p1, p0, Lfeem/PageVideos$VideoViewHolder;->this$0:Lfeem/PageVideos;

    .line 232
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 233
    invoke-virtual {p0, p2}, Lfeem/PageVideos$VideoViewHolder;->setView(Landroid/view/View;)V

    const v0, 0x7f0800d2

    .line 234
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lfeem/PageVideos$VideoViewHolder;->setImgThumb(Landroid/widget/ImageView;)V

    const v0, 0x7f0800d4

    .line 235
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lfeem/PageVideos$VideoViewHolder;->setLblTitle(Landroid/widget/TextView;)V

    const v0, 0x7f080045

    .line 236
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lfeem/PageVideos$VideoViewHolder;->setLblDescription(Landroid/widget/TextView;)V

    .line 238
    new-instance p2, Lfeem/PageVideos$VideoViewHolder$1;

    invoke-direct {p2, p0, p1}, Lfeem/PageVideos$VideoViewHolder$1;-><init>(Lfeem/PageVideos$VideoViewHolder;Lfeem/PageVideos;)V

    iput-object p2, p0, Lfeem/PageVideos$VideoViewHolder;->broadcast_receiver:Landroid/content/BroadcastReceiver;

    .line 246
    invoke-virtual {p1}, Lfeem/PageVideos;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object p2, p0, Lfeem/PageVideos$VideoViewHolder;->broadcast_receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "update_videos"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public getFeemId()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lfeem/PageVideos$VideoViewHolder;->feemId:Ljava/lang/String;

    return-object v0
.end method

.method public getImgThumb()Landroid/widget/ImageView;
    .locals 1

    .line 308
    iget-object v0, p0, Lfeem/PageVideos$VideoViewHolder;->imgThumb:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLblDescription()Landroid/widget/TextView;
    .locals 1

    .line 326
    iget-object v0, p0, Lfeem/PageVideos$VideoViewHolder;->lblDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLblTitle()Landroid/widget/TextView;
    .locals 1

    .line 318
    iget-object v0, p0, Lfeem/PageVideos$VideoViewHolder;->lblTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 300
    iget-object v0, p0, Lfeem/PageVideos$VideoViewHolder;->view:Landroid/view/View;

    return-object v0
.end method

.method public setFeemId(Ljava/lang/String;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lfeem/PageVideos$VideoViewHolder;->feemId:Ljava/lang/String;

    return-void
.end method

.method public setImgThumb(Landroid/widget/ImageView;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lfeem/PageVideos$VideoViewHolder;->imgThumb:Landroid/widget/ImageView;

    return-void
.end method

.method public setLblDescription(Landroid/widget/TextView;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lfeem/PageVideos$VideoViewHolder;->lblDescription:Landroid/widget/TextView;

    return-void
.end method

.method public setLblTitle(Landroid/widget/TextView;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lfeem/PageVideos$VideoViewHolder;->lblTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lfeem/PageVideos$VideoViewHolder;->view:Landroid/view/View;

    return-void
.end method

.method public updateCell()V
    .locals 0

    .line 253
    :try_start_0
    invoke-virtual {p0}, Lfeem/PageVideos$VideoViewHolder;->updatePhotoCell()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method updatePhotoCell()V
    .locals 4

    .line 266
    iget-object v0, p0, Lfeem/PageVideos$VideoViewHolder;->this$0:Lfeem/PageVideos;

    iget-object v0, v0, Lfeem/PageVideos;->m_selected_items:Ljava/util/HashSet;

    iget-object v1, p0, Lfeem/PageVideos$VideoViewHolder;->feemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 268
    invoke-virtual {p0}, Lfeem/PageVideos$VideoViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v2, 0x15

    if-eqz v0, :cond_1

    .line 275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v3, 0x7f07005c

    if-lt v0, v2, :cond_0

    .line 276
    iget-object v0, p0, Lfeem/PageVideos$VideoViewHolder;->this$0:Lfeem/PageVideos;

    invoke-virtual {v0}, Lfeem/PageVideos;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lfeem/PageVideos$VideoViewHolder;->this$0:Lfeem/PageVideos;

    invoke-virtual {v2}, Lfeem/PageVideos;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lfeem/PageVideos$VideoViewHolder;->this$0:Lfeem/PageVideos;

    invoke-virtual {v0}, Lfeem/PageVideos;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 283
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v3, 0x7f07005d

    if-lt v0, v2, :cond_2

    .line 284
    iget-object v0, p0, Lfeem/PageVideos$VideoViewHolder;->this$0:Lfeem/PageVideos;

    invoke-virtual {v0}, Lfeem/PageVideos;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lfeem/PageVideos$VideoViewHolder;->this$0:Lfeem/PageVideos;

    invoke-virtual {v2}, Lfeem/PageVideos;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 286
    :cond_2
    iget-object v0, p0, Lfeem/PageVideos$VideoViewHolder;->this$0:Lfeem/PageVideos;

    invoke-virtual {v0}, Lfeem/PageVideos;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
