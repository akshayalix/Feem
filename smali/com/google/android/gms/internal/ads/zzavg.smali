.class final Lcom/google/android/gms/internal/ads/zzavg;
.super Lcom/google/android/gms/internal/ads/zzavo;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# instance fields
.field private final synthetic zzdqw:Lcom/google/android/gms/internal/ads/zzave;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzave;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdqw:Lcom/google/android/gms/internal/ads/zzave;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavo;-><init>()V

    return-void
.end method


# virtual methods
.method public final zztu()V
    .locals 3

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdqw:Lcom/google/android/gms/internal/ads/zzave;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzave;->zza(Lcom/google/android/gms/internal/ads/zzave;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdqw:Lcom/google/android/gms/internal/ads/zzave;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzave;->zzb(Lcom/google/android/gms/internal/ads/zzave;)Lcom/google/android/gms/internal/ads/zzazb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzazb;->zzbma:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzzr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdqw:Lcom/google/android/gms/internal/ads/zzave;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzave;->zzc(Lcom/google/android/gms/internal/ads/zzave;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkz()Lcom/google/android/gms/internal/ads/zzzw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdqw:Lcom/google/android/gms/internal/ads/zzave;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzave;->zzd(Lcom/google/android/gms/internal/ads/zzave;)Lcom/google/android/gms/internal/ads/zzzu;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzzw;->zza(Lcom/google/android/gms/internal/ads/zzzu;Lcom/google/android/gms/internal/ads/zzzr;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Cannot config CSI reporter."

    .line 8
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzavs;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
