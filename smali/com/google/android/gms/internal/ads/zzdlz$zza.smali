.class public final Lcom/google/android/gms/internal/ads/zzdlz$zza;
.super Lcom/google/android/gms/internal/ads/zzdrt$zzb;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdtg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdlz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdrt$zzb<",
        "Lcom/google/android/gms/internal/ads/zzdlz;",
        "Lcom/google/android/gms/internal/ads/zzdlz$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdtg;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdlz;->zzaua()Lcom/google/android/gms/internal/ads/zzdlz;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdrt$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdrt;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdly;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdlz$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaj(Lcom/google/android/gms/internal/ads/zzdqk;)Lcom/google/android/gms/internal/ads/zzdlz$zza;
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzhmq:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzbab()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzhmq:Z

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlz$zza;->zzhmp:Lcom/google/android/gms/internal/ads/zzdrt;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdlz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdlz;->zza(Lcom/google/android/gms/internal/ads/zzdlz;Lcom/google/android/gms/internal/ads/zzdqk;)V

    return-object p0
.end method

.method public final zzeh(I)Lcom/google/android/gms/internal/ads/zzdlz$zza;
    .locals 1

    .line 4
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzhmq:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzbab()V

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzhmq:Z

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlz$zza;->zzhmp:Lcom/google/android/gms/internal/ads/zzdrt;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdlz;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdlz;->zza(Lcom/google/android/gms/internal/ads/zzdlz;I)V

    return-object p0
.end method
