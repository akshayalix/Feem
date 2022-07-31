.class public Lfeem/PagePhotos;
.super Landroidx/fragment/app/Fragment;
.source "PagePhotos.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;,
        Lfeem/PagePhotos$PictureOrDateAdapterGrid;,
        Lfeem/PagePhotos$PictureOrDateViewHolder;,
        Lfeem/PagePhotos$AsyncDrawable;,
        Lfeem/PagePhotos$BitmapWorkerTask;,
        Lfeem/PagePhotos$SpanSizeLookupPhotoGrid;,
        Lfeem/PagePhotos$FeemPhoto;,
        Lfeem/PagePhotos$Type;
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

.field feemGridSpanSizeLookup:Lfeem/PagePhotos$SpanSizeLookupPhotoGrid;

.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lfeem/PagePhotos$FeemPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private mMemoryCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Lfeem/RecyclerViewAutoFitGrid;

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

    .line 647
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lfeem/PagePhotos;->select_all:Z

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lfeem/PagePhotos;->mRecyclerView:Lfeem/RecyclerViewAutoFitGrid;

    .line 106
    iput-object v0, p0, Lfeem/PagePhotos;->mMemoryCache:Landroidx/collection/LruCache;

    .line 249
    iput-object v0, p0, Lfeem/PagePhotos;->_defaultBitmap:Landroid/graphics/Bitmap;

    .line 632
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lfeem/PagePhotos;->sourceUri:Landroid/net/Uri;

    .line 633
    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lfeem/PagePhotos;->thumbUri:Landroid/net/Uri;

    .line 635
    iput-object v0, p0, Lfeem/PagePhotos;->feemGridSpanSizeLookup:Lfeem/PagePhotos$SpanSizeLookupPhotoGrid;

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfeem/PagePhotos;->mItems:Ljava/util/ArrayList;

    .line 637
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfeem/PagePhotos;->m_selected_items:Ljava/util/HashSet;

    .line 638
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lfeem/PagePhotos;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/ImageView;)Lfeem/PagePhotos$BitmapWorkerTask;
    .locals 0

    .line 55
    invoke-static {p0}, Lfeem/PagePhotos;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lfeem/PagePhotos$BitmapWorkerTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lfeem/PagePhotos;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 55
    iget-object p0, p0, Lfeem/PagePhotos;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$300(Lfeem/PagePhotos;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lfeem/PagePhotos;->toggle_select_all()V

    return-void
.end method

.method static synthetic access$400(Lfeem/PagePhotos;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lfeem/PagePhotos;->select_all:Z

    return p0
.end method

.method static synthetic access$402(Lfeem/PagePhotos;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lfeem/PagePhotos;->select_all:Z

    return p1
.end method

.method public static cancelPotentialWork(ILandroid/widget/ImageView;)Z
    .locals 2

    .line 232
    invoke-static {p1}, Lfeem/PagePhotos;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lfeem/PagePhotos$BitmapWorkerTask;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 235
    invoke-static {p1}, Lfeem/PagePhotos$BitmapWorkerTask;->access$100(Lfeem/PagePhotos$BitmapWorkerTask;)I

    move-result v1

    if-eqz v1, :cond_1

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 239
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lfeem/PagePhotos$BitmapWorkerTask;->cancel(Z)Z

    :cond_2
    return v0
.end method

.method private static getBitmapWorkerTask(Landroid/widget/ImageView;)Lfeem/PagePhotos$BitmapWorkerTask;
    .locals 1

    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 223
    instance-of v0, p0, Lfeem/PagePhotos$AsyncDrawable;

    if-eqz v0, :cond_0

    .line 224
    check-cast p0, Lfeem/PagePhotos$AsyncDrawable;

    .line 225
    invoke-virtual {p0}, Lfeem/PagePhotos$AsyncDrawable;->getBitmapWorkerTask()Lfeem/PagePhotos$BitmapWorkerTask;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private toggle_select_all()V
    .locals 5

    .line 63
    iget-boolean v0, p0, Lfeem/PagePhotos;->select_all:Z

    const-string v1, "update_photos"

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lfeem/PagePhotos;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lfeem/PagePhotos;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 67
    invoke-virtual {p0}, Lfeem/PagePhotos;->update_footer_panel_visibility()V

    goto :goto_1

    .line 71
    :cond_0
    iget-object v0, p0, Lfeem/PagePhotos;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

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
    iget-object v3, p0, Lfeem/PagePhotos;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v3, p0, Lfeem/PagePhotos;->m_selected_items:Ljava/util/HashSet;

    iget-object v4, p0, Lfeem/PagePhotos;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 74
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lfeem/PagePhotos;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 76
    invoke-virtual {p0}, Lfeem/PagePhotos;->update_footer_panel_visibility()V

    goto :goto_0

    .line 82
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lfeem/PagePhotos;->select_all:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lfeem/PagePhotos;->select_all:Z

    return-void
.end method


# virtual methods
.method public addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Lfeem/PagePhotos;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 138
    :try_start_0
    iget-object v0, p0, Lfeem/PagePhotos;->mMemoryCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "cache"

    const-string v0, ""

    .line 141
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 147
    iget-object v0, p0, Lfeem/PagePhotos;->mMemoryCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getDefaultBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 251
    iget-object v0, p0, Lfeem/PagePhotos;->_defaultBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 253
    :try_start_0
    invoke-virtual {p0}, Lfeem/PagePhotos;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070076

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lfeem/PagePhotos;->_defaultBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "defaultbitmap"

    const-string v2, ""

    .line 257
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    :cond_0
    :goto_0
    iget-object v0, p0, Lfeem/PagePhotos;->_defaultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public loadBitmap(ILandroid/widget/ImageView;)V
    .locals 4

    .line 264
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-virtual {p0, v0}, Lfeem/PagePhotos;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 272
    :cond_0
    invoke-static {p1, p2}, Lfeem/PagePhotos;->cancelPotentialWork(ILandroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    new-instance v0, Lfeem/PagePhotos$BitmapWorkerTask;

    invoke-direct {v0, p0, p2}, Lfeem/PagePhotos$BitmapWorkerTask;-><init>(Lfeem/PagePhotos;Landroid/widget/ImageView;)V

    .line 275
    new-instance v1, Lfeem/PagePhotos$AsyncDrawable;

    .line 276
    invoke-virtual {p0}, Lfeem/PagePhotos;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lfeem/PagePhotos$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lfeem/PagePhotos$BitmapWorkerTask;)V

    .line 277
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 278
    new-array p2, p2, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-virtual {v0, p2}, Lfeem/PagePhotos$BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1089
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1090
    new-instance p1, Lfeem/PagePhotos$6;

    iget-object v0, p0, Lfeem/PagePhotos;->mItems:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lfeem/PagePhotos$6;-><init>(Lfeem/PagePhotos;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lfeem/PagePhotos;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1092
    iget-object p1, p0, Lfeem/PagePhotos;->mRecyclerView:Lfeem/RecyclerViewAutoFitGrid;

    iget-object v0, p0, Lfeem/PagePhotos;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Lfeem/RecyclerViewAutoFitGrid;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1093
    invoke-virtual {p0}, Lfeem/PagePhotos;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 658
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1107
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "photos"

    const-string v0, "onConfigurationChanged"

    .line 1109
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 111
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 118
    div-int/lit8 p1, p1, 0x8

    .line 120
    new-instance v0, Lfeem/PagePhotos$1;

    invoke-direct {v0, p0, p1}, Lfeem/PagePhotos$1;-><init>(Lfeem/PagePhotos;I)V

    iput-object v0, p0, Lfeem/PagePhotos;->mMemoryCache:Landroidx/collection/LruCache;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "photos"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string p2, "photos"

    const-string v0, "loader created"

    .line 713
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x3

    .line 718
    new-array v3, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v0, "datetaken"

    aput-object v0, v3, p1

    const-string p1, "_data"

    aput-object p1, v3, p2

    const/4 p1, 0x2

    const-string p2, "_id"

    aput-object p2, v3, p1

    .line 731
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 733
    new-instance p1, Landroidx/loader/content/CursorLoader;

    invoke-virtual {p0}, Lfeem/PagePhotos;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "datetaken DESC"

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "photos"

    const-string v0, "onCreateView"

    .line 962
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x7f0b004f

    const/4 v0, 0x0

    .line 965
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080069

    .line 967
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 970
    new-instance p3, Lfeem/PagePhotos$3;

    invoke-direct {p3, p0, p2}, Lfeem/PagePhotos$3;-><init>(Lfeem/PagePhotos;Landroid/widget/ImageView;)V

    .line 984
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f08002f

    .line 987
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 991
    new-instance v0, Lfeem/PagePhotos$4;

    invoke-direct {v0, p0, p2}, Lfeem/PagePhotos$4;-><init>(Lfeem/PagePhotos;Landroid/widget/ImageView;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080031

    .line 1006
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 1010
    new-instance p3, Lfeem/PagePhotos$5;

    invoke-direct {p3, p0}, Lfeem/PagePhotos$5;-><init>(Lfeem/PagePhotos;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080094

    .line 1074
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lfeem/RecyclerViewAutoFitGrid;

    iput-object p2, p0, Lfeem/PagePhotos;->mRecyclerView:Lfeem/RecyclerViewAutoFitGrid;

    .line 1077
    new-instance p2, Lfeem/PagePhotos$SpanSizeLookupPhotoGrid;

    iget-object p3, p0, Lfeem/PagePhotos;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lfeem/PagePhotos;->mRecyclerView:Lfeem/RecyclerViewAutoFitGrid;

    invoke-direct {p2, p0, p3, v0}, Lfeem/PagePhotos$SpanSizeLookupPhotoGrid;-><init>(Lfeem/PagePhotos;Ljava/util/ArrayList;Lfeem/RecyclerViewAutoFitGrid;)V

    iput-object p2, p0, Lfeem/PagePhotos;->feemGridSpanSizeLookup:Lfeem/PagePhotos$SpanSizeLookupPhotoGrid;

    .line 1079
    iget-object p2, p0, Lfeem/PagePhotos;->mRecyclerView:Lfeem/RecyclerViewAutoFitGrid;

    invoke-virtual {p2}, Lfeem/RecyclerViewAutoFitGrid;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p3, p0, Lfeem/PagePhotos;->feemGridSpanSizeLookup:Lfeem/PagePhotos$SpanSizeLookupPhotoGrid;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 670
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const-string v0, "photos"

    const-string v1, "destroying view"

    .line 671
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

    const-string p1, "photos"

    if-nez p2, :cond_0

    const-string p2, "cursor was empty"

    .line 897
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "loader finished"

    .line 900
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    new-instance p1, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;

    invoke-direct {p1, p0}, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;-><init>(Lfeem/PagePhotos;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lfeem/PagePhotos;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

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

    const-string p1, "photos"

    const-string v0, "onLoaderReset"

    .line 915
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 702
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 703
    invoke-static {}, Ljava/lang/System;->gc()V

    const-string v0, "photos"

    const-string v1, "resuming"

    .line 705
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 677
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string p1, "photos"

    const-string v0, "saving instace state"

    .line 679
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1098
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onViewCreated "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lfeem/PagePhotos;->mRecyclerView:Lfeem/RecyclerViewAutoFitGrid;

    invoke-virtual {p2}, Lfeem/RecyclerViewAutoFitGrid;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "photos"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 665
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method update_footer_panel_visibility()V
    .locals 6

    .line 924
    iget-object v0, p0, Lfeem/PagePhotos;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 929
    :goto_0
    invoke-virtual {p0}, Lfeem/PagePhotos;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f08005b

    .line 930
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f0800ad

    .line 933
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Files: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lfeem/PagePhotos;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 935
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 936
    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 937
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 938
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 939
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 943
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 944
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 945
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lfeem/PagePhotos$2;

    invoke-direct {v1, p0, v3}, Lfeem/PagePhotos$2;-><init>(Lfeem/PagePhotos;Landroid/view/ViewGroup;)V

    .line 946
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_1
    return-void
.end method
