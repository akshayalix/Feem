.class final Lcom/google/android/gms/internal/ads/zzbhl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczc;


# instance fields
.field private final synthetic zzerr:Lcom/google/android/gms/internal/ads/zzbgr;

.field private zzewj:Landroid/content/Context;

.field private zzewk:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbgr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzerr:Lcom/google/android/gms/internal/ads/zzbgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbgr;Lcom/google/android/gms/internal/ads/zzbgq;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhl;-><init>(Lcom/google/android/gms/internal/ads/zzbgr;)V

    return-void
.end method


# virtual methods
.method public final zzaer()Lcom/google/android/gms/internal/ads/zzczd;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzewj:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdxm;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzerr:Lcom/google/android/gms/internal/ads/zzbgr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzewj:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzewk:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbhk;-><init>(Lcom/google/android/gms/internal/ads/zzbgr;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbgq;)V

    return-object v0
.end method

.method public final synthetic zzbu(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzczc;
    .locals 0

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdxm;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzewj:Landroid/content/Context;

    return-object p0
.end method

.method public final synthetic zzfr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzczc;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzewk:Ljava/lang/String;

    return-object p0
.end method
