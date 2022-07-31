.class Lfeem/FeemExplorer$FeemPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "FeemExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/FeemExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeemPagerAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-nez p1, :cond_0

    .line 74
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 75
    new-instance p1, Lfeem/PagePhotos;

    invoke-direct {p1}, Lfeem/PagePhotos;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 79
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 80
    new-instance p1, Lfeem/PageVideos;

    invoke-direct {p1}, Lfeem/PageVideos;-><init>()V

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 84
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 85
    new-instance p1, Lfeem/PageAudio;

    invoke-direct {p1}, Lfeem/PageAudio;-><init>()V

    return-object p1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 89
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 90
    new-instance p1, Lfeem/PageApps;

    invoke-direct {p1}, Lfeem/PageApps;-><init>()V

    return-object p1

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 93
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 94
    new-instance p1, Lfeem/PageFileBrowser;

    invoke-direct {p1}, Lfeem/PageFileBrowser;-><init>()V

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "Photos"

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "Videos"

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string p1, "Audio"

    return-object p1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const-string p1, "Apps"

    return-object p1

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const-string p1, "Files"

    return-object p1

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    const-string p1, "Recent Files"

    return-object p1

    .line 128
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tab "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    const-string p1, "explorer"

    const-string p2, "restoring state"

    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
