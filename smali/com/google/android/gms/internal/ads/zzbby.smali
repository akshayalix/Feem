.class final synthetic Lcom/google/android/gms/internal/ads/zzbby;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzji;


# static fields
.field static final zzecq:Lcom/google/android/gms/internal/ads/zzji;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbby;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbby;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbby;->zzecq:Lcom/google/android/gms/internal/ads/zzji;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzgl()[Lcom/google/android/gms/internal/ads/zzjd;
    .locals 3

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzjd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzko;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzko;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzjt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzjt;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
