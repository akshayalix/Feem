.class final Lcom/google/android/gms/internal/ads/zzcon;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgt<",
        "Lcom/google/android/gms/internal/ads/zzbkk;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgcu:Lcom/google/android/gms/internal/ads/zzblg;

.field private final synthetic zzgcv:Lcom/google/android/gms/internal/ads/zzcoo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcoo;Lcom/google/android/gms/internal/ads/zzblg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzgcv:Lcom/google/android/gms/internal/ads/zzcoo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzgcu:Lcom/google/android/gms/internal/ads/zzblg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbkk;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzgcv:Lcom/google/android/gms/internal/ads/zzcoo;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzgcv:Lcom/google/android/gms/internal/ads/zzcoo;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcoo;->zza(Lcom/google/android/gms/internal/ads/zzcoo;Lcom/google/android/gms/internal/ads/zzdhe;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzgcv:Lcom/google/android/gms/internal/ads/zzcoo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcoo;->zza(Lcom/google/android/gms/internal/ads/zzcoo;)Lcom/google/android/gms/internal/ads/zzbkk;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzgcv:Lcom/google/android/gms/internal/ads/zzcoo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcoo;->zza(Lcom/google/android/gms/internal/ads/zzcoo;)Lcom/google/android/gms/internal/ads/zzbkk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbmd;->destroy()V

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzgcv:Lcom/google/android/gms/internal/ads/zzcoo;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcoo;->zza(Lcom/google/android/gms/internal/ads/zzcoo;Lcom/google/android/gms/internal/ads/zzbkk;)Lcom/google/android/gms/internal/ads/zzbkk;

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzgcv:Lcom/google/android/gms/internal/ads/zzcoo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcoo;->zzb(Lcom/google/android/gms/internal/ads/zzcoo;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzgcv:Lcom/google/android/gms/internal/ads/zzcoo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcoo;->zzb(Lcom/google/android/gms/internal/ads/zzcoo;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkk;->zzaga()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbmd;->zzagf()V

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzgcv:Lcom/google/android/gms/internal/ads/zzcoo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcoo;->zzc(Lcom/google/android/gms/internal/ads/zzcoo;)Lcom/google/android/gms/internal/ads/zzbqp;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkk;->zzage()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbqp;->zzdg(I)V

    .line 20
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzgcv:Lcom/google/android/gms/internal/ads/zzcoo;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzgcv:Lcom/google/android/gms/internal/ads/zzcoo;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcoo;->zza(Lcom/google/android/gms/internal/ads/zzcoo;Lcom/google/android/gms/internal/ads/zzdhe;)Lcom/google/android/gms/internal/ads/zzdhe;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzgcu:Lcom/google/android/gms/internal/ads/zzblg;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzblg;->zzadd()Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object v1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzd(Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbou;->onAdFailedToLoad(I)V

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzgcv:Lcom/google/android/gms/internal/ads/zzcoo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcoo;->zzc(Lcom/google/android/gms/internal/ads/zzcoo;)Lcom/google/android/gms/internal/ads/zzbqp;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbqp;->zzdg(I)V

    const-string v1, "BannerAdManagerShim.onFailure"

    .line 8
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzdad;->zzc(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
