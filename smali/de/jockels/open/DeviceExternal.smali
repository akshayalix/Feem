.class Lde/jockels/open/DeviceExternal;
.super Lde/jockels/open/Device;
.source "DeviceExternal.java"


# instance fields
.field private mRemovable:Z

.field private mState:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lde/jockels/open/Device;-><init>()V

    .line 19
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/jockels/open/DeviceExternal;->mMountPoint:Ljava/lang/String;

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 23
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/jockels/open/DeviceExternal;->setRemovable(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Lde/jockels/open/DeviceExternal;->setRemovable(Z)V

    .line 27
    :goto_0
    invoke-virtual {p0}, Lde/jockels/open/DeviceExternal;->updateState()V

    return-void
.end method


# virtual methods
.method public getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "/cache"

    .line 88
    invoke-virtual {p0, p1, v0}, Lde/jockels/open/DeviceExternal;->getFilesDirLow(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getFilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, p1, v0}, Lde/jockels/open/DeviceExternal;->getFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 78
    :cond_0
    invoke-virtual {p0, p1, p2}, Lde/jockels/open/DeviceExternal;->getFilesDirLow(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-boolean v0, p0, Lde/jockels/open/DeviceExternal;->mRemovable:Z

    if-eqz v0, :cond_0

    const-string v0, "SD-Card"

    goto :goto_0

    :cond_0
    const-string v0, "intern 2"

    :goto_0
    return-object v0
.end method

.method public getPublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 96
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "/"

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/jockels/open/DeviceExternal;->getMountPoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lde/jockels/open/DeviceExternal;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 57
    iget-object v0, p0, Lde/jockels/open/DeviceExternal;->mState:Ljava/lang/String;

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/jockels/open/DeviceExternal;->mState:Ljava/lang/String;

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRemovable()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lde/jockels/open/DeviceExternal;->mRemovable:Z

    return v0
.end method

.method public isWriteable()Z
    .locals 2

    .line 62
    iget-object v0, p0, Lde/jockels/open/DeviceExternal;->mState:Ljava/lang/String;

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final setRemovable(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lde/jockels/open/DeviceExternal;->mRemovable:Z

    return-void
.end method

.method protected updateState()V
    .locals 2

    .line 33
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/jockels/open/DeviceExternal;->mState:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lde/jockels/open/DeviceExternal;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lde/jockels/open/DeviceExternal;->mMountPoint:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-static {v0}, Lde/jockels/open/Size;->getSpace(Ljava/io/File;)Lde/jockels/open/Size;

    move-result-object v0

    iput-object v0, p0, Lde/jockels/open/DeviceExternal;->mSize:Lde/jockels/open/Size;

    :cond_0
    return-void
.end method
