.class final Lcom/google/android/gms/internal/ads/zzdez;
.super Lcom/google/android/gms/internal/ads/zzdeu;
.source "com.google.android.gms:play-services-gass@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdeu<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient length:I

.field private final transient offset:I

.field private final synthetic zzguo:Lcom/google/android/gms/internal/ads/zzdeu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdeu;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdez;->zzguo:Lcom/google/android/gms/internal/ads/zzdeu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdeu;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdez;->offset:I

    .line 3
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdez;->length:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdez;->length:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdei;->zzs(II)I

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdez;->zzguo:Lcom/google/android/gms/internal/ads/zzdeu;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdez;->offset:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdeu;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdez;->length:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdeu;->zzu(II)Lcom/google/android/gms/internal/ads/zzdeu;

    move-result-object p1

    return-object p1
.end method

.method final zzaqy()[Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdez;->zzguo:Lcom/google/android/gms/internal/ads/zzdeu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdet;->zzaqy()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzaqz()I
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdez;->zzguo:Lcom/google/android/gms/internal/ads/zzdeu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdet;->zzaqz()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdez;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzara()I
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdez;->zzguo:Lcom/google/android/gms/internal/ads/zzdeu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdet;->zzaqz()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdez;->offset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdez;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzarc()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzu(II)Lcom/google/android/gms/internal/ads/zzdeu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/ads/zzdeu<",
            "TE;>;"
        }
    .end annotation

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdez;->length:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdei;->zzf(III)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdez;->zzguo:Lcom/google/android/gms/internal/ads/zzdeu;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdez;->offset:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdeu;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdeu;

    return-object p1
.end method
