.class public final Lcom/google/android/gms/internal/ads/zzcdd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdxg<",
        "Lcom/google/android/gms/internal/ads/zzcdh;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfse:Lcom/google/android/gms/internal/ads/zzcdd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcdd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcdd;->zzfse:Lcom/google/android/gms/internal/ads/zzcdd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzald()Lcom/google/android/gms/internal/ads/zzcdd;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcdd;->zzfse:Lcom/google/android/gms/internal/ads/zzcdd;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzso$zza$zza;->zzbst:Lcom/google/android/gms/internal/ads/zzso$zza$zza;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzso$zza$zza;->zzbsu:Lcom/google/android/gms/internal/ads/zzso$zza$zza;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzso$zza$zza;->zzbtk:Lcom/google/android/gms/internal/ads/zzso$zza$zza;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcdh;-><init>(Lcom/google/android/gms/internal/ads/zzso$zza$zza;Lcom/google/android/gms/internal/ads/zzso$zza$zza;Lcom/google/android/gms/internal/ads/zzso$zza$zza;)V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdxm;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcdh;

    return-object v0
.end method
