.class public final Lcom/google/android/gms/internal/ads/zzbaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final zzdys:J

.field private zzdyt:J

.field private zzdyu:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzzn;->zzchd:Lcom/google/android/gms/internal/ads/zzzc;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzve;->zzoy()Lcom/google/android/gms/internal/ads/zzzj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzzj;->zzd(Lcom/google/android/gms/internal/ads/zzzc;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zzdys:J

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zzdyu:Z

    return-void
.end method


# virtual methods
.method public final zza(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/zzbah;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 12
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zzdyu:Z

    if-nez p1, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zzdyt:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zzdys:J

    cmp-long p1, v2, v4

    if-ltz p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zzdyu:Z

    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zzdyt:J

    .line 15
    sget-object p1, Lcom/google/android/gms/internal/ads/zzawb;->zzdsr:Lcom/google/android/gms/internal/ads/zzddu;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbat;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzbat;-><init>(Lcom/google/android/gms/internal/ads/zzbaq;Lcom/google/android/gms/internal/ads/zzbah;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzddu;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final zzxu()V
    .locals 1

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbaq;->zzdyu:Z

    return-void
.end method
