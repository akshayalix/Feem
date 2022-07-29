.class public Lfeem/InstalledApps$PInfo;
.super Ljava/lang/Object;
.source "InstalledApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/InstalledApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PInfo"
.end annotation


# instance fields
.field private apkLocation:Ljava/lang/String;

.field private appname:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private pname:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 99
    iput-object v0, p0, Lfeem/InstalledApps$PInfo;->appname:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lfeem/InstalledApps$PInfo;->pname:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lfeem/InstalledApps$PInfo;->versionName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lfeem/InstalledApps$PInfo;->versionCode:I

    return-void
.end method

.method private prettyPrint()V
    .locals 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lfeem/InstalledApps$PInfo;->getAppname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfeem/InstalledApps$PInfo;->getPname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfeem/InstalledApps$PInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfeem/InstalledApps$PInfo;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apps"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getApkLocation()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lfeem/InstalledApps$PInfo;->apkLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getAppname()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lfeem/InstalledApps$PInfo;->appname:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 143
    iget-object v0, p0, Lfeem/InstalledApps$PInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPname()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lfeem/InstalledApps$PInfo;->pname:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 135
    iget v0, p0, Lfeem/InstalledApps$PInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lfeem/InstalledApps$PInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setApkLocation(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lfeem/InstalledApps$PInfo;->apkLocation:Ljava/lang/String;

    return-void
.end method

.method public setAppname(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lfeem/InstalledApps$PInfo;->appname:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lfeem/InstalledApps$PInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPname(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lfeem/InstalledApps$PInfo;->pname:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .line 139
    iput p1, p0, Lfeem/InstalledApps$PInfo;->versionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lfeem/InstalledApps$PInfo;->versionName:Ljava/lang/String;

    return-void
.end method
