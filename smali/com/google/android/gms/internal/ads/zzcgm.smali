.class public final Lcom/google/android/gms/internal/ads/zzcgm;
.super Lcom/google/android/gms/internal/ads/zzcgk;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcgk;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzle()Lcom/google/android/gms/internal/ads/zzaxw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxw;->zzxb()Landroid/os/Looper;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaps;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/zzaps;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzfvt:Lcom/google/android/gms/internal/ads/zzaps;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 4

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 18
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzfvr:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzfvr:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 20
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzfvt:Lcom/google/android/gms/internal/ads/zzaps;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaps;->zztx()Lcom/google/android/gms/internal/ads/zzaqb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzfvs:Lcom/google/android/gms/internal/ads/zzaqk;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcgj;-><init>(Lcom/google/android/gms/internal/ads/zzcgk;)V

    .line 22
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaqb;->zzb(Lcom/google/android/gms/internal/ads/zzaqk;Lcom/google/android/gms/internal/ads/zzaqe;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 28
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzku()Lcom/google/android/gms/internal/ads/zzave;

    move-result-object v2

    const-string v3, "RemoteSignalsClientTask.onConnected"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzave;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzdbf:Lcom/google/android/gms/internal/ads/zzazl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcgr;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgr;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzazl;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 25
    :catch_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzdbf:Lcom/google/android/gms/internal/ads/zzazl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcgr;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgr;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzazl;->setException(Ljava/lang/Throwable;)Z

    .line 30
    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzaqk;)Lcom/google/android/gms/internal/ads/zzdhe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaqk;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdhe<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzfvq:Z

    if-eqz v1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzdbf:Lcom/google/android/gms/internal/ads/zzazl;

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzfvq:Z

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzfvs:Lcom/google/android/gms/internal/ads/zzaqk;

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgk;->zzfvt:Lcom/google/android/gms/internal/ads/zzaps;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaps;->checkAvailabilityAndConnect()V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzdbf:Lcom/google/android/gms/internal/ads/zzazl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcgl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcgl;-><init>(Lcom/google/android/gms/internal/ads/zzcgm;)V

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/zzazd;->zzdwj:Lcom/google/android/gms/internal/ads/zzdhd;

    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzazl;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzdbf:Lcom/google/android/gms/internal/ads/zzazl;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
