.class public final Lcom/google/android/gms/internal/ads/zzbii;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdxg<",
        "Lcom/google/android/gms/internal/ads/zzaow;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfbg:Lcom/google/android/gms/internal/ads/zzbii;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbii;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbii;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbii;->zzfbg:Lcom/google/android/gms/internal/ads/zzbii;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzafk()Lcom/google/android/gms/internal/ads/zzbii;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbii;->zzfbg:Lcom/google/android/gms/internal/ads/zzbii;

    return-object v0
.end method

.method public static zzafl()Lcom/google/android/gms/internal/ads/zzaow;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaow;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaow;-><init>()V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdxm;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaow;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbii;->zzafl()Lcom/google/android/gms/internal/ads/zzaow;

    move-result-object v0

    return-object v0
.end method
