.class final Lcom/google/android/gms/internal/ads/zzqg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbpd:Lcom/google/android/gms/internal/ads/zzqh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzqh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzbpd:Lcom/google/android/gms/internal/ads/zzqh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzbpd:Lcom/google/android/gms/internal/ads/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqh;->zza(Lcom/google/android/gms/internal/ads/zzqh;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzbpd:Lcom/google/android/gms/internal/ads/zzqh;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzqh;->zzb(Lcom/google/android/gms/internal/ads/zzqh;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzbpd:Lcom/google/android/gms/internal/ads/zzqh;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzqh;->zzc(Lcom/google/android/gms/internal/ads/zzqh;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzbpd:Lcom/google/android/gms/internal/ads/zzqh;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzqh;->zza(Lcom/google/android/gms/internal/ads/zzqh;Z)Z

    const-string v1, "App went background"

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzavs;->zzea(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzbpd:Lcom/google/android/gms/internal/ads/zzqh;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzqh;->zzd(Lcom/google/android/gms/internal/ads/zzqh;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzqj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzqj;->zzp(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, ""

    .line 10
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzayu;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v1, "App is still foreground"

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzavs;->zzea(Ljava/lang/String;)V

    .line 13
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    return-void
.end method
