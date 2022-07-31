.class public Lde/jockels/open/Size;
.super Landroid/util/Pair;
.source "Size.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(JJ)V
    .locals 0

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static getSpace(Ljava/io/File;)Lde/jockels/open/Size;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 20
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 22
    new-instance v0, Lde/jockels/open/Size;

    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lde/jockels/open/Size;-><init>(JJ)V

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance p0, Lde/jockels/open/Size;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long v1, v1, v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v5, v0

    mul-long v3, v3, v5

    invoke-direct {p0, v1, v2, v3, v4}, Lde/jockels/open/Size;-><init>(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 30
    :catch_0
    :cond_1
    new-instance p0, Lde/jockels/open/Size;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v0, v1}, Lde/jockels/open/Size;-><init>(JJ)V

    return-object p0
.end method


# virtual methods
.method public guessSize()J
    .locals 7

    .line 34
    iget-object v0, p0, Lde/jockels/open/Size;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 36
    :cond_0
    iget-object v0, p0, Lde/jockels/open/Size;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    const-wide/32 v4, 0x40000000

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    move-wide v2, v4

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lde/jockels/open/Size;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x1

    .line 39
    :goto_0
    iget-object v0, p0, Lde/jockels/open/Size;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    const-wide/16 v0, 0x2

    mul-long v2, v2, v0

    goto :goto_0

    :cond_3
    return-wide v2
.end method
