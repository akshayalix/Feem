.class public final Lcom/google/android/gms/internal/ads/zzdbu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdxg<",
        "Lcom/google/android/gms/internal/ads/zzdhd;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzgps:Lcom/google/android/gms/internal/ads/zzdbu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdbu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdbu;->zzgps:Lcom/google/android/gms/internal/ads/zzdbu;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzapy()Lcom/google/android/gms/internal/ads/zzdbu;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdbu;->zzgps:Lcom/google/android/gms/internal/ads/zzdbu;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazd;->zzdwi:Lcom/google/android/gms/internal/ads/zzdhd;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdxm;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdhd;

    return-object v0
.end method
