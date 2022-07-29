.class Lfeem/PageApps$TaskLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "PageApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Lfeem/PageApps$FeemApp;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 531
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 533
    invoke-virtual {p0}, Lfeem/PageApps$TaskLoader;->startLoading()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 527
    invoke-virtual {p0}, Lfeem/PageApps$TaskLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfeem/PageApps$FeemApp;",
            ">;"
        }
    .end annotation

    const-string v0, "apps"

    const-string v1, "loadingInBackground"

    .line 538
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 542
    invoke-virtual {p0}, Lfeem/PageApps$TaskLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfeem/InstalledApps;->getPackages(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 544
    new-instance v2, Lfeem/PageApps$TaskLoader$1;

    invoke-direct {v2, p0}, Lfeem/PageApps$TaskLoader$1;-><init>(Lfeem/PageApps$TaskLoader;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 552
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfeem/InstalledApps$PInfo;

    .line 553
    new-instance v3, Lfeem/PageApps$FeemApp;

    invoke-direct {v3}, Lfeem/PageApps$FeemApp;-><init>()V

    .line 554
    sget-object v4, Lfeem/PageApps$Type;->App:Lfeem/PageApps$Type;

    iput-object v4, v3, Lfeem/PageApps$FeemApp;->type:Lfeem/PageApps$Type;

    .line 555
    invoke-virtual {v2}, Lfeem/InstalledApps$PInfo;->getPname()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lfeem/PageApps$FeemApp;->packageId:Ljava/lang/String;

    .line 556
    invoke-virtual {v2}, Lfeem/InstalledApps$PInfo;->getApkLocation()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lfeem/PageApps$FeemApp;->appSource:Ljava/lang/String;

    .line 557
    invoke-virtual {v2}, Lfeem/InstalledApps$PInfo;->getAppname()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lfeem/PageApps$FeemApp;->fileName:Ljava/lang/String;

    .line 558
    invoke-virtual {v2}, Lfeem/InstalledApps$PInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lfeem/PageApps$FeemApp;->fileSize:Ljava/lang/String;

    .line 561
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
