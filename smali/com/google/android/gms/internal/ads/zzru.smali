.class final Lcom/google/android/gms/internal/ads/zzru;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field private final synthetic zzbrh:Lcom/google/android/gms/internal/ads/zzrq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzrq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbrh:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbrh:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrq;->zzc(Lcom/google/android/gms/internal/ads/zzrq;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbrh:Lcom/google/android/gms/internal/ads/zzrq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzrq;->zza(Lcom/google/android/gms/internal/ads/zzrq;Lcom/google/android/gms/internal/ads/zzsd;)Lcom/google/android/gms/internal/ads/zzsd;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbrh:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrq;->zzd(Lcom/google/android/gms/internal/ads/zzrq;)Lcom/google/android/gms/internal/ads/zzrz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbrh:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzrq;->zza(Lcom/google/android/gms/internal/ads/zzrq;Lcom/google/android/gms/internal/ads/zzrz;)Lcom/google/android/gms/internal/ads/zzrz;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbrh:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrq;->zzc(Lcom/google/android/gms/internal/ads/zzrq;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
