.class public final Lcom/google/android/gms/internal/ads/zzbnd;
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
        "Lcom/google/android/gms/internal/ads/zzbov;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzfgs:Lcom/google/android/gms/internal/ads/zzbnb;

.field private final zzfgt:Lcom/google/android/gms/internal/ads/zzdxp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdxp<",
            "Lcom/google/android/gms/internal/ads/zzbnk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbnb;Lcom/google/android/gms/internal/ads/zzdxp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbnb;",
            "Lcom/google/android/gms/internal/ads/zzdxp<",
            "Lcom/google/android/gms/internal/ads/zzbnk;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnd;->zzfgs:Lcom/google/android/gms/internal/ads/zzbnb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnd;->zzfgt:Lcom/google/android/gms/internal/ads/zzdxp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbnb;Lcom/google/android/gms/internal/ads/zzdxp;)Lcom/google/android/gms/internal/ads/zzbnd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbnb;",
            "Lcom/google/android/gms/internal/ads/zzdxp<",
            "Lcom/google/android/gms/internal/ads/zzbnk;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbnd;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbnd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbnd;-><init>(Lcom/google/android/gms/internal/ads/zzbnb;Lcom/google/android/gms/internal/ads/zzdxp;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnd;->zzfgt:Lcom/google/android/gms/internal/ads/zzdxp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdxp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbnk;

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbsu;

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/zzazd;->zzdwj:Lcom/google/android/gms/internal/ads/zzdhd;

    .line 11
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbsu;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 12
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdxm;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbsu;

    return-object v0
.end method
