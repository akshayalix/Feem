.class Lfeem/FeemFolderSelect$TaskLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "FeemFolderSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/FeemFolderSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Lfeem/FeemFolderSelect$FeemFileOrFolder;",
        ">;>;"
    }
.end annotation


# instance fields
.field folder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 739
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 740
    iput-object p2, p0, Lfeem/FeemFolderSelect$TaskLoader;->folder:Ljava/lang/String;

    .line 742
    invoke-virtual {p0}, Lfeem/FeemFolderSelect$TaskLoader;->startLoading()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 734
    invoke-virtual {p0}, Lfeem/FeemFolderSelect$TaskLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfeem/FeemFolderSelect$FeemFileOrFolder;",
            ">;"
        }
    .end annotation

    const-string v0, "files"

    const-string v1, "loadingInBackground"

    .line 747
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 750
    iget-object v1, p0, Lfeem/FeemFolderSelect$TaskLoader;->folder:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    if-ne v1, v4, :cond_0

    .line 751
    invoke-static {}, Lde/jockels/open/Environment2;->rescanDevices()V

    const/4 v1, 0x1

    .line 753
    invoke-static {v2, v1, v1, v3}, Lde/jockels/open/Environment2;->getDevices(Ljava/lang/String;ZZZ)[Lde/jockels/open/Device;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 759
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 763
    new-instance v5, Lfeem/FeemFolderSelect$FeemFileOrFolder;

    invoke-direct {v5}, Lfeem/FeemFolderSelect$FeemFileOrFolder;-><init>()V

    .line 764
    sget-object v6, Lfeem/FeemFolderSelect$Type;->Folder:Lfeem/FeemFolderSelect$Type;

    iput-object v6, v5, Lfeem/FeemFolderSelect$FeemFileOrFolder;->type:Lfeem/FeemFolderSelect$Type;

    .line 765
    invoke-virtual {v4}, Lde/jockels/open/Device;->getMountPoint()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lfeem/FeemFolderSelect$FeemFileOrFolder;->fileName:Ljava/lang/String;

    .line 766
    invoke-virtual {v4}, Lde/jockels/open/Device;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lfeem/FeemFolderSelect$FeemFileOrFolder;->filePath:Ljava/lang/String;

    const-wide/16 v6, 0x0

    .line 767
    iput-wide v6, v5, Lfeem/FeemFolderSelect$FeemFileOrFolder;->fileSize:J

    .line 768
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

    iput-object v4, v5, Lfeem/FeemFolderSelect$FeemFileOrFolder;->description:Ljava/lang/String;

    .line 769
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 778
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    .line 787
    :cond_1
    sget-object v2, Lfeem/FeemFolderSelect;->filecomparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 789
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 792
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 798
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 799
    new-instance v5, Lfeem/FeemFolderSelect$FeemFileOrFolder;

    invoke-direct {v5}, Lfeem/FeemFolderSelect$FeemFileOrFolder;-><init>()V

    .line 800
    sget-object v6, Lfeem/FeemFolderSelect$Type;->Folder:Lfeem/FeemFolderSelect$Type;

    iput-object v6, v5, Lfeem/FeemFolderSelect$FeemFileOrFolder;->type:Lfeem/FeemFolderSelect$Type;

    const-string v6, "folder"

    .line 801
    iput-object v6, v5, Lfeem/FeemFolderSelect$FeemFileOrFolder;->description:Ljava/lang/String;

    .line 802
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lfeem/FeemFolderSelect$FeemFileOrFolder;->fileName:Ljava/lang/String;

    .line 803
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lfeem/FeemFolderSelect$FeemFileOrFolder;->filePath:Ljava/lang/String;

    .line 804
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 807
    :cond_3
    new-instance v5, Lfeem/FeemFolderSelect$FeemFileOrFolder;

    invoke-direct {v5}, Lfeem/FeemFolderSelect$FeemFileOrFolder;-><init>()V

    .line 808
    sget-object v6, Lfeem/FeemFolderSelect$Type;->File:Lfeem/FeemFolderSelect$Type;

    iput-object v6, v5, Lfeem/FeemFolderSelect$FeemFileOrFolder;->type:Lfeem/FeemFolderSelect$Type;

    .line 809
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Lfeem/Feem;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lfeem/FeemFolderSelect$FeemFileOrFolder;->description:Ljava/lang/String;

    .line 810
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lfeem/FeemFolderSelect$FeemFileOrFolder;->fileName:Ljava/lang/String;

    .line 811
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lfeem/FeemFolderSelect$FeemFileOrFolder;->filePath:Ljava/lang/String;

    .line 812
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method
