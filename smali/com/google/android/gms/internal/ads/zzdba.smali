.class final Lcom/google/android/gms/internal/ads/zzdba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbb;


# instance fields
.field private final zzgnt:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/android/gms/internal/ads/zzdbl;",
            "Lcom/google/android/gms/internal/ads/zzday;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzgnu:Lcom/google/android/gms/internal/ads/zzdbe;

.field private zzgnv:Lcom/google/android/gms/internal/ads/zzdbc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdbe;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzdbe;->zzgoj:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnt:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnu:Lcom/google/android/gms/internal/ads/zzdbe;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdbc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdbc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnv:Lcom/google/android/gms/internal/ads/zzdbc;

    return-void
.end method

.method private final dumpToLog()V
    .locals 7

    .line 96
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdbe;->zzapl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnu:Lcom/google/android/gms/internal/ads/zzdbe;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdbe;->zzgoh:Lcom/google/android/gms/internal/ads/zzdbh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " PoolCollection"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnv:Lcom/google/android/gms/internal/ads/zzdbc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdbc;->zzapk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnt:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    add-int/lit8 v3, v3, 0x1

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". "

    .line 105
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    .line 107
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzdbl;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzdbl;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "    "

    .line 109
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    .line 110
    :goto_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzday;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzday;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    const-string v6, "[O]"

    .line 111
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 113
    :cond_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzday;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzday;->size()I

    move-result v5

    :goto_2
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnu:Lcom/google/android/gms/internal/ads/zzdbe;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzdbe;->zzgoj:I

    if-ge v5, v6, :cond_1

    const-string v6, "[ ]"

    .line 114
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const-string v5, "\n"

    .line 116
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzday;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzday;->zzapa()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 120
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnu:Lcom/google/android/gms/internal/ads/zzdbe;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdbe;->zzgoi:I

    if-ge v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".\n"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 124
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavs;->zzea(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdbi;Lcom/google/android/gms/internal/ads/zzdbo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdbi<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzdbo;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 84
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsy$zza;->zzmz()Lcom/google/android/gms/internal/ads/zzsy$zza$zzb;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsy$zza$zza;->zzmx()Lcom/google/android/gms/internal/ads/zzsy$zza$zza$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzsy$zza$zzc;->zzbul:Lcom/google/android/gms/internal/ads/zzsy$zza$zzc;

    .line 86
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzsy$zza$zza$zza;->zzb(Lcom/google/android/gms/internal/ads/zzsy$zza$zzc;)Lcom/google/android/gms/internal/ads/zzsy$zza$zza$zza;

    move-result-object v1

    .line 87
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsy$zza$zzd;->zznb()Lcom/google/android/gms/internal/ads/zzsy$zza$zzd$zza;

    move-result-object v2

    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/zzdbo;->zzgpi:Z

    .line 88
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzsy$zza$zzd$zza;->zzt(Z)Lcom/google/android/gms/internal/ads/zzsy$zza$zzd$zza;

    move-result-object v2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzdbo;->zzgpj:I

    .line 89
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzsy$zza$zzd$zza;->zzbu(I)Lcom/google/android/gms/internal/ads/zzsy$zza$zzd$zza;

    move-result-object p2

    .line 90
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzsy$zza$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzsy$zza$zzd$zza;)Lcom/google/android/gms/internal/ads/zzsy$zza$zza$zza;

    move-result-object p2

    .line 91
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzsy$zza$zzb;->zza(Lcom/google/android/gms/internal/ads/zzsy$zza$zza$zza;)Lcom/google/android/gms/internal/ads/zzsy$zza$zzb;

    move-result-object p2

    .line 92
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzbaf()Lcom/google/android/gms/internal/ads/zzdte;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzdrt;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzsy$zza;

    .line 93
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdbi;->zzgpc:Lcom/google/android/gms/internal/ads/zzbmz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbmz;->zzahb()Lcom/google/android/gms/internal/ads/zzbrf;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbrf;->zza(Lcom/google/android/gms/internal/ads/zzsy$zza;)V

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdba;->dumpToLog()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzdbl;)Lcom/google/android/gms/internal/ads/zzdbi;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdbl;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdbi<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnt:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzday;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzday;->zzaox()Lcom/google/android/gms/internal/ads/zzdbi;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnv:Lcom/google/android/gms/internal/ads/zzdbc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdbc;->zzapf()V

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzday;->zzapb()Lcom/google/android/gms/internal/ads/zzdbo;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdba;->zza(Lcom/google/android/gms/internal/ads/zzdbi;Lcom/google/android/gms/internal/ads/zzdbo;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnv:Lcom/google/android/gms/internal/ads/zzdbc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbc;->zzape()V

    .line 14
    invoke-direct {p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzdba;->zza(Lcom/google/android/gms/internal/ads/zzdbi;Lcom/google/android/gms/internal/ads/zzdbo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzug;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzuo;)Lcom/google/android/gms/internal/ads/zzdbl;
    .locals 7

    .line 80
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnu:Lcom/google/android/gms/internal/ads/zzdbe;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdbe;->zzup:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqs;->zzug()Lcom/google/android/gms/internal/ads/zzaqt;

    move-result-object v0

    .line 81
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaqt;->zzdmo:I

    .line 82
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnu:Lcom/google/android/gms/internal/ads/zzdbe;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzdbe;->zzgol:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdbk;-><init>(Lcom/google/android/gms/internal/ads/zzug;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzuo;)V

    return-object v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzdbl;Lcom/google/android/gms/internal/ads/zzdbi;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdbl;",
            "Lcom/google/android/gms/internal/ads/zzdbi<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnt:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzday;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzdbi;->zzgpe:J

    if-nez v0, :cond_b

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzday;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnu:Lcom/google/android/gms/internal/ads/zzdbe;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdbe;->zzgoj:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnu:Lcom/google/android/gms/internal/ads/zzdbe;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzdbe;->zzgok:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzday;-><init>(II)V

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnt:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnu:Lcom/google/android/gms/internal/ads/zzdbe;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzdbe;->zzgoi:I

    if-ne v1, v2, :cond_a

    .line 23
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdbd;->zzgoc:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnu:Lcom/google/android/gms/internal/ads/zzdbe;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzdbe;->zzgon:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    const-wide v4, 0x7fffffffffffffffL

    const/4 v2, 0x0

    if-eq v1, v3, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const v1, 0x7fffffff

    .line 49
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnt:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzday;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzday;->zzaoz()I

    move-result v5

    if-ge v5, v1, :cond_1

    .line 51
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzday;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzday;->zzaoz()I

    move-result v1

    .line 52
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdbl;

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_9

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnt:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 38
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnt:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzday;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzday;->zzaoy()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gez v8, :cond_4

    .line 40
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzday;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzday;->zzaoy()J

    move-result-wide v4

    .line 41
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdbl;

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_9

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnt:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 27
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnt:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzday;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzday;->getCreationTimeMillis()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gez v8, :cond_7

    .line 29
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzday;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzday;->getCreationTimeMillis()J

    move-result-wide v4

    .line 30
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdbl;

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_9

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnt:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnv:Lcom/google/android/gms/internal/ads/zzdbc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdbc;->zzaph()V

    .line 57
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnt:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnv:Lcom/google/android/gms/internal/ads/zzdbc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbc;->zzapg()V

    .line 59
    :cond_b
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzday;->zzb(Lcom/google/android/gms/internal/ads/zzdbi;)Z

    move-result p1

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnv:Lcom/google/android/gms/internal/ads/zzdbc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdbc;->zzapi()V

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnv:Lcom/google/android/gms/internal/ads/zzdbc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdbc;->zzapj()Lcom/google/android/gms/internal/ads/zzdbf;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzday;->zzapb()Lcom/google/android/gms/internal/ads/zzdbo;

    move-result-object v0

    if-eqz p2, :cond_c

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsy$zza;->zzmz()Lcom/google/android/gms/internal/ads/zzsy$zza$zzb;

    move-result-object v2

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsy$zza$zza;->zzmx()Lcom/google/android/gms/internal/ads/zzsy$zza$zza$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzsy$zza$zzc;->zzbul:Lcom/google/android/gms/internal/ads/zzsy$zza$zzc;

    .line 65
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzsy$zza$zza$zza;->zzb(Lcom/google/android/gms/internal/ads/zzsy$zza$zzc;)Lcom/google/android/gms/internal/ads/zzsy$zza$zza$zza;

    move-result-object v3

    .line 66
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsy$zza$zze;->zznd()Lcom/google/android/gms/internal/ads/zzsy$zza$zze$zza;

    move-result-object v4

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzdbf;->zzgoq:Z

    .line 67
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzsy$zza$zze$zza;->zzu(Z)Lcom/google/android/gms/internal/ads/zzsy$zza$zze$zza;

    move-result-object v4

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzdbf;->zzgor:Z

    .line 68
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzsy$zza$zze$zza;->zzv(Z)Lcom/google/android/gms/internal/ads/zzsy$zza$zze$zza;

    move-result-object v1

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdbo;->zzgpj:I

    .line 69
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzsy$zza$zze$zza;->zzbv(I)Lcom/google/android/gms/internal/ads/zzsy$zza$zze$zza;

    move-result-object v0

    .line 70
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzsy$zza$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzsy$zza$zze$zza;)Lcom/google/android/gms/internal/ads/zzsy$zza$zza$zza;

    move-result-object v0

    .line 71
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzsy$zza$zzb;->zza(Lcom/google/android/gms/internal/ads/zzsy$zza$zza$zza;)Lcom/google/android/gms/internal/ads/zzsy$zza$zzb;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzbaf()Lcom/google/android/gms/internal/ads/zzdte;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdrt;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsy$zza;

    .line 73
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdbi;->zzgpc:Lcom/google/android/gms/internal/ads/zzbmz;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbmz;->zzahb()Lcom/google/android/gms/internal/ads/zzbrf;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzbrf;->zzb(Lcom/google/android/gms/internal/ads/zzsy$zza;)V

    .line 74
    :cond_c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdba;->dumpToLog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzdbl;)Z
    .locals 2

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnt:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzday;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzday;->size()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgnu:Lcom/google/android/gms/internal/ads/zzdbe;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdbe;->zzgoj:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 79
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
