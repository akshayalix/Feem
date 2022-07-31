.class public final Lcom/google/android/gms/internal/ads/zzcgi;
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

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzfvt:Lcom/google/android/gms/internal/ads/zzaps;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 4

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 21
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzfvr:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzfvr:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 23
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzfvt:Lcom/google/android/gms/internal/ads/zzaps;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaps;->zztx()Lcom/google/android/gms/internal/ads/zzaqb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzfvs:Lcom/google/android/gms/internal/ads/zzaqk;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcgj;-><init>(Lcom/google/android/gms/internal/ads/zzcgk;)V

    .line 25
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaqb;->zza(Lcom/google/android/gms/internal/ads/zzaqk;Lcom/google/android/gms/internal/ads/zzaqe;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 31
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzku()Lcom/google/android/gms/internal/ads/zzave;

    move-result-object v2

    const-string v3, "RemoteAdRequestClientTask.onConnected"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzave;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzdbf:Lcom/google/android/gms/internal/ads/zzazl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcgr;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgr;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzazl;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 28
    :catch_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzdbf:Lcom/google/android/gms/internal/ads/zzazl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcgr;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgr;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzazl;->setException(Ljava/lang/Throwable;)Z

    .line 33
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

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzavs;->zzea(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzdbf:Lcom/google/android/gms/internal/ads/zzazl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgr;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzazl;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzaqk;)Lcom/google/android/gms/internal/ads/zzdhe;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgi;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzfvq:Z

    if-eqz v1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzdbf:Lcom/google/android/gms/internal/ads/zzazl;

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzfvq:Z

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzfvs:Lcom/google/android/gms/internal/ads/zzaqk;

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgk;->zzfvt:Lcom/google/android/gms/internal/ads/zzaps;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaps;->checkAvailabilityAndConnect()V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzdbf:Lcom/google/android/gms/internal/ads/zzazl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcgh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcgh;-><init>(Lcom/google/android/gms/internal/ads/zzcgi;)V

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/zzazd;->zzdwj:Lcom/google/android/gms/internal/ads/zzdhd;

    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzazl;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzdbf:Lcom/google/android/gms/internal/ads/zzazl;

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
