.class public final Lcom/google/android/gms/internal/ads/zzdwm;
.super Lcom/google/android/gms/internal/ads/zzdvq;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdvq<",
        "Lcom/google/android/gms/internal/ads/zzdwm;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzhyx:[Lcom/google/android/gms/internal/ads/zzdwm;


# instance fields
.field public url:Ljava/lang/String;

.field public zzhyy:Ljava/lang/Integer;

.field public zzhyz:Lcom/google/android/gms/internal/ads/zzdwk;

.field private zzhza:Lcom/google/android/gms/internal/ads/zzdvx$zzb$zze;

.field private zzhzb:Ljava/lang/Integer;

.field private zzhzc:[I

.field private zzhzd:Ljava/lang/String;

.field public zzhze:Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzh$zza;

.field public zzhzf:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdvq;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhyy:Ljava/lang/Integer;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwm;->url:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhyz:Lcom/google/android/gms/internal/ads/zzdwk;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhza:Lcom/google/android/gms/internal/ads/zzdvx$zzb$zze;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhzb:Ljava/lang/Integer;

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdvy;->zzhow:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhzc:[I

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhzd:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhze:Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzh$zza;

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdvy;->zzhuc:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhzf:[Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhtm:Lcom/google/android/gms/internal/ads/zzdvs;

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhhn:I

    return-void
.end method

.method public static zzbdk()[Lcom/google/android/gms/internal/ads/zzdwm;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhyx:[Lcom/google/android/gms/internal/ads/zzdwm;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvu;->zzhtt:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdwm;->zzhyx:[Lcom/google/android/gms/internal/ads/zzdwm;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzdwm;

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdwm;->zzhyx:[Lcom/google/android/gms/internal/ads/zzdwm;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhyx:[Lcom/google/android/gms/internal/ads/zzdwm;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdvo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhyy:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdvo;->zzab(II)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwm;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 23
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdvo;->zzf(ILjava/lang/String;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhyz:Lcom/google/android/gms/internal/ads/zzdwk;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 25
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdvo;->zza(ILcom/google/android/gms/internal/ads/zzdvt;)V

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhzc:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 27
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhzc:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    const/4 v3, 0x6

    .line 28
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdvo;->zzab(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhze:Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzh$zza;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_3

    const/16 v2, 0x8

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzh$zza;->zzae()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdvo;->zzab(II)V

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhzf:[Ljava/lang/String;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    .line 34
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhzf:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 35
    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    const/16 v2, 0x9

    .line 37
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdvo;->zzf(ILjava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39
    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdvq;->zza(Lcom/google/android/gms/internal/ads/zzdvo;)V

    return-void
.end method

.method protected final zzoi()I
    .locals 7

    .line 41
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdvq;->zzoi()I

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhyy:Ljava/lang/Integer;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->zzaf(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwm;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    .line 46
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhyz:Lcom/google/android/gms/internal/ads/zzdwk;

    if-eqz v1, :cond_1

    const/4 v3, 0x3

    .line 49
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->zzb(ILcom/google/android/gms/internal/ads/zzdvt;)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhzc:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 52
    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhzc:[I

    array-length v6, v5

    if-ge v1, v6, :cond_2

    .line 53
    aget v5, v5, v1

    .line 55
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdvo;->zzga(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v4

    .line 58
    array-length v1, v5

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhze:Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzh$zza;

    if-eqz v1, :cond_4

    if-eqz v1, :cond_4

    const/16 v4, 0x8

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzh$zza;->zzae()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->zzaf(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhzf:[Ljava/lang/String;

    if-eqz v1, :cond_7

    array-length v1, v1

    if-lez v1, :cond_7

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 66
    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zzhzf:[Ljava/lang/String;

    array-length v6, v5

    if-ge v3, v6, :cond_6

    .line 67
    aget-object v5, v5, v3

    if-eqz v5, :cond_5

    add-int/lit8 v4, v4, 0x1

    .line 71
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdvo;->zzhh(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    :cond_7
    return v0
.end method
