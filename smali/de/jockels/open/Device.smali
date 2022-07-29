.class public abstract Lde/jockels/open/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field protected mMountPoint:Ljava/lang/String;

.field protected mSize:Lde/jockels/open/Size;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCacheDir(Landroid/content/Context;)Ljava/io/File;
.end method

.method public final getFile()Ljava/io/File;
    .locals 2

    .line 14
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lde/jockels/open/Device;->mMountPoint:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract getFilesDir(Landroid/content/Context;)Ljava/io/File;
.end method

.method public abstract getFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
.end method

.method protected getFilesDirLow(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "/"

    .line 51
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 52
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/jockels/open/Device;->getMountPoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lde/jockels/open/Device;->isWriteable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v0
.end method

.method public final getMountPoint()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lde/jockels/open/Device;->mMountPoint:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPublicDirectory(Ljava/lang/String;)Ljava/io/File;
.end method

.method public final getSize()Lde/jockels/open/Size;
    .locals 1

    .line 18
    iget-object v0, p0, Lde/jockels/open/Device;->mSize:Lde/jockels/open/Size;

    return-object v0
.end method

.method public abstract getState()Ljava/lang/String;
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract isRemovable()Z
.end method

.method public abstract isWriteable()Z
.end method

.method protected updateState()V
    .locals 0

    return-void
.end method
