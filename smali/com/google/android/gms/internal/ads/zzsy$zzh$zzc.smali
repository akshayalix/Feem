.class public final enum Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzsy$zzh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdry;"
    }
.end annotation


# static fields
.field public static final enum zzbwo:Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

.field public static final enum zzbwp:Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

.field public static final enum zzbwq:Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

.field private static final synthetic zzbwr:[Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

.field private static final zzen:Lcom/google/android/gms/internal/ads/zzdrx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdrx<",
            "Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

    const/4 v1, 0x0

    const-string v2, "NETWORKTYPE_UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->zzbwo:Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

    const/4 v2, 0x1

    const-string v3, "CELL"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->zzbwp:Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

    const/4 v3, 0x2

    const-string v4, "WIFI"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->zzbwq:Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

    const/4 v0, 0x3

    .line 25
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->zzbwo:Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->zzbwp:Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->zzbwq:Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->zzbwr:[Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzti;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzti;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->zzen:Lcom/google/android/gms/internal/ads/zzdrx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->zzbwr:[Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

    return-object v0
.end method

.method public static zzaf()Lcom/google/android/gms/internal/ads/zzdsa;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zztj;->zzew:Lcom/google/android/gms/internal/ads/zzdsa;

    return-object v0
.end method

.method public static zzbz(I)Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->zzbwq:Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

    return-object p0

    .line 5
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->zzbwp:Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->zzbwo:Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->value:I

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzae()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->value:I

    return v0
.end method
