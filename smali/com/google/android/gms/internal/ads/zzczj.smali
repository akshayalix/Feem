.class public final Lcom/google/android/gms/internal/ads/zzczj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzbmq:Lcom/google/android/gms/common/util/Clock;

.field private volatile zzdrd:J

.field private volatile zzglg:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzczj;->lock:Ljava/lang/Object;

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzczi;->zzglc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzglg:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzdrd:J

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzbmq:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzaol()V
    .locals 7

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzbmq:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczj;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 19
    :try_start_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzglg:I

    sget v4, Lcom/google/android/gms/internal/ads/zzczi;->zzgle:I

    if-ne v3, v4, :cond_0

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzdrd:J

    sget-object v5, Lcom/google/android/gms/internal/ads/zzzn;->zzcpq:Lcom/google/android/gms/internal/ads/zzzc;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzve;->zzoy()Lcom/google/android/gms/internal/ads/zzzj;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzzj;->zzd(Lcom/google/android/gms/internal/ads/zzzc;)Ljava/lang/Object;

    move-result-object v5

    .line 22
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v5, v3, v0

    if-gtz v5, :cond_0

    .line 23
    sget v0, Lcom/google/android/gms/internal/ads/zzczi;->zzglc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzglg:I

    .line 24
    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zzr(II)V
    .locals 4

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzczj;->zzaol()V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzbmq:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczj;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 10
    :try_start_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzglg:I

    if-eq v3, p1, :cond_0

    .line 11
    monitor-exit v2

    return-void

    .line 12
    :cond_0
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzglg:I

    .line 13
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzglg:I

    sget p2, Lcom/google/android/gms/internal/ads/zzczi;->zzgle:I

    if-ne p1, p2, :cond_1

    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzdrd:J

    .line 15
    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final zzaom()Z
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczj;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 30
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzczj;->zzaol()V

    .line 31
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzglg:I

    sget v2, Lcom/google/android/gms/internal/ads/zzczi;->zzgld:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzaon()Z
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczj;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzczj;->zzaol()V

    .line 35
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzglg:I

    sget v2, Lcom/google/android/gms/internal/ads/zzczi;->zzgle:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzbl(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 26
    sget p1, Lcom/google/android/gms/internal/ads/zzczi;->zzglc:I

    sget v0, Lcom/google/android/gms/internal/ads/zzczi;->zzgld:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzczj;->zzr(II)V

    return-void

    .line 27
    :cond_0
    sget p1, Lcom/google/android/gms/internal/ads/zzczi;->zzgld:I

    sget v0, Lcom/google/android/gms/internal/ads/zzczi;->zzglc:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzczj;->zzr(II)V

    return-void
.end method

.method public final zzvb()V
    .locals 2

    .line 37
    sget v0, Lcom/google/android/gms/internal/ads/zzczi;->zzgld:I

    sget v1, Lcom/google/android/gms/internal/ads/zzczi;->zzgle:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzczj;->zzr(II)V

    return-void
.end method
