.class public final enum Lcom/google/android/gms/internal/ads/zzbz;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-gass@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzbz;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdry;"
    }
.end annotation


# static fields
.field private static final zzen:Lcom/google/android/gms/internal/ads/zzdrx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdrx<",
            "Lcom/google/android/gms/internal/ads/zzbz;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzku:Lcom/google/android/gms/internal/ads/zzbz;

.field private static final enum zzkv:Lcom/google/android/gms/internal/ads/zzbz;

.field public static final enum zzkw:Lcom/google/android/gms/internal/ads/zzbz;

.field private static final enum zzkx:Lcom/google/android/gms/internal/ads/zzbz;

.field private static final synthetic zzky:[Lcom/google/android/gms/internal/ads/zzbz;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbz;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_ENCRYPTION_METHOD"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzbz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbz;->zzku:Lcom/google/android/gms/internal/ads/zzbz;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbz;

    const/4 v2, 0x1

    const-string v3, "BITSLICER"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzbz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbz;->zzkv:Lcom/google/android/gms/internal/ads/zzbz;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbz;

    const/4 v3, 0x2

    const-string v4, "TINK_HYBRID"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/ads/zzbz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbz;->zzkw:Lcom/google/android/gms/internal/ads/zzbz;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbz;

    const/4 v4, 0x3

    const-string v5, "UNENCRYPTED"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/ads/zzbz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbz;->zzkx:Lcom/google/android/gms/internal/ads/zzbz;

    const/4 v0, 0x4

    .line 27
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzbz;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbz;->zzku:Lcom/google/android/gms/internal/ads/zzbz;

    aput-object v5, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbz;->zzkv:Lcom/google/android/gms/internal/ads/zzbz;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbz;->zzkw:Lcom/google/android/gms/internal/ads/zzbz;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbz;->zzkx:Lcom/google/android/gms/internal/ads/zzbz;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbz;->zzky:[Lcom/google/android/gms/internal/ads/zzbz;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbz;->zzen:Lcom/google/android/gms/internal/ads/zzdrx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbz;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzbz;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbz;->zzky:[Lcom/google/android/gms/internal/ads/zzbz;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzbz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzbz;

    return-object v0
.end method

.method public static zzaf()Lcom/google/android/gms/internal/ads/zzdsa;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzca;->zzew:Lcom/google/android/gms/internal/ads/zzdsa;

    return-object v0
.end method

.method public static zzi(I)Lcom/google/android/gms/internal/ads/zzbz;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbz;->zzkx:Lcom/google/android/gms/internal/ads/zzbz;

    return-object p0

    .line 6
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbz;->zzkw:Lcom/google/android/gms/internal/ads/zzbz;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbz;->zzkv:Lcom/google/android/gms/internal/ads/zzbz;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbz;->zzku:Lcom/google/android/gms/internal/ads/zzbz;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbz;->value:I

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbz;->name()Ljava/lang/String;

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
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbz;->value:I

    return v0
.end method
