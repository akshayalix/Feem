.class public final Lcom/google/android/gms/internal/ads/zzbrw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdxg<",
        "Ljava/util/Set<",
        "Lcom/google/android/gms/internal/ads/zzbsu<",
        "Lcom/google/android/gms/internal/ads/zzbow;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final zzfim:Lcom/google/android/gms/internal/ads/zzbrm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbrm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzfim:Lcom/google/android/gms/internal/ads/zzbrm;

    return-void
.end method

.method public static zzm(Lcom/google/android/gms/internal/ads/zzbrm;)Lcom/google/android/gms/internal/ads/zzbrw;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbrw;-><init>(Lcom/google/android/gms/internal/ads/zzbrm;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzfim:Lcom/google/android/gms/internal/ads/zzbrm;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrm;->zzaho()Ljava/util/Set;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdxm;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
