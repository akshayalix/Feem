.class public final Lcom/google/android/gms/internal/ads/zzsy$zzw$zza;
.super Lcom/google/android/gms/internal/ads/zzdrt$zzb;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdtg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzsy$zzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdrt$zzb<",
        "Lcom/google/android/gms/internal/ads/zzsy$zzw;",
        "Lcom/google/android/gms/internal/ads/zzsy$zzw$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdtg;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsy$zzw;->zzoh()Lcom/google/android/gms/internal/ads/zzsy$zzw;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdrt$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdrt;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzsx;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsy$zzw$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzci(I)Lcom/google/android/gms/internal/ads/zzsy$zzw$zza;
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzhmq:Z

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzbab()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzhmq:Z

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy$zzw$zza;->zzhmp:Lcom/google/android/gms/internal/ads/zzdrt;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsy$zzw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzsy$zzw;->zza(Lcom/google/android/gms/internal/ads/zzsy$zzw;I)V

    return-object p0
.end method

.method public final zzof()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy$zzw$zza;->zzhmp:Lcom/google/android/gms/internal/ads/zzdrt;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsy$zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy$zzw;->zzof()Z

    move-result v0

    return v0
.end method

.method public final zzw(Z)Lcom/google/android/gms/internal/ads/zzsy$zzw$zza;
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzhmq:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzbab()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzhmq:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy$zzw$zza;->zzhmp:Lcom/google/android/gms/internal/ads/zzdrt;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsy$zzw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzsy$zzw;->zza(Lcom/google/android/gms/internal/ads/zzsy$zzw;Z)V

    return-object p0
.end method
