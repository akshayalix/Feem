.class public Lfeem/PageApps;
.super Landroidx/fragment/app/Fragment;
.source "PageApps.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfeem/PageApps$TaskLoader;,
        Lfeem/PageApps$AppAdapterGrid;,
        Lfeem/PageApps$AppViewHolder;,
        Lfeem/PageApps$AsyncDrawable;,
        Lfeem/PageApps$BitmapWorkerTask;,
        Lfeem/PageApps$FeemApp;,
        Lfeem/PageApps$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lfeem/PageApps$FeemApp;",
        ">;>;"
    }
.end annotation


# instance fields
.field public _defaultBitmap:Landroid/graphics/Bitmap;

.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lfeem/PageApps$FeemApp;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field m_selected_items:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private select_all:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 467
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lfeem/PageApps;->select_all:Z

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lfeem/PageApps;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 174
    iput-object v0, p0, Lfeem/PageApps;->_defaultBitmap:Landroid/graphics/Bitmap;

    .line 456
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfeem/PageApps;->mItems:Ljava/util/ArrayList;

    .line 457
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lfeem/PageApps;->m_selected_items:Ljava/util/HashSet;

    .line 458
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lfeem/PageApps;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    .line 464
    iput-object v0, p0, Lfeem/PageApps;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/ImageView;)Lfeem/PageApps$BitmapWorkerTask;
    .locals 0

    .line 51
    invoke-static {p0}, Lfeem/PageApps;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lfeem/PageApps$BitmapWorkerTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lfeem/PageApps;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lfeem/PageApps;->toggle_select_all()V

    return-void
.end method

.method static synthetic access$300(Lfeem/PageApps;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lfeem/PageApps;->select_all:Z

    return p0
.end method

.method static synthetic access$302(Lfeem/PageApps;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lfeem/PageApps;->select_all:Z

    return p1
.end method

.method public static cancelPotentialWork(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 2

    .line 157
    invoke-static {p1}, Lfeem/PageApps;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lfeem/PageApps$BitmapWorkerTask;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 160
    invoke-static {p1}, Lfeem/PageApps$BitmapWorkerTask;->access$100(Lfeem/PageApps$BitmapWorkerTask;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 164
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lfeem/PageApps$BitmapWorkerTask;->cancel(Z)Z

    :cond_2
    return v0
.end method

.method private static getBitmapWorkerTask(Landroid/widget/ImageView;)Lfeem/PageApps$BitmapWorkerTask;
    .locals 1

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 148
    instance-of v0, p0, Lfeem/PageApps$AsyncDrawable;

    if-eqz v0, :cond_0

    .line 149
    check-cast p0, Lfeem/PageApps$AsyncDrawable;

    .line 150
    invoke-virtual {p0}, Lfeem/PageApps$AsyncDrawable;->getBitmapWorkerTask()Lfeem/PageApps$BitmapWorkerTask;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private toggle_select_all()V
    .locals 4

    .line 58
    iget-boolean v0, p0, Lfeem/PageApps;->select_all:Z

    const-string v1, "update_apps"

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lfeem/PageApps;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lfeem/PageApps;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 62
    invoke-virtual {p0}, Lfeem/PageApps;->update_footer_panel_visibility()V

    goto :goto_1

    .line 66
    :cond_0
    iget-object v0, p0, Lfeem/PageApps;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfeem/PageApps$FeemApp;

    .line 67
    iget-object v3, p0, Lfeem/PageApps;->m_selected_items:Ljava/util/HashSet;

    iget-object v2, v2, Lfeem/PageApps$FeemApp;->appSource:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lfeem/PageApps;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 73
    invoke-virtual {p0}, Lfeem/PageApps;->update_footer_panel_visibility()V

    .line 78
    :goto_1
    iget-boolean v0, p0, Lfeem/PageApps;->select_all:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lfeem/PageApps;->select_all:Z

    return-void
.end method


# virtual methods
.method public getDefaultBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 176
    iget-object v0, p0, Lfeem/PageApps;->_defaultBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 178
    :try_start_0
    invoke-virtual {p0}, Lfeem/PageApps;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lfeem/PageApps;->_defaultBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "defaultbitmap"

    const-string v2, ""

    .line 182
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    :cond_0
    :goto_0
    iget-object v0, p0, Lfeem/PageApps;->_defaultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4

    .line 190
    invoke-static {p1, p2}, Lfeem/PageApps;->cancelPotentialWork(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Lfeem/PageApps$BitmapWorkerTask;

    invoke-direct {v0, p0, p2}, Lfeem/PageApps$BitmapWorkerTask;-><init>(Lfeem/PageApps;Landroid/widget/ImageView;)V

    .line 192
    new-instance v1, Lfeem/PageApps$AsyncDrawable;

    .line 193
    invoke-virtual {p0}, Lfeem/PageApps;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lfeem/PageApps$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lfeem/PageApps$BitmapWorkerTask;)V

    .line 194
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 195
    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-virtual {v0, p2}, Lfeem/PageApps$BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 760
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 761
    new-instance p1, Lfeem/PageApps$5;

    iget-object v0, p0, Lfeem/PageApps;->mItems:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lfeem/PageApps$5;-><init>(Lfeem/PageApps;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lfeem/PageApps;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 764
    iget-object p1, p0, Lfeem/PageApps;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lfeem/PageApps;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 765
    invoke-virtual {p0}, Lfeem/PageApps;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 478
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 778
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "apps"

    const-string v0, "onConfigurationChanged"

    .line 779
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lfeem/PageApps$FeemApp;",
            ">;>;"
        }
    .end annotation

    const-string p2, "apps"

    const-string v0, "loader created"

    .line 570
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 573
    iget-object p1, p0, Lfeem/PageApps;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 575
    new-instance p1, Lfeem/PageApps$TaskLoader;

    invoke-virtual {p0}, Lfeem/PageApps;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lfeem/PageApps$TaskLoader;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "photos"

    const-string v0, "onCreateView"

    .line 641
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    const v0, 0x7f0b004c

    .line 643
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080069

    .line 646
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 649
    new-instance v0, Lfeem/PageApps$2;

    invoke-direct {v0, p0, p2}, Lfeem/PageApps$2;-><init>(Lfeem/PageApps;Landroid/widget/ImageView;)V

    .line 663
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08002f

    .line 667
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 671
    new-instance v1, Lfeem/PageApps$3;

    invoke-direct {v1, p0, p2}, Lfeem/PageApps$3;-><init>(Lfeem/PageApps;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080031

    .line 683
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 687
    new-instance v0, Lfeem/PageApps$4;

    invoke-direct {v0, p0}, Lfeem/PageApps$4;-><init>(Lfeem/PageApps;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080094

    .line 749
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lfeem/PageApps;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 751
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lfeem/PageApps;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 752
    iget-object p3, p0, Lfeem/PageApps;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 490
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const-string v0, "apps"

    const-string v1, "destroying view"

    .line 491
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lfeem/PageApps;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lfeem/PageApps$FeemApp;",
            ">;>;",
            "Ljava/util/List<",
            "Lfeem/PageApps$FeemApp;",
            ">;)V"
        }
    .end annotation

    .line 583
    iget-object p1, p0, Lfeem/PageApps;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 584
    iget-object p1, p0, Lfeem/PageApps;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string p1, "apps"

    const-string p2, "loader finished for real"

    .line 588
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {p0}, Lfeem/PageApps;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    .line 590
    iget-object p1, p0, Lfeem/PageApps;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lfeem/PageApps$FeemApp;",
            ">;>;)V"
        }
    .end annotation

    const-string p1, "apps"

    const-string v0, "onLoaderReset"

    .line 597
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 518
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 519
    invoke-static {}, Ljava/lang/System;->gc()V

    const-string v0, "apps"

    const-string v1, "resuming"

    .line 521
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {p0}, Lfeem/PageApps;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 523
    invoke-virtual {p0}, Lfeem/PageApps;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->getLoader(I)Landroidx/loader/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->forceLoad()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 497
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string p1, "apps"

    const-string v0, "saving instace state"

    .line 498
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 770
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 772
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onViewCreated "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lfeem/PageApps;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "apps"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 485
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method update_footer_panel_visibility()V
    .locals 6

    .line 604
    iget-object v0, p0, Lfeem/PageApps;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 609
    :goto_0
    invoke-virtual {p0}, Lfeem/PageApps;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f08005b

    .line 610
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f0800ad

    .line 613
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Files: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lfeem/PageApps;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 616
    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 617
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 618
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 619
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 623
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 624
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 625
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lfeem/PageApps$1;

    invoke-direct {v1, p0, v3}, Lfeem/PageApps$1;-><init>(Lfeem/PageApps;Landroid/view/ViewGroup;)V

    .line 626
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_1
    return-void
.end method
