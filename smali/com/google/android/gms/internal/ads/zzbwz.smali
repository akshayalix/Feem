.class public final Lcom/google/android/gms/internal/ads/zzbwz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# static fields
.field public static final zzfmx:Lcom/google/android/gms/internal/ads/zzbwz;


# instance fields
.field private final zzfmq:Lcom/google/android/gms/internal/ads/zzadj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzfmr:Lcom/google/android/gms/internal/ads/zzadi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzfms:Lcom/google/android/gms/internal/ads/zzadv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzfmt:Lcom/google/android/gms/internal/ads/zzadu;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzfmu:Lcom/google/android/gms/internal/ads/zzahh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzfmv:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzadp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfmw:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzado;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbxb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbxb;-><init>()V

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbxb;->zzajw()Lcom/google/android/gms/internal/ads/zzbwz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmx:Lcom/google/android/gms/internal/ads/zzbwz;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbxb;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbxb;->zzfmq:Lcom/google/android/gms/internal/ads/zzadj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmq:Lcom/google/android/gms/internal/ads/zzadj;

    .line 27
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbxb;->zzfmr:Lcom/google/android/gms/internal/ads/zzadi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmr:Lcom/google/android/gms/internal/ads/zzadi;

    .line 28
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbxb;->zzfms:Lcom/google/android/gms/internal/ads/zzadv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfms:Lcom/google/android/gms/internal/ads/zzadv;

    .line 29
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbxb;->zzfmv:Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmv:Landroidx/collection/SimpleArrayMap;

    .line 30
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbxb;->zzfmw:Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmw:Landroidx/collection/SimpleArrayMap;

    .line 31
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbxb;->zzfmt:Lcom/google/android/gms/internal/ads/zzadu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmt:Lcom/google/android/gms/internal/ads/zzadu;

    .line 32
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbxb;->zzfmu:Lcom/google/android/gms/internal/ads/zzahh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmu:Lcom/google/android/gms/internal/ads/zzahh;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbxb;Lcom/google/android/gms/internal/ads/zzbxc;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbwz;-><init>(Lcom/google/android/gms/internal/ads/zzbxb;)V

    return-void
.end method


# virtual methods
.method public final zzajp()Lcom/google/android/gms/internal/ads/zzadj;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmq:Lcom/google/android/gms/internal/ads/zzadj;

    return-object v0
.end method

.method public final zzajq()Lcom/google/android/gms/internal/ads/zzadi;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmr:Lcom/google/android/gms/internal/ads/zzadi;

    return-object v0
.end method

.method public final zzajr()Lcom/google/android/gms/internal/ads/zzadv;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfms:Lcom/google/android/gms/internal/ads/zzadv;

    return-object v0
.end method

.method public final zzajs()Lcom/google/android/gms/internal/ads/zzadu;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmt:Lcom/google/android/gms/internal/ads/zzadu;

    return-object v0
.end method

.method public final zzajt()Lcom/google/android/gms/internal/ads/zzahh;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmu:Lcom/google/android/gms/internal/ads/zzahh;

    return-object v0
.end method

.method public final zzaju()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfms:Lcom/google/android/gms/internal/ads/zzadv;

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmq:Lcom/google/android/gms/internal/ads/zzadj;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmr:Lcom/google/android/gms/internal/ads/zzadi;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmv:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x3

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmu:Lcom/google/android/gms/internal/ads/zzahh;

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public final zzajv()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmv:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 21
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmv:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmv:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final zzfz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzadp;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmv:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzadp;

    return-object p1
.end method

.method public final zzga(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzado;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzfmw:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzado;

    return-object p1
.end method
