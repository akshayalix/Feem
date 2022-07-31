.class Lde/jockels/open/DeviceIntern;
.super Lde/jockels/open/Device;
.source "DeviceIntern.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Lde/jockels/open/Device;-><init>()V

    .line 12
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/jockels/open/DeviceIntern;->mMountPoint:Ljava/lang/String;

    .line 14
    invoke-static {v0}, Lde/jockels/open/Size;->getSpace(Ljava/io/File;)Lde/jockels/open/Size;

    move-result-object v0

    iput-object v0, p0, Lde/jockels/open/DeviceIntern;->mSize:Lde/jockels/open/Size;

    return-void
.end method


# virtual methods
.method public getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getFilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    if-nez p2, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lde/jockels/open/DeviceIntern;->getFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Phone Storage"

    return-object v0
.end method

.method public getPublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    const-string v0, "mounted"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRemovable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWriteable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
