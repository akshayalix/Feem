.class public Lfeem/FeemFolderSelect;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FeemFolderSelect.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfeem/FeemFolderSelect$TaskLoader;,
        Lfeem/FeemFolderSelect$FolderAdapterGrid;,
        Lfeem/FeemFolderSelect$FolderViewHolder;,
        Lfeem/FeemFolderSelect$AsyncDrawable;,
        Lfeem/FeemFolderSelect$BitmapWorkerTask;,
        Lfeem/FeemFolderSelect$FeemFileOrFolder;,
        Lfeem/FeemFolderSelect$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lfeem/FeemFolderSelect$FeemFileOrFolder;",
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
            "Lfeem/FeemFolderSelect$FeemFileOrFolder;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 711
    new-instance v0, Lfeem/FeemFolderSelect$2;

    invoke-direct {v0}, Lfeem/FeemFolderSelect$2;-><init>()V

    sput-object v0, Lfeem/FeemFolderSelect;->filecomparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 676
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 61
    iput-object v0, p0, Lfeem/FeemFolderSelect;->currentFolder:Ljava/lang/String;

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lfeem/FeemFolderSelect;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 125
    iput-object v0, p0, Lfeem/FeemFolderSelect;->mMemoryCache:Landroidx/collection/LruCache;

    .line 304
    iput-object v0, p0, Lfeem/FeemFolderSelect;->_defaultBitmap:Landroid/graphics/Bitmap;

    .line 665
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfeem/FeemFolderSelect;->mItems:Ljava/util/ArrayList;

    .line 673
    iput-object v0, p0, Lfeem/FeemFolderSelect;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/ImageView;)Lfeem/FeemFolderSelect$BitmapWorkerTask;
    .locals 0

    .line 52
    invoke-static {p0}, Lfeem/FeemFolderSelect;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lfeem/FeemFolderSelect$BitmapWorkerTask;

    move-result-object p0

    return-object p0
.end method

.method public static cancelPotentialWork(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 2

    .line 287
    invoke-static {p1}, Lfeem/FeemFolderSelect;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lfeem/FeemFolderSelect$BitmapWorkerTask;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 290
    invoke-static {p1}, Lfeem/FeemFolderSelect$BitmapWorkerTask;->access$100(Lfeem/FeemFolderSelect$BitmapWorkerTask;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 294
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lfeem/FeemFolderSelect$BitmapWorkerTask;->cancel(Z)Z

    :cond_2
    return v0
.end method

.method private static getBitmapWorkerTask(Landroid/widget/ImageView;)Lfeem/FeemFolderSelect$BitmapWorkerTask;
    .locals 1

    if-eqz p0, :cond_0

    .line 277
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 278
    instance-of v0, p0, Lfeem/FeemFolderSelect$AsyncDrawable;

    if-eqz v0, :cond_0

    .line 279
    check-cast p0, Lfeem/FeemFolderSelect$AsyncDrawable;

    .line 280
    invoke-virtual {p0}, Lfeem/FeemFolderSelect$AsyncDrawable;->getBitmapWorkerTask()Lfeem/FeemFolderSelect$BitmapWorkerTask;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Lfeem/FeemFolderSelect;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 165
    :try_start_0
    iget-object v0, p0, Lfeem/FeemFolderSelect;->mMemoryCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "cache"

    const-string v0, ""

    .line 168
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 174
    iget-object v0, p0, Lfeem/FeemFolderSelect;->mMemoryCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getDefaultBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 306
    iget-object v0, p0, Lfeem/FeemFolderSelect;->_defaultBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 308
    :try_start_0
    invoke-virtual {p0}, Lfeem/FeemFolderSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070068

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lfeem/FeemFolderSelect;->_defaultBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "defaultbitmap"

    const-string v2, ""

    .line 312
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    :cond_0
    :goto_0
    iget-object v0, p0, Lfeem/FeemFolderSelect;->_defaultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4

    .line 320
    invoke-virtual {p0, p1}, Lfeem/FeemFolderSelect;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 326
    :cond_0
    invoke-static {p1, p2}, Lfeem/FeemFolderSelect;->cancelPotentialWork(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    new-instance v0, Lfeem/FeemFolderSelect$BitmapWorkerTask;

    invoke-direct {v0, p0, p2}, Lfeem/FeemFolderSelect$BitmapWorkerTask;-><init>(Lfeem/FeemFolderSelect;Landroid/widget/ImageView;)V

    .line 328
    new-instance v1, Lfeem/FeemFolderSelect$AsyncDrawable;

    .line 329
    invoke-virtual {p0}, Lfeem/FeemFolderSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lfeem/FeemFolderSelect$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lfeem/FeemFolderSelect$BitmapWorkerTask;)V

    .line 330
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 331
    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-virtual {v0, p2}, Lfeem/FeemFolderSelect$BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 978
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "files"

    const-string v0, "onConfigurationChanged"

    .line 979
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f0e0006

    .line 130
    invoke-virtual {p0, v0}, Lfeem/FeemFolderSelect;->setTheme(I)V

    const-string v0, "Feem Folder Select"

    .line 131
    invoke-virtual {p0, v0}, Lfeem/FeemFolderSelect;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 140
    div-int/lit8 p1, p1, 0x8

    .line 142
    new-instance v0, Lfeem/FeemFolderSelect$1;

    invoke-direct {v0, p0, p1}, Lfeem/FeemFolderSelect$1;-><init>(Lfeem/FeemFolderSelect;I)V

    iput-object v0, p0, Lfeem/FeemFolderSelect;->mMemoryCache:Landroidx/collection/LruCache;

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "folder"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "photos"

    const-string v0, "onCreateView"

    .line 155
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0b0050

    .line 157
    invoke-virtual {p0, p1}, Lfeem/FeemFolderSelect;->setContentView(I)V

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
            "Lfeem/FeemFolderSelect$FeemFileOrFolder;",
            ">;>;"
        }
    .end annotation

    const-string p2, "files"

    const-string v0, "loader created"

    .line 827
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 830
    iget-object p1, p0, Lfeem/FeemFolderSelect;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 832
    new-instance p1, Lfeem/FeemFolderSelect$TaskLoader;

    iget-object p2, p0, Lfeem/FeemFolderSelect;->currentFolder:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Lfeem/FeemFolderSelect$TaskLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lfeem/FeemFolderSelect;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lfeem/FeemFolderSelect$FeemFileOrFolder;",
            ">;>;",
            "Ljava/util/List<",
            "Lfeem/FeemFolderSelect$FeemFileOrFolder;",
            ">;)V"
        }
    .end annotation

    .line 842
    iget-object p1, p0, Lfeem/FeemFolderSelect;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    if-nez p2, :cond_0

    const-string p1, ""

    .line 844
    invoke-virtual {p0, p1}, Lfeem/FeemFolderSelect;->setCurrentFolder(Ljava/lang/String;)V

    return-void

    .line 847
    :cond_0
    iget-object p1, p0, Lfeem/FeemFolderSelect;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string p1, "files"

    const-string p2, "loader finished for real"

    .line 849
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object p1, p0, Lfeem/FeemFolderSelect;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

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
            "Lfeem/FeemFolderSelect$FeemFileOrFolder;",
            ">;>;)V"
        }
    .end annotation

    const-string p1, "files"

    const-string v0, "onLoaderReset"

    .line 858
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 900
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    const p1, 0x7f080077

    .line 901
    invoke-virtual {p0, p1}, Lfeem/FeemFolderSelect;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;

    .line 904
    new-instance v0, Lfeem/FeemFolderSelect$4;

    invoke-direct {v0, p0}, Lfeem/FeemFolderSelect$4;-><init>(Lfeem/FeemFolderSelect;)V

    invoke-virtual {p1, v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->setBreadcrumbClickListener(Lde/mdxdave/materialbreadcrumbsnavigation/BreadcrumbClickListener;)V

    const p1, 0x7f08002f

    .line 919
    invoke-virtual {p0, p1}, Lfeem/FeemFolderSelect;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 923
    new-instance v0, Lfeem/FeemFolderSelect$5;

    invoke-direct {v0, p0}, Lfeem/FeemFolderSelect$5;-><init>(Lfeem/FeemFolderSelect;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080030

    .line 932
    invoke-virtual {p0, p1}, Lfeem/FeemFolderSelect;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 936
    new-instance v0, Lfeem/FeemFolderSelect$6;

    invoke-direct {v0, p0}, Lfeem/FeemFolderSelect$6;-><init>(Lfeem/FeemFolderSelect;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 962
    new-instance p1, Lfeem/FeemFolderSelect$7;

    iget-object v0, p0, Lfeem/FeemFolderSelect;->mItems:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lfeem/FeemFolderSelect$7;-><init>(Lfeem/FeemFolderSelect;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lfeem/FeemFolderSelect;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const p1, 0x7f080094

    .line 966
    invoke-virtual {p0, p1}, Lfeem/FeemFolderSelect;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lfeem/FeemFolderSelect;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 968
    iget-object p1, p0, Lfeem/FeemFolderSelect;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lfeem/FeemFolderSelect;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 970
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 971
    iget-object v0, p0, Lfeem/FeemFolderSelect;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 972
    invoke-virtual {p0}, Lfeem/FeemFolderSelect;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 702
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 703
    invoke-static {}, Ljava/lang/System;->gc()V

    const-string v0, "files"

    const-string v1, "resuming"

    .line 705
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-virtual {p0}, Lfeem/FeemFolderSelect;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 707
    invoke-virtual {p0}, Lfeem/FeemFolderSelect;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->getLoader(I)Landroidx/loader/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->forceLoad()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 688
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string p1, "files"

    const-string v0, "saving instace state"

    .line 689
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method refresh()V
    .locals 3

    .line 696
    invoke-virtual {p0}, Lfeem/FeemFolderSelect;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 697
    invoke-virtual {p0}, Lfeem/FeemFolderSelect;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->getLoader(I)Landroidx/loader/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->forceLoad()V

    return-void
.end method

.method public setCurrentFolder(Ljava/lang/String;)V
    .locals 4

    .line 64
    iput-object p1, p0, Lfeem/FeemFolderSelect;->currentFolder:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lfeem/FeemFolderSelect;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 67
    invoke-virtual {p0}, Lfeem/FeemFolderSelect;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->getLoader(I)Landroidx/loader/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->forceLoad()V

    const v0, 0x7f080077

    .line 70
    invoke-virtual {p0, v0}, Lfeem/FeemFolderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;

    .line 73
    invoke-virtual {v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->removeAll()V

    .line 74
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    .line 92
    :goto_0
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 94
    new-instance v1, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;

    const-string v2, "Home"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->addRootItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;)V

    .line 97
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 98
    new-instance v2, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->addItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;)V

    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {p0}, Lfeem/FeemFolderSelect;->update_footer_panel_visibility()V

    return-void
.end method

.method update_footer_panel_visibility()V
    .locals 4

    .line 865
    iget-object v0, p0, Lfeem/FeemFolderSelect;->currentFolder:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const v2, 0x7f08005b

    .line 870
    invoke-virtual {p0, v2}, Lfeem/FeemFolderSelect;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 875
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 876
    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 877
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 878
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 879
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    .line 883
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 884
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 885
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lfeem/FeemFolderSelect$3;

    invoke-direct {v1, p0, v2}, Lfeem/FeemFolderSelect$3;-><init>(Lfeem/FeemFolderSelect;Landroid/view/ViewGroup;)V

    .line 886
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_2
    return-void
.end method
