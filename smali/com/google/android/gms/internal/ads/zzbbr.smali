.class public final Lcom/google/android/gms/internal/ads/zzbbr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznl;


# instance fields
.field private isOpen:Z

.field private uri:Landroid/net/Uri;

.field private zzebt:Ljava/io/InputStream;

.field private final zzebu:Lcom/google/android/gms/internal/ads/zznl;

.field private final zzebv:Lcom/google/android/gms/internal/ads/zznz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zznz<",
            "Lcom/google/android/gms/internal/ads/zznl;",
            ">;"
        }
    .end annotation
.end field

.field private final zzebw:Lcom/google/android/gms/internal/ads/zzbbq;

.field private final zzup:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zznl;Lcom/google/android/gms/internal/ads/zznz;Lcom/google/android/gms/internal/ads/zzbbq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zznl;",
            "Lcom/google/android/gms/internal/ads/zznz<",
            "Lcom/google/android/gms/internal/ads/zznl;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzbbq;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbr;->zzup:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbr;->zzebu:Lcom/google/android/gms/internal/ads/zznl;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbbr;->zzebv:Lcom/google/android/gms/internal/ads/zznz;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbbr;->zzebw:Lcom/google/android/gms/internal/ads/zzbbq;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbr;->isOpen:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbr;->isOpen:Z

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbr;->uri:Landroid/net/Uri;

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbr;->zzebt:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbr;->zzebt:Ljava/io/InputStream;

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbr;->zzebu:Lcom/google/android/gms/internal/ads/zznl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznl;->close()V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbr;->zzebv:Lcom/google/android/gms/internal/ads/zznz;

    if-eqz v0, :cond_1

    .line 17
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zznz;->zze(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 8
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to close an already closed CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbr;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbr;->isOpen:Z

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbr;->zzebt:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbr;->zzebu:Lcom/google/android/gms/internal/ads/zznl;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zznl;->read([BII)I

    move-result p1

    .line 85
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbr;->zzebv:Lcom/google/android/gms/internal/ads/zznz;

    if-eqz p2, :cond_1

    .line 86
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zznz;->zzc(Ljava/lang/Object;I)V

    :cond_1
    return p1

    .line 80
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempt to read closed CacheDataSource."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zznq;)J
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "ms"

    const-string v3, "Cache connection took "

    .line 19
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzbbr;->isOpen:Z

    if-nez v4, :cond_6

    const/4 v4, 0x1

    .line 21
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzbbr;->isOpen:Z

    .line 22
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zznq;->uri:Landroid/net/Uri;

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzbbr;->uri:Landroid/net/Uri;

    .line 24
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbbr;->zzebv:Lcom/google/android/gms/internal/ads/zznz;

    if-eqz v5, :cond_0

    .line 25
    invoke-interface {v5, v1, v0}, Lcom/google/android/gms/internal/ads/zznz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zznq;)V

    .line 26
    :cond_0
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zznq;->uri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzry;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzry;

    move-result-object v5

    .line 27
    sget-object v6, Lcom/google/android/gms/internal/ads/zzzn;->zzcnd:Lcom/google/android/gms/internal/ads/zzzc;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzve;->zzoy()Lcom/google/android/gms/internal/ads/zzzj;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzzj;->zzd(Lcom/google/android/gms/internal/ads/zzzc;)Ljava/lang/Object;

    move-result-object v6

    .line 29
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-wide/16 v7, -0x1

    if-eqz v6, :cond_2

    if-eqz v5, :cond_4

    .line 31
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zznq;->zzamw:J

    iput-wide v9, v5, Lcom/google/android/gms/internal/ads/zzry;->zzbrp:J

    .line 32
    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/zzry;->zzbro:Z

    if-eqz v6, :cond_1

    .line 33
    sget-object v6, Lcom/google/android/gms/internal/ads/zzzn;->zzcnf:Lcom/google/android/gms/internal/ads/zzzc;

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzve;->zzoy()Lcom/google/android/gms/internal/ads/zzzj;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzzj;->zzd(Lcom/google/android/gms/internal/ads/zzzc;)Ljava/lang/Object;

    move-result-object v6

    .line 35
    check-cast v6, Ljava/lang/Long;

    goto :goto_0

    .line 36
    :cond_1
    sget-object v6, Lcom/google/android/gms/internal/ads/zzzn;->zzcne:Lcom/google/android/gms/internal/ads/zzzc;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzve;->zzoy()Lcom/google/android/gms/internal/ads/zzzj;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzzj;->zzd(Lcom/google/android/gms/internal/ads/zzzc;)Ljava/lang/Object;

    move-result-object v6

    .line 38
    check-cast v6, Ljava/lang/Long;

    .line 39
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v11

    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlk()Lcom/google/android/gms/internal/ads/zzsn;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbbr;->zzup:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzsn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzry;)Ljava/util/concurrent/Future;

    move-result-object v6

    const/4 v13, 0x0

    const/16 v14, 0x2c

    .line 42
    :try_start_0
    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v9, v10, v15}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/InputStream;

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzbbr;->zzebt:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v11

    .line 45
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbbr;->zzebw:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzbbq;->zzb(ZJ)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavs;->zzed(Ljava/lang/String;)V

    return-wide v7

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 56
    :catch_0
    :try_start_1
    invoke-interface {v6, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v11

    .line 60
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbbr;->zzebw:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-interface {v4, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzbbq;->zzb(ZJ)V

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzavs;->zzed(Ljava/lang/String;)V

    goto :goto_2

    .line 49
    :catch_1
    :try_start_2
    invoke-interface {v6, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v11

    .line 52
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbbr;->zzebw:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-interface {v4, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzbbq;->zzb(ZJ)V

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzavs;->zzed(Ljava/lang/String;)V

    goto :goto_2

    .line 63
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v11

    .line 65
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbbr;->zzebw:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-interface {v6, v13, v4, v5}, Lcom/google/android/gms/internal/ads/zzbbq;->zzb(ZJ)V

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzavs;->zzed(Ljava/lang/String;)V

    .line 67
    throw v0

    :cond_2
    const/4 v2, 0x0

    if-eqz v5, :cond_3

    .line 70
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zznq;->zzamw:J

    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/zzry;->zzbrp:J

    .line 71
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzrq;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzrq;->zza(Lcom/google/android/gms/internal/ads/zzry;)Lcom/google/android/gms/internal/ads/zzrx;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzrx;->zzmp()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzrx;->zzmq()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbbr;->zzebt:Ljava/io/InputStream;

    return-wide v7

    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    .line 76
    new-instance v2, Lcom/google/android/gms/internal/ads/zznq;

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzry;->url:Ljava/lang/String;

    .line 77
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zznq;->zzbet:[B

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zznq;->zzbeu:J

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zznq;->zzamw:J

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zznq;->zzce:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zznq;->zzcc:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zznq;->flags:I

    move-object v9, v2

    move-wide/from16 v16, v3

    move-object/from16 v18, v5

    move/from16 v19, v0

    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/internal/ads/zznq;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    move-object v0, v2

    .line 78
    :cond_5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbbr;->zzebu:Lcom/google/android/gms/internal/ads/zznl;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zznl;->zza(Lcom/google/android/gms/internal/ads/zznq;)J

    move-result-wide v2

    return-wide v2

    .line 20
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Attempt to open an already open CacheDataSource."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
