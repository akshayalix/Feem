.class public final Lcom/google/android/gms/internal/ads/zztq;
.super Lcom/google/android/gms/internal/ads/zzdvq;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdvq<",
        "Lcom/google/android/gms/internal/ads/zztq;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbzt:Ljava/lang/Integer;

.field private zzbzu:Lcom/google/android/gms/internal/ads/zzte;

.field private zzbzv:Lcom/google/android/gms/internal/ads/zzsy$zzc;

.field public zzbzw:Lcom/google/android/gms/internal/ads/zztp;

.field private zzbzx:[Lcom/google/android/gms/internal/ads/zzsy$zzb;

.field private zzbzy:Lcom/google/android/gms/internal/ads/zzsy$zzd;

.field private zzbzz:Lcom/google/android/gms/internal/ads/zzsy$zzk;

.field private zzcaa:Lcom/google/android/gms/internal/ads/zzsy$zzi;

.field private zzcab:Lcom/google/android/gms/internal/ads/zzsy$zzf;

.field private zzcac:Lcom/google/android/gms/internal/ads/zzsy$zzg;

.field private zzcad:[Lcom/google/android/gms/internal/ads/zztw;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdvq;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbzt:Ljava/lang/Integer;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbzu:Lcom/google/android/gms/internal/ads/zzte;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbzv:Lcom/google/android/gms/internal/ads/zzsy$zzc;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbzw:Lcom/google/android/gms/internal/ads/zztp;

    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzsy$zzb;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbzx:[Lcom/google/android/gms/internal/ads/zzsy$zzb;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbzy:Lcom/google/android/gms/internal/ads/zzsy$zzd;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbzz:Lcom/google/android/gms/internal/ads/zzsy$zzk;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->zzcaa:Lcom/google/android/gms/internal/ads/zzsy$zzi;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->zzcab:Lcom/google/android/gms/internal/ads/zzsy$zzf;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->zzcac:Lcom/google/android/gms/internal/ads/zzsy$zzg;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zztw;->zzoj()[Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztq;->zzcad:[Lcom/google/android/gms/internal/ads/zztw;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->zzhtm:Lcom/google/android/gms/internal/ads/zzdvs;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/ads/zztq;->zzhhn:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdvo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbzt:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdvo;->zzab(II)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbzw:Lcom/google/android/gms/internal/ads/zztp;

    if-eqz v0, :cond_1

    const/16 v1, 0xa

    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdvo;->zza(ILcom/google/android/gms/internal/ads/zzdvt;)V

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbzx:[Lcom/google/android/gms/internal/ads/zzsy$zzb;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbzx:[Lcom/google/android/gms/internal/ads/zzsy$zzb;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 23
    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/16 v3, 0xb

    .line 25
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdvo;->zze(ILcom/google/android/gms/internal/ads/zzdte;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->zzcad:[Lcom/google/android/gms/internal/ads/zztw;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    .line 28
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->zzcad:[Lcom/google/android/gms/internal/ads/zztw;

    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 29
    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    const/16 v2, 0x11

    .line 31
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdvo;->zza(ILcom/google/android/gms/internal/ads/zzdvt;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 33
    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdvq;->zza(Lcom/google/android/gms/internal/ads/zzdvo;)V

    return-void
.end method

.method protected final zzoi()I
    .locals 5

    .line 35
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdvq;->zzoi()I

    move-result v0

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbzt:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x7

    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->zzaf(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbzw:Lcom/google/android/gms/internal/ads/zztp;

    if-eqz v1, :cond_1

    const/16 v2, 0xa

    .line 41
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->zzb(ILcom/google/android/gms/internal/ads/zzdvt;)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbzx:[Lcom/google/android/gms/internal/ads/zzsy$zzb;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v0

    const/4 v0, 0x0

    .line 43
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbzx:[Lcom/google/android/gms/internal/ads/zzsy$zzb;

    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 44
    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    const/16 v4, 0xb

    .line 47
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzdrb;->zzc(ILcom/google/android/gms/internal/ads/zzdte;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 49
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztq;->zzcad:[Lcom/google/android/gms/internal/ads/zztw;

    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    .line 50
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztq;->zzcad:[Lcom/google/android/gms/internal/ads/zztw;

    array-length v3, v1

    if-ge v2, v3, :cond_6

    .line 51
    aget-object v1, v1, v2

    if-eqz v1, :cond_5

    const/16 v3, 0x11

    .line 54
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->zzb(ILcom/google/android/gms/internal/ads/zzdvt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return v0
.end method
