.class public Lfeem/PageApps$AppViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PageApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppViewHolder"
.end annotation


# instance fields
.field private broadcast_receiver:Landroid/content/BroadcastReceiver;

.field private feemId:Ljava/lang/String;

.field private imgThumb:Landroid/widget/ImageView;

.field private lblDescription:Landroid/widget/TextView;

.field private lblTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lfeem/PageApps;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lfeem/PageApps;Landroid/view/View;)V
    .locals 2

    .line 225
    iput-object p1, p0, Lfeem/PageApps$AppViewHolder;->this$0:Lfeem/PageApps;

    .line 226
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 227
    invoke-virtual {p0, p2}, Lfeem/PageApps$AppViewHolder;->setView(Landroid/view/View;)V

    const v0, 0x7f0800d2

    .line 228
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lfeem/PageApps$AppViewHolder;->setImgThumb(Landroid/widget/ImageView;)V

    const v0, 0x7f0800d4

    .line 229
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lfeem/PageApps$AppViewHolder;->setLblTitle(Landroid/widget/TextView;)V

    const v0, 0x7f080045

    .line 230
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lfeem/PageApps$AppViewHolder;->setLblDescription(Landroid/widget/TextView;)V

    .line 232
    new-instance p2, Lfeem/PageApps$AppViewHolder$1;

    invoke-direct {p2, p0, p1}, Lfeem/PageApps$AppViewHolder$1;-><init>(Lfeem/PageApps$AppViewHolder;Lfeem/PageApps;)V

    iput-object p2, p0, Lfeem/PageApps$AppViewHolder;->broadcast_receiver:Landroid/content/BroadcastReceiver;

    .line 240
    invoke-virtual {p1}, Lfeem/PageApps;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object p2, p0, Lfeem/PageApps$AppViewHolder;->broadcast_receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "update_apps"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public getFeemId()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lfeem/PageApps$AppViewHolder;->feemId:Ljava/lang/String;

    return-object v0
.end method

.method public getImgThumb()Landroid/widget/ImageView;
    .locals 1

    .line 302
    iget-object v0, p0, Lfeem/PageApps$AppViewHolder;->imgThumb:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLblDescription()Landroid/widget/TextView;
    .locals 1

    .line 320
    iget-object v0, p0, Lfeem/PageApps$AppViewHolder;->lblDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLblTitle()Landroid/widget/TextView;
    .locals 1

    .line 312
    iget-object v0, p0, Lfeem/PageApps$AppViewHolder;->lblTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 294
    iget-object v0, p0, Lfeem/PageApps$AppViewHolder;->view:Landroid/view/View;

    return-object v0
.end method

.method public setFeemId(Ljava/lang/String;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lfeem/PageApps$AppViewHolder;->feemId:Ljava/lang/String;

    return-void
.end method

.method public setImgThumb(Landroid/widget/ImageView;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lfeem/PageApps$AppViewHolder;->imgThumb:Landroid/widget/ImageView;

    return-void
.end method

.method public setLblDescription(Landroid/widget/TextView;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lfeem/PageApps$AppViewHolder;->lblDescription:Landroid/widget/TextView;

    return-void
.end method

.method public setLblTitle(Landroid/widget/TextView;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lfeem/PageApps$AppViewHolder;->lblTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lfeem/PageApps$AppViewHolder;->view:Landroid/view/View;

    return-void
.end method

.method public updateCell()V
    .locals 0

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lfeem/PageApps$AppViewHolder;->updatePhotoCell()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method updatePhotoCell()V
    .locals 4

    .line 260
    iget-object v0, p0, Lfeem/PageApps$AppViewHolder;->this$0:Lfeem/PageApps;

    iget-object v0, v0, Lfeem/PageApps;->m_selected_items:Ljava/util/HashSet;

    iget-object v1, p0, Lfeem/PageApps$AppViewHolder;->feemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 262
    invoke-virtual {p0}, Lfeem/PageApps$AppViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v2, 0x15

    if-eqz v0, :cond_1

    .line 269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v3, 0x7f07005c

    if-lt v0, v2, :cond_0

    .line 270
    iget-object v0, p0, Lfeem/PageApps$AppViewHolder;->this$0:Lfeem/PageApps;

    invoke-virtual {v0}, Lfeem/PageApps;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lfeem/PageApps$AppViewHolder;->this$0:Lfeem/PageApps;

    invoke-virtual {v2}, Lfeem/PageApps;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lfeem/PageApps$AppViewHolder;->this$0:Lfeem/PageApps;

    invoke-virtual {v0}, Lfeem/PageApps;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 277
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v3, 0x7f07005d

    if-lt v0, v2, :cond_2

    .line 278
    iget-object v0, p0, Lfeem/PageApps$AppViewHolder;->this$0:Lfeem/PageApps;

    invoke-virtual {v0}, Lfeem/PageApps;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lfeem/PageApps$AppViewHolder;->this$0:Lfeem/PageApps;

    invoke-virtual {v2}, Lfeem/PageApps;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lfeem/PageApps$AppViewHolder;->this$0:Lfeem/PageApps;

    invoke-virtual {v0}, Lfeem/PageApps;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
