.class public final Lcom/google/android/gms/internal/ads/zzbgd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdxg<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzejr:Lcom/google/android/gms/internal/ads/zzbga;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbga;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzejr:Lcom/google/android/gms/internal/ads/zzbga;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbga;)Landroid/content/Context;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbga;->zzacp()Landroid/content/Context;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxm;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzejr:Lcom/google/android/gms/internal/ads/zzbga;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgd;->zza(Lcom/google/android/gms/internal/ads/zzbga;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
