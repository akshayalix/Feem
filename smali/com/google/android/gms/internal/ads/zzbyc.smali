.class public final Lcom/google/android/gms/internal/ads/zzbyc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpe;


# instance fields
.field private final zzfkc:Lcom/google/android/gms/internal/ads/zzbws;

.field private final zzfli:Lcom/google/android/gms/internal/ads/zzbww;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbws;Lcom/google/android/gms/internal/ads/zzbww;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyc;->zzfkc:Lcom/google/android/gms/internal/ads/zzbws;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyc;->zzfli:Lcom/google/android/gms/internal/ads/zzbww;

    return-void
.end method


# virtual methods
.method public final onAdImpression()V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyc;->zzfkc:Lcom/google/android/gms/internal/ads/zzbws;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbws;->zzajh()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyc;->zzfkc:Lcom/google/android/gms/internal/ads/zzbws;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbws;->zzajg()Lcom/google/android/gms/internal/ads/zzbdi;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyc;->zzfkc:Lcom/google/android/gms/internal/ads/zzbws;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbws;->zzajf()Lcom/google/android/gms/internal/ads/zzbdi;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyc;->zzfli:Lcom/google/android/gms/internal/ads/zzbww;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbww;->zzaiw()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 17
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbdi;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method
