.class public final Lcom/google/android/gms/internal/ads/zzafs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzafn<",
        "Lcom/google/android/gms/internal/ads/zzbdi;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzcxr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzcxo:Lcom/google/android/gms/ads/internal/zzc;

.field private final zzcxp:Lcom/google/android/gms/internal/ads/zzaoe;

.field private final zzcxq:Lcom/google/android/gms/internal/ads/zzaon;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x7

    .line 28
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "resize"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "playVideo"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "storePicture"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "createCalendarEvent"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string v7, "setOrientationProperties"

    aput-object v7, v1, v6

    const/4 v7, 0x5

    const-string v8, "closeResizedAd"

    aput-object v8, v1, v7

    const/4 v8, 0x6

    const-string v9, "unload"

    aput-object v9, v1, v8

    new-array v9, v0, [Ljava/lang/Integer;

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v3

    .line 31
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v4

    .line 32
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v5

    .line 33
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v6

    .line 34
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v7

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v8

    .line 36
    invoke-static {v1, v9}, Lcom/google/android/gms/common/util/CollectionUtils;->mapOfKeyValueArrays([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzafs;->zzcxr:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzc;Lcom/google/android/gms/internal/ads/zzaoe;Lcom/google/android/gms/internal/ads/zzaon;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafs;->zzcxo:Lcom/google/android/gms/ads/internal/zzc;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzafs;->zzcxp:Lcom/google/android/gms/internal/ads/zzaoe;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzafs;->zzcxq:Lcom/google/android/gms/internal/ads/zzaon;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 5

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdi;

    const-string v0, "a"

    .line 7
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzafs;->zzcxr:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzafs;->zzcxo:Lcom/google/android/gms/ads/internal/zzc;

    if-eqz v3, :cond_0

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/zzc;->zzjq()Z

    move-result v3

    if-nez v3, :cond_0

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafs;->zzcxo:Lcom/google/android/gms/ads/internal/zzc;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzc;->zzbq(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    if-eq v0, v2, :cond_3

    const/4 p1, 0x6

    if-eq v0, p1, :cond_2

    if-eq v0, v1, :cond_1

    const-string p1, "Unknown MRAID command called."

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzavs;->zzey(Ljava/lang/String;)V

    return-void

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafs;->zzcxq:Lcom/google/android/gms/internal/ads/zzaon;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaon;->zztj()V

    return-void

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafs;->zzcxp:Lcom/google/android/gms/internal/ads/zzaoe;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzaoe;->zzac(Z)V

    return-void

    .line 20
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaog;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaog;-><init>(Lcom/google/android/gms/internal/ads/zzbdi;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaog;->execute()V

    return-void

    .line 16
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanz;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzanz;-><init>(Lcom/google/android/gms/internal/ads/zzbdi;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanz;->execute()V

    return-void

    .line 18
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaof;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaof;-><init>(Lcom/google/android/gms/internal/ads/zzbdi;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaof;->execute()V

    return-void

    .line 14
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafs;->zzcxp:Lcom/google/android/gms/internal/ads/zzaoe;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaoe;->zzg(Ljava/util/Map;)V

    return-void
.end method
