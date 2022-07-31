.class Lde/jockels/open/DeviceDiv;
.super Lde/jockels/open/Device;
.source "DeviceDiv.java"


# instance fields
.field private mAvailable:Z

.field private mLabel:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mWriteable:Z


# direct methods
.method constructor <init>(Landroid/text/TextUtils$SimpleStringSplitter;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lde/jockels/open/Device;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/jockels/open/DeviceDiv;->mLabel:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lde/jockels/open/DeviceDiv;->mMountPoint:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Lde/jockels/open/DeviceDiv;->updateState()V

    return-void
.end method


# virtual methods
.method public getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "/cache"

    .line 64
    invoke-virtual {p0, p1, v0}, Lde/jockels/open/DeviceDiv;->getFilesDirLow(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getFilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "/files"

    .line 69
    invoke-virtual {p0, p1, v0}, Lde/jockels/open/DeviceDiv;->getFilesDirLow(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 74
    invoke-virtual {p0, p1, p2}, Lde/jockels/open/DeviceDiv;->getFilesDirLow(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lde/jockels/open/DeviceDiv;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lde/jockels/open/DeviceDiv;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "/"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/jockels/open/DeviceDiv;->getMountPoint()Ljava/lang/String;

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

    .line 85
    iget-boolean v0, p0, Lde/jockels/open/DeviceDiv;->mAvailable:Z

    if-eqz v0, :cond_1

    .line 86
    iget-boolean v0, p0, Lde/jockels/open/DeviceDiv;->mWriteable:Z

    if-eqz v0, :cond_0

    const-string v0, "mounted"

    goto :goto_0

    :cond_0
    const-string v0, "mounted_ro"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "removed"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lde/jockels/open/DeviceDiv;->mAvailable:Z

    return v0
.end method

.method public isRemovable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isWriteable()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lde/jockels/open/DeviceDiv;->mWriteable:Z

    return v0
.end method

.method protected final setName(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lde/jockels/open/DeviceDiv;->mName:Ljava/lang/String;

    return-void
.end method

.method protected updateState()V
    .locals 3

    .line 32
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lde/jockels/open/DeviceDiv;->mMountPoint:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/jockels/open/DeviceDiv;->setName(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lde/jockels/open/DeviceDiv;->mAvailable:Z

    if-eqz v1, :cond_1

    .line 35
    invoke-static {v0}, Lde/jockels/open/Size;->getSpace(Ljava/io/File;)Lde/jockels/open/Size;

    move-result-object v1

    iput-object v1, p0, Lde/jockels/open/DeviceDiv;->mSize:Lde/jockels/open/Size;

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    iput-boolean v0, p0, Lde/jockels/open/DeviceDiv;->mWriteable:Z

    .line 38
    iget-object v0, p0, Lde/jockels/open/DeviceDiv;->mMountPoint:Ljava/lang/String;

    sget-object v1, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    iget-object v1, v1, Lde/jockels/open/DeviceExternal;->mMountPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde/jockels/open/DeviceDiv;->mSize:Lde/jockels/open/Size;

    sget-object v1, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    iget-object v1, v1, Lde/jockels/open/DeviceExternal;->mSize:Lde/jockels/open/Size;

    invoke-virtual {v0, v1}, Lde/jockels/open/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    iput-boolean v2, p0, Lde/jockels/open/DeviceDiv;->mWriteable:Z

    iput-boolean v2, p0, Lde/jockels/open/DeviceDiv;->mAvailable:Z

    goto :goto_1

    .line 41
    :cond_1
    iput-boolean v2, p0, Lde/jockels/open/DeviceDiv;->mWriteable:Z

    :cond_2
    :goto_1
    return-void
.end method
