.class public Lfeem/PageVideos;
.super Landroidx/fragment/app/Fragment;
.source "PageVideos.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfeem/PageVideos$AsyncTaskLoadCursorVideos;,
        Lfeem/PageVideos$VideoAdapterGrid;,
        Lfeem/PageVideos$VideoViewHolder;,
        Lfeem/PageVideos$AsyncDrawable;,
        Lfeem/PageVideos$BitmapWorkerTask;,
        Lfeem/PageVideos$FeemVideo;,
        Lfeem/PageVideos$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field public _defaultBitmap:Landroid/graphics/Bitmap;

.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lfeem/PageVideos$FeemVideo;",
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

.field final sourceUri:Landroid/net/Uri;

.field final thumbUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 474
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lfeem/PageVideos;->select_all:Z

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lfeem/PageVideos;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 179
    iput-object v0, p0, Lfeem/PageVideos;->_defaultBitmap:Landroid/graphics/Bitmap;

    .line 460
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lfeem/PageVideos;->sourceUri:Landroid/net/Uri;

    .line 461
    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lfeem/PageVideos;->thumbUri:Landroid/net/Uri;

    .line 463
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfeem/PageVideos;->mItems:Ljava/util/ArrayList;

    .line 464
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lfeem/PageVideos;->m_selected_items:Ljava/util/HashSet;

    .line 465
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lfeem/PageVideos;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    .line 471
    iput-object v0, p0, Lfeem/PageVideos;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/ImageView;)Lfeem/PageVideos$BitmapWorkerTask;
    .locals 0

    .line 54
    invoke-static {p0}, Lfeem/PageVideos;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lfeem/PageVideos$BitmapWorkerTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lfeem/PageVideos;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 54
    iget-object p0, p0, Lfeem/PageVideos;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$300(Lfeem/PageVideos;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lfeem/PageVideos;->toggle_select_all()V

    return-void
.end method

.method static synthetic access$400(Lfeem/PageVideos;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lfeem/PageVideos;->select_all:Z

    return p0
.end method

.method static synthetic access$402(Lfeem/PageVideos;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lfeem/PageVideos;->select_all:Z

    return p1
.end method

.method public static cancelPotentialWork(ILandroid/widget/ImageView;)Z
    .locals 2

    .line 162
    invoke-static {p1}, Lfeem/PageVideos;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lfeem/PageVideos$BitmapWorkerTask;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 165
    invoke-static {p1}, Lfeem/PageVideos$BitmapWorkerTask;->access$100(Lfeem/PageVideos$BitmapWorkerTask;)I

    move-result v1

    if-eqz v1, :cond_1

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 169
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lfeem/PageVideos$BitmapWorkerTask;->cancel(Z)Z

    :cond_2
    return v0
.end method

.method private static getBitmapWorkerTask(Landroid/widget/ImageView;)Lfeem/PageVideos$BitmapWorkerTask;
    .locals 1

    if-eqz p0, :cond_0

    .line 152
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 153
    instance-of v0, p0, Lfeem/PageVideos$AsyncDrawable;

    if-eqz v0, :cond_0

    .line 154
    check-cast p0, Lfeem/PageVideos$AsyncDrawable;

    .line 155
    invoke-virtual {p0}, Lfeem/PageVideos$AsyncDrawable;->getBitmapWorkerTask()Lfeem/PageVideos$BitmapWorkerTask;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private toggle_select_all()V
    .locals 5

    .line 62
    iget-boolean v0, p0, Lfeem/PageVideos;->select_all:Z

    const-string v1, "update_videos"

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lfeem/PageVideos;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lfeem/PageVideos;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 66
    invoke-virtual {p0}, Lfeem/PageVideos;->update_footer_panel_visibility()V

    goto :goto_1

    .line 70
    :cond_0
    iget-object v0, p0, Lfeem/PageVideos;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    iget-object v3, p0, Lfeem/PageVideos;->m_selected_items:Ljava/util/HashSet;

    iget-object v4, p0, Lfeem/PageVideos;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 73
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lfeem/PageVideos;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 75
    invoke-virtual {p0}, Lfeem/PageVideos;->update_footer_panel_visibility()V

    goto :goto_0

    .line 81
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lfeem/PageVideos;->select_all:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lfeem/PageVideos;->select_all:Z

    return-void
.end method


# virtual methods
.method public getDefaultBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 181
    iget-object v0, p0, Lfeem/PageVideos;->_defaultBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 183
    :try_start_0
    invoke-virtual {p0}, Lfeem/PageVideos;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070078

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lfeem/PageVideos;->_defaultBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "defaultbitmap"

    const-string v2, ""

    .line 187
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    :cond_0
    :goto_0
    iget-object v0, p0, Lfeem/PageVideos;->_defaultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public loadBitmap(ILandroid/widget/ImageView;)V
    .locals 4

    .line 195
    invoke-static {p1, p2}, Lfeem/PageVideos;->cancelPotentialWork(ILandroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lfeem/PageVideos$BitmapWorkerTask;

    invoke-direct {v0, p0, p2}, Lfeem/PageVideos$BitmapWorkerTask;-><init>(Lfeem/PageVideos;Landroid/widget/ImageView;)V

    .line 198
    new-instance v1, Lfeem/PageVideos$AsyncDrawable;

    .line 199
    invoke-virtual {p0}, Lfeem/PageVideos;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lfeem/PageVideos$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lfeem/PageVideos$BitmapWorkerTask;)V

    .line 200
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 201
    new-array p2, p2, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-virtual {v0, p2}, Lfeem/PageVideos$BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 874
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 875
    new-instance p1, Lfeem/PageVideos$5;

    iget-object v0, p0, Lfeem/PageVideos;->mItems:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lfeem/PageVideos$5;-><init>(Lfeem/PageVideos;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lfeem/PageVideos;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 879
    iget-object p1, p0, Lfeem/PageVideos;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lfeem/PageVideos;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 880
    invoke-virtual {p0}, Lfeem/PageVideos;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 485
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 894
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "videos"

    const-string v0, "onConfigurationChanged"

    .line 895
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const-string p2, "videos"

    const-string v0, "loader created"

    .line 534
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x9

    if-ne p1, p2, :cond_0

    const/4 p1, 0x5

    .line 539
    new-array v3, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string p2, "date_added"

    aput-object p2, v3, p1

    const/4 p1, 0x1

    const-string p2, "_data"

    aput-object p2, v3, p1

    const/4 p1, 0x2

    const-string p2, "_size"

    aput-object p2, v3, p1

    const/4 p1, 0x3

    const-string p2, "_id"

    aput-object p2, v3, p1

    const/4 p1, 0x4

    const-string p2, "_display_name"

    aput-object p2, v3, p1

    .line 552
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 554
    new-instance p1, Landroidx/loader/content/CursorLoader;

    invoke-virtual {p0}, Lfeem/PageVideos;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date_added DESC"

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "photos"

    const-string v0, "onCreateView"

    .line 767
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    const v0, 0x7f0b0051

    .line 769
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080069

    .line 774
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 777
    new-instance v0, Lfeem/PageVideos$2;

    invoke-direct {v0, p0, p2}, Lfeem/PageVideos$2;-><init>(Lfeem/PageVideos;Landroid/widget/ImageView;)V

    const v1, 0x7f08002f

    .line 791
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 794
    new-instance v2, Lfeem/PageVideos$3;

    invoke-direct {v2, p0, p2}, Lfeem/PageVideos$3;-><init>(Lfeem/PageVideos;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 810
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080031

    .line 813
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 817
    new-instance v0, Lfeem/PageVideos$4;

    invoke-direct {v0, p0}, Lfeem/PageVideos$4;-><init>(Lfeem/PageVideos;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080094

    .line 862
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lfeem/PageVideos;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 864
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lfeem/PageVideos;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 865
    iget-object p3, p0, Lfeem/PageVideos;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 497
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const-string v0, "videos"

    const-string v1, "destroying view"

    .line 498
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const-string p1, "videos"

    if-nez p2, :cond_0

    const-string p2, "cursor was empty"

    .line 709
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "loader finished"

    .line 713
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance p1, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;

    invoke-direct {p1, p0}, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;-><init>(Lfeem/PageVideos;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lfeem/PageVideos;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    const-string p1, "videos"

    const-string v0, "onLoaderReset"

    .line 723
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 525
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 526
    invoke-static {}, Ljava/lang/System;->gc()V

    const-string v0, "videos"

    const-string v1, "resuming"

    .line 528
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 504
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string p1, "photos"

    const-string v0, "saving instace state"

    .line 505
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 886
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 888
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onViewCreated "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lfeem/PageVideos;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "videos"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method refresh()V
    .locals 3

    .line 511
    invoke-virtual {p0}, Lfeem/PageVideos;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 515
    :cond_0
    invoke-virtual {p0}, Lfeem/PageVideos;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 519
    :cond_1
    invoke-virtual {p0}, Lfeem/PageVideos;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 520
    invoke-virtual {p0}, Lfeem/PageVideos;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/loader/app/LoaderManager;->getLoader(I)Landroidx/loader/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->forceLoad()V

    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 492
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method update_footer_panel_visibility()V
    .locals 6

    .line 730
    iget-object v0, p0, Lfeem/PageVideos;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 735
    :goto_0
    invoke-virtual {p0}, Lfeem/PageVideos;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f08005b

    .line 736
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f0800ad

    .line 739
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Files: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lfeem/PageVideos;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 742
    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 743
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 744
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 745
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 749
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 750
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 751
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lfeem/PageVideos$1;

    invoke-direct {v1, p0, v3}, Lfeem/PageVideos$1;-><init>(Lfeem/PageVideos;Landroid/view/ViewGroup;)V

    .line 752
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_1
    return-void
.end method
