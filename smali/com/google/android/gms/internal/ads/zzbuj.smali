.class public final Lcom/google/android/gms/internal/ads/zzbuj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdxg<",
        "Lcom/google/android/gms/internal/ads/zzbsu<",
        "Lcom/google/android/gms/internal/ads/zzbrb;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzfcv:Lcom/google/android/gms/internal/ads/zzdxp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdxp<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfje:Lcom/google/android/gms/internal/ads/zzbtv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbtv;Lcom/google/android/gms/internal/ads/zzdxp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbtv;",
            "Lcom/google/android/gms/internal/ads/zzdxp<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuj;->zzfje:Lcom/google/android/gms/internal/ads/zzbtv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbuj;->zzfcv:Lcom/google/android/gms/internal/ads/zzdxp;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzbtv;Lcom/google/android/gms/internal/ads/zzdxp;)Lcom/google/android/gms/internal/ads/zzbuj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbtv;",
            "Lcom/google/android/gms/internal/ads/zzdxp<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbuj;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbuj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbuj;-><init>(Lcom/google/android/gms/internal/ads/zzbtv;Lcom/google/android/gms/internal/ads/zzdxp;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuj;->zzfje:Lcom/google/android/gms/internal/ads/zzbtv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbuj;->zzfcv:Lcom/google/android/gms/internal/ads/zzdxp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdxp;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbtv;->zzb(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbsu;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdxm;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbsu;

    return-object v0
.end method
