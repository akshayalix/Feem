.class public final Lcom/google/android/gms/internal/ads/zzcic;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdxg<",
        "Lcom/google/android/gms/internal/ads/zzchz;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfxl:Lcom/google/android/gms/internal/ads/zzcic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcic;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcic;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcic;->zzfxl:Lcom/google/android/gms/internal/ads/zzcic;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzamb()Lcom/google/android/gms/internal/ads/zzcic;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcic;->zzfxl:Lcom/google/android/gms/internal/ads/zzcic;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchz;-><init>()V

    return-object v0
.end method
