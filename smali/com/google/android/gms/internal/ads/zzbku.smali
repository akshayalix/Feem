.class public final Lcom/google/android/gms/internal/ads/zzbku;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdxg<",
        "Lcom/google/android/gms/internal/ads/zzczk;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfen:Lcom/google/android/gms/internal/ads/zzbkn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbkn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzfen:Lcom/google/android/gms/internal/ads/zzbkn;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzbkn;)Lcom/google/android/gms/internal/ads/zzczk;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkn;->zzagi()Lcom/google/android/gms/internal/ads/zzczk;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxm;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzczk;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzfen:Lcom/google/android/gms/internal/ads/zzbkn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbku;->zzc(Lcom/google/android/gms/internal/ads/zzbkn;)Lcom/google/android/gms/internal/ads/zzczk;

    move-result-object v0

    return-object v0
.end method
