.class final Lcom/google/android/gms/internal/ads/zzdfj;
.super Lcom/google/android/gms/internal/ads/zzdeu;
.source "com.google.android.gms:play-services-gass@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdeu<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzgva:Lcom/google/android/gms/internal/ads/zzdfg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdfg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfj;->zzgva:Lcom/google/android/gms/internal/ads/zzdfg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdeu;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfj;->zzgva:Lcom/google/android/gms/internal/ads/zzdfg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdfg;->zza(Lcom/google/android/gms/internal/ads/zzdfg;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdei;->zzs(II)I

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfj;->zzgva:Lcom/google/android/gms/internal/ads/zzdfg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdfg;->zzb(Lcom/google/android/gms/internal/ads/zzdfg;)[Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdfj;->zzgva:Lcom/google/android/gms/internal/ads/zzdfg;

    .line 7
    aget-object v0, v0, p1

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdfg;->zzb(Lcom/google/android/gms/internal/ads/zzdfg;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdfj;->zzgva:Lcom/google/android/gms/internal/ads/zzdfg;

    add-int/lit8 p1, p1, 0x1

    .line 10
    aget-object p1, v1, p1

    .line 11
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfj;->zzgva:Lcom/google/android/gms/internal/ads/zzdfg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdfg;->zza(Lcom/google/android/gms/internal/ads/zzdfg;)I

    move-result v0

    return v0
.end method

.method public final zzarc()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
