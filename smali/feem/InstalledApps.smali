.class public Lfeem/InstalledApps;
.super Ljava/lang/Object;
.source "InstalledApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfeem/InstalledApps$PInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstalledApps(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lfeem/InstalledApps$PInfo;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 39
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 40
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_0

    .line 41
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    .line 45
    invoke-static {v3}, Lfeem/InstalledApps;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 48
    :cond_1
    new-instance v4, Lfeem/InstalledApps$PInfo;

    invoke-direct {v4}, Lfeem/InstalledApps$PInfo;-><init>()V

    .line 51
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfeem/InstalledApps$PInfo;->setAppname(Ljava/lang/String;)V

    .line 52
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lfeem/InstalledApps$PInfo;->setPname(Ljava/lang/String;)V

    .line 53
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lfeem/InstalledApps$PInfo;->setVersionName(Ljava/lang/String;)V

    .line 54
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Lfeem/InstalledApps$PInfo;->setVersionCode(I)V

    .line 55
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lfeem/InstalledApps$PInfo;->setApkLocation(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 84
    :try_start_0
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 87
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    :goto_1
    invoke-virtual {v4, v5}, Lfeem/InstalledApps$PInfo;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getPackages(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lfeem/InstalledApps$PInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-static {p0, v0}, Lfeem/InstalledApps;->getInstalledApps(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    return-object p0
.end method

.method private static isSystemPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    .line 32
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
