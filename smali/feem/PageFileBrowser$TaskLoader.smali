.class Lfeem/PageFileBrowser$TaskLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "PageFileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageFileBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Lfeem/PageFileBrowser$FeemFileOrFolder;",
        ">;>;"
    }
.end annotation


# instance fields
.field folder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 804
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 805
    iput-object p2, p0, Lfeem/PageFileBrowser$TaskLoader;->folder:Ljava/lang/String;

    .line 807
    invoke-virtual {p0}, Lfeem/PageFileBrowser$TaskLoader;->startLoading()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 799
    invoke-virtual {p0}, Lfeem/PageFileBrowser$TaskLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfeem/PageFileBrowser$FeemFileOrFolder;",
            ">;"
        }
    .end annotation

    const-string v0, "files"

    const-string v1, "loadingInBackground"

    .line 812
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 815
    iget-object v1, p0, Lfeem/PageFileBrowser$TaskLoader;->folder:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    if-ne v1, v4, :cond_0

    .line 816
    invoke-static {}, Lde/jockels/open/Environment2;->rescanDevices()V

    const/4 v1, 0x1

    .line 818
    invoke-static {v2, v1, v1, v3}, Lde/jockels/open/Environment2;->getDevices(Ljava/lang/String;ZZZ)[Lde/jockels/open/Device;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 824
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 828
    new-instance v5, Lfeem/PageFileBrowser$FeemFileOrFolder;

    invoke-direct {v5}, Lfeem/PageFileBrowser$FeemFileOrFolder;-><init>()V

    .line 829
    sget-object v6, Lfeem/PageFileBrowser$Type;->Folder:Lfeem/PageFileBrowser$Type;

    iput-object v6, v5, Lfeem/PageFileBrowser$FeemFileOrFolder;->type:Lfeem/PageFileBrowser$Type;

    .line 830
    invoke-virtual {v4}, Lde/jockels/open/Device;->getMountPoint()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lfeem/PageFileBrowser$FeemFileOrFolder;->fileName:Ljava/lang/String;

    .line 831
    invoke-virtual {v4}, Lde/jockels/open/Device;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lfeem/PageFileBrowser$FeemFileOrFolder;->filePath:Ljava/lang/String;

    const-wide/16 v6, 0x0

    .line 832
    iput-wide v6, v5, Lfeem/PageFileBrowser$FeemFileOrFolder;->fileSize:J

    .line 833
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lde/jockels/open/Device;->getSize()Lde/jockels/open/Size;

    move-result-object v7

    iget-object v7, v7, Lde/jockels/open/Size;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lfeem/Feem;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lde/jockels/open/Device;->getSize()Lde/jockels/open/Size;

    move-result-object v4

    iget-object v4, v4, Lde/jockels/open/Size;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lfeem/Feem;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lfeem/PageFileBrowser$FeemFileOrFolder;->description:Ljava/lang/String;

    .line 834
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 843
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 845
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    .line 852
    :cond_1
    sget-object v2, Lfeem/PageFileBrowser;->filecomparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 854
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 857
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 863
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 864
    new-instance v5, Lfeem/PageFileBrowser$FeemFileOrFolder;

    invoke-direct {v5}, Lfeem/PageFileBrowser$FeemFileOrFolder;-><init>()V

    .line 865
    sget-object v6, Lfeem/PageFileBrowser$Type;->Folder:Lfeem/PageFileBrowser$Type;

    iput-object v6, v5, Lfeem/PageFileBrowser$FeemFileOrFolder;->type:Lfeem/PageFileBrowser$Type;

    const-string v6, "folder"

    .line 866
    iput-object v6, v5, Lfeem/PageFileBrowser$FeemFileOrFolder;->description:Ljava/lang/String;

    .line 867
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lfeem/PageFileBrowser$FeemFileOrFolder;->fileName:Ljava/lang/String;

    .line 868
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lfeem/PageFileBrowser$FeemFileOrFolder;->filePath:Ljava/lang/String;

    .line 869
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 872
    :cond_3
    new-instance v5, Lfeem/PageFileBrowser$FeemFileOrFolder;

    invoke-direct {v5}, Lfeem/PageFileBrowser$FeemFileOrFolder;-><init>()V

    .line 873
    sget-object v6, Lfeem/PageFileBrowser$Type;->File:Lfeem/PageFileBrowser$Type;

    iput-object v6, v5, Lfeem/PageFileBrowser$FeemFileOrFolder;->type:Lfeem/PageFileBrowser$Type;

    .line 874
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Lfeem/Feem;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lfeem/PageFileBrowser$FeemFileOrFolder;->description:Ljava/lang/String;

    .line 875
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lfeem/PageFileBrowser$FeemFileOrFolder;->fileName:Ljava/lang/String;

    .line 876
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lfeem/PageFileBrowser$FeemFileOrFolder;->filePath:Ljava/lang/String;

    .line 877
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method
