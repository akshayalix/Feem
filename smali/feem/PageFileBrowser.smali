.class public Lfeem/PageFileBrowser;
.super Landroidx/fragment/app/Fragment;
.source "PageFileBrowser.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfeem/PageFileBrowser$TaskLoader;,
        Lfeem/PageFileBrowser$FolderAdapterGrid;,
        Lfeem/PageFileBrowser$FolderViewHolder;,
        Lfeem/PageFileBrowser$AsyncDrawable;,
        Lfeem/PageFileBrowser$BitmapWorkerTask;,
        Lfeem/PageFileBrowser$FeemFileOrFolder;,
        Lfeem/PageFileBrowser$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lfeem/PageFileBrowser$FeemFileOrFolder;",
        ">;>;"
    }
.end annotation


# static fields
.field static filecomparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _defaultBitmap:Landroid/graphics/Bitmap;

.field currentFolder:Ljava/lang/String;

.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lfeem/PageFileBrowser$FeemFileOrFolder;",
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
.method static constructor <clinit>()V
    .locals 1

    .line 776
    new-instance v0, Lfeem/PageFileBrowser$2;

    invoke-direct {v0}, Lfeem/PageFileBrowser$2;-><init>()V

    sput-object v0, Lfeem/PageFileBrowser;->filecomparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 715
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lfeem/PageFileBrowser;->select_all:Z

    const-string v0, ""

    .line 98
    iput-object v0, p0, Lfeem/PageFileBrowser;->currentFolder:Ljava/lang/String;

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lfeem/PageFileBrowser;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 171
    iput-object v0, p0, Lfeem/PageFileBrowser;->mMemoryCache:Landroidx/collection/LruCache;

    .line 342
    iput-object v0, p0, Lfeem/PageFileBrowser;->_defaultBitmap:Landroid/graphics/Bitmap;

    .line 704
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfeem/PageFileBrowser;->mItems:Ljava/util/ArrayList;

    .line 705
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lfeem/PageFileBrowser;->m_selected_items:Ljava/util/HashSet;

    .line 706
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lfeem/PageFileBrowser;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    .line 712
    iput-object v0, p0, Lfeem/PageFileBrowser;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/ImageView;)Lfeem/PageFileBrowser$BitmapWorkerTask;
    .locals 0

    .line 60
    invoke-static {p0}, Lfeem/PageFileBrowser;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lfeem/PageFileBrowser$BitmapWorkerTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lfeem/PageFileBrowser;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lfeem/PageFileBrowser;->toggle_select_all()V

    return-void
.end method

.method static synthetic access$300(Lfeem/PageFileBrowser;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lfeem/PageFileBrowser;->select_all:Z

    return p0
.end method

.method public static cancelPotentialWork(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 2

    .line 325
    invoke-static {p1}, Lfeem/PageFileBrowser;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lfeem/PageFileBrowser$BitmapWorkerTask;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 328
    invoke-static {p1}, Lfeem/PageFileBrowser$BitmapWorkerTask;->access$100(Lfeem/PageFileBrowser$BitmapWorkerTask;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 332
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lfeem/PageFileBrowser$BitmapWorkerTask;->cancel(Z)Z

    :cond_2
    return v0
.end method

.method private static getBitmapWorkerTask(Landroid/widget/ImageView;)Lfeem/PageFileBrowser$BitmapWorkerTask;
    .locals 1

    if-eqz p0, :cond_0

    .line 315
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 316
    instance-of v0, p0, Lfeem/PageFileBrowser$AsyncDrawable;

    if-eqz v0, :cond_0

    .line 317
    check-cast p0, Lfeem/PageFileBrowser$AsyncDrawable;

    .line 318
    invoke-virtual {p0}, Lfeem/PageFileBrowser$AsyncDrawable;->getBitmapWorkerTask()Lfeem/PageFileBrowser$BitmapWorkerTask;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private toggle_select_all()V
    .locals 4

    .line 67
    iget-boolean v0, p0, Lfeem/PageFileBrowser;->select_all:Z

    const-string v1, "update_files"

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lfeem/PageFileBrowser;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 71
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->update_footer_panel_visibility()V

    goto :goto_1

    .line 75
    :cond_0
    iget-object v0, p0, Lfeem/PageFileBrowser;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfeem/PageFileBrowser$FeemFileOrFolder;

    .line 76
    iget-object v3, p0, Lfeem/PageFileBrowser;->m_selected_items:Ljava/util/HashSet;

    iget-object v2, v2, Lfeem/PageFileBrowser$FeemFileOrFolder;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 82
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->update_footer_panel_visibility()V

    .line 87
    :goto_1
    iget-boolean v0, p0, Lfeem/PageFileBrowser;->select_all:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lfeem/PageFileBrowser;->select_all:Z

    return-void
.end method


# virtual methods
.method public addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 201
    invoke-virtual {p0, p1}, Lfeem/PageFileBrowser;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 203
    :try_start_0
    iget-object v0, p0, Lfeem/PageFileBrowser;->mMemoryCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "cache"

    const-string v0, ""

    .line 206
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 212
    iget-object v0, p0, Lfeem/PageFileBrowser;->mMemoryCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getDefaultBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 344
    iget-object v0, p0, Lfeem/PageFileBrowser;->_defaultBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 346
    :try_start_0
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070068

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lfeem/PageFileBrowser;->_defaultBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "defaultbitmap"

    const-string v2, ""

    .line 350
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    :cond_0
    :goto_0
    iget-object v0, p0, Lfeem/PageFileBrowser;->_defaultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4

    .line 358
    invoke-virtual {p0, p1}, Lfeem/PageFileBrowser;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 364
    :cond_0
    invoke-static {p1, p2}, Lfeem/PageFileBrowser;->cancelPotentialWork(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    new-instance v0, Lfeem/PageFileBrowser$BitmapWorkerTask;

    invoke-direct {v0, p0, p2}, Lfeem/PageFileBrowser$BitmapWorkerTask;-><init>(Lfeem/PageFileBrowser;Landroid/widget/ImageView;)V

    .line 366
    new-instance v1, Lfeem/PageFileBrowser$AsyncDrawable;

    .line 367
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lfeem/PageFileBrowser$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lfeem/PageFileBrowser$BitmapWorkerTask;)V

    .line 368
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 369
    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-virtual {v0, p2}, Lfeem/PageFileBrowser$BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1063
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1064
    new-instance p1, Lfeem/PageFileBrowser$8;

    iget-object v0, p0, Lfeem/PageFileBrowser;->mItems:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lfeem/PageFileBrowser$8;-><init>(Lfeem/PageFileBrowser;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lfeem/PageFileBrowser;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1067
    iget-object p1, p0, Lfeem/PageFileBrowser;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lfeem/PageFileBrowser;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1068
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 726
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1081
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "files"

    const-string v0, "onConfigurationChanged"

    .line 1082
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 176
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 183
    div-int/lit8 p1, p1, 0x8

    .line 185
    new-instance v0, Lfeem/PageFileBrowser$1;

    invoke-direct {v0, p0, p1}, Lfeem/PageFileBrowser$1;-><init>(Lfeem/PageFileBrowser;I)V

    iput-object v0, p0, Lfeem/PageFileBrowser;->mMemoryCache:Landroidx/collection/LruCache;

    .line 193
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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lfeem/PageFileBrowser$FeemFileOrFolder;",
            ">;>;"
        }
    .end annotation

    const-string p2, "files"

    const-string v0, "loader created"

    .line 892
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 895
    iget-object p1, p0, Lfeem/PageFileBrowser;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 897
    new-instance p1, Lfeem/PageFileBrowser$TaskLoader;

    invoke-virtual {p0}, Lfeem/PageFileBrowser;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lfeem/PageFileBrowser;->currentFolder:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lfeem/PageFileBrowser$TaskLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "photos"

    const-string v0, "onCreateView"

    .line 965
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    const v0, 0x7f0b004e

    .line 967
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080077

    .line 969
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;

    .line 972
    new-instance v0, Lfeem/PageFileBrowser$4;

    invoke-direct {v0, p0}, Lfeem/PageFileBrowser$4;-><init>(Lfeem/PageFileBrowser;)V

    invoke-virtual {p2, v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->setBreadcrumbClickListener(Lde/mdxdave/materialbreadcrumbsnavigation/BreadcrumbClickListener;)V

    const p2, 0x7f080069

    .line 985
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 988
    new-instance v0, Lfeem/PageFileBrowser$5;

    invoke-direct {v0, p0, p2}, Lfeem/PageFileBrowser$5;-><init>(Lfeem/PageFileBrowser;Landroid/widget/ImageView;)V

    .line 1002
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f08002f

    .line 1005
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 1009
    new-instance v0, Lfeem/PageFileBrowser$6;

    invoke-direct {v0, p0}, Lfeem/PageFileBrowser$6;-><init>(Lfeem/PageFileBrowser;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080031

    .line 1019
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 1023
    new-instance v0, Lfeem/PageFileBrowser$7;

    invoke-direct {v0, p0}, Lfeem/PageFileBrowser$7;-><init>(Lfeem/PageFileBrowser;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080094

    .line 1052
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lfeem/PageFileBrowser;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1054
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lfeem/PageFileBrowser;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 1055
    iget-object p3, p0, Lfeem/PageFileBrowser;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 738
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const-string v0, "files"

    const-string v1, "destroying view"

    .line 739
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lfeem/PageFileBrowser;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lfeem/PageFileBrowser$FeemFileOrFolder;",
            ">;>;",
            "Ljava/util/List<",
            "Lfeem/PageFileBrowser$FeemFileOrFolder;",
            ">;)V"
        }
    .end annotation

    .line 905
    iget-object p1, p0, Lfeem/PageFileBrowser;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    if-nez p2, :cond_0

    const-string p1, ""

    .line 907
    invoke-virtual {p0, p1}, Lfeem/PageFileBrowser;->setCurrentFolder(Ljava/lang/String;)V

    return-void

    .line 910
    :cond_0
    iget-object p1, p0, Lfeem/PageFileBrowser;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string p1, "files"

    const-string p2, "loader finished for real"

    .line 912
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object p1, p0, Lfeem/PageFileBrowser;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

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
            "Lfeem/PageFileBrowser$FeemFileOrFolder;",
            ">;>;)V"
        }
    .end annotation

    const-string p1, "files"

    const-string v0, "onLoaderReset"

    .line 921
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 767
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 768
    invoke-static {}, Ljava/lang/System;->gc()V

    const-string v0, "files"

    const-string v1, "resuming"

    .line 770
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 772
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->getLoader(I)Landroidx/loader/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->forceLoad()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 745
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string p1, "files"

    const-string v0, "saving instace state"

    .line 746
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1073
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1075
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onViewCreated "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lfeem/PageFileBrowser;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "files"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method refresh()V
    .locals 3

    .line 753
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 757
    :cond_0
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 761
    :cond_1
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 762
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/loader/app/LoaderManager;->getLoader(I)Landroidx/loader/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->forceLoad()V

    return-void
.end method

.method public setCurrentFolder(Ljava/lang/String;)V
    .locals 4

    .line 101
    iput-object p1, p0, Lfeem/PageFileBrowser;->currentFolder:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 112
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/loader/app/LoaderManager;->getLoader(I)Landroidx/loader/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->forceLoad()V

    .line 114
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080077

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;

    .line 119
    invoke-virtual {v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->removeAll()V

    .line 120
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2

    .line 138
    :goto_0
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 140
    new-instance v1, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;

    const-string v2, "Home"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->addRootItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;)V

    .line 143
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 144
    new-instance v2, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->addItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;)V

    goto :goto_1

    .line 148
    :cond_4
    iget-object p1, p0, Lfeem/PageFileBrowser;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 149
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->update_footer_panel_visibility()V

    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 733
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method update_footer_panel_visibility()V
    .locals 6

    .line 928
    iget-object v0, p0, Lfeem/PageFileBrowser;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 933
    :goto_0
    invoke-virtual {p0}, Lfeem/PageFileBrowser;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f08005b

    .line 934
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f0800ad

    .line 937
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Files: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lfeem/PageFileBrowser;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 939
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 940
    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 941
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 942
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 943
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 947
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 948
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 949
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lfeem/PageFileBrowser$3;

    invoke-direct {v1, p0, v3}, Lfeem/PageFileBrowser$3;-><init>(Lfeem/PageFileBrowser;Landroid/view/ViewGroup;)V

    .line 950
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_1
    return-void
.end method
