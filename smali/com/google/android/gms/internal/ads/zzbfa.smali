.class final synthetic Lcom/google/android/gms/internal/ads/zzbfa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzeht:Lcom/google/android/gms/internal/ads/zzbfb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbfb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfa;->zzeht:Lcom/google/android/gms/internal/ads/zzbfb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfa;->zzeht:Lcom/google/android/gms/internal/ads/zzbfb;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbfb;->zzeef:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbdi;->zzaaj()V

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbfb;->zzeef:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->zzzw()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zztn()V

    :cond_0
    return-void
.end method
