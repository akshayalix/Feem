.class final Lcom/google/android/gms/internal/ads/zzdrw;
.super Lcom/google/android/gms/internal/ads/zzdqe;
.source "com.google.android.gms:play-services-ads-lite@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdrz;
.implements Lcom/google/android/gms/internal/ads/zzdtq;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdqe<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdrz;",
        "Lcom/google/android/gms/internal/ads/zzdtq;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zzhnj:Lcom/google/android/gms/internal/ads/zzdrw;


# instance fields
.field private size:I

.field private zzhnk:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 120
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrw;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdrw;-><init>([II)V

    .line 121
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnj:Lcom/google/android/gms/internal/ads/zzdrw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqe;->zzaxq()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    .line 2
    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdrw;-><init>([II)V

    return-void
.end method

.method private constructor <init>([II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqe;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    return-void
.end method

.method public static zzbai()Lcom/google/android/gms/internal/ads/zzdrw;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnj:Lcom/google/android/gms/internal/ads/zzdrw;

    return-object v0
.end method

.method private final zzfb(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 73
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    if-ge p1, v0, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdrw;->zzfc(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzfc(I)Ljava/lang/String;
    .locals 3

    .line 76
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .locals 4

    .line 96
    check-cast p2, Ljava/lang/Integer;

    .line 97
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqe;->zzaxr()V

    if-ltz p1, :cond_1

    .line 99
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    if-gt p1, v0, :cond_1

    .line 101
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 102
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 103
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 104
    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 105
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    aput p2, v0, p1

    .line 109
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    .line 110
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->modCount:I

    return-void

    .line 100
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdrw;->zzfc(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 112
    check-cast p1, Ljava/lang/Integer;

    .line 113
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdrw;->zzgl(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqe;->zzaxr()V

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdrv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzdrw;

    if-nez v0, :cond_0

    .line 50
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqe;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 51
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdrw;

    .line 52
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    .line 54
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    array-length v2, v0

    if-le v3, v2, :cond_2

    .line 59
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    .line 60
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    .line 62
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->modCount:I

    return v0

    .line 56
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 17
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzdrw;

    if-nez v1, :cond_1

    .line 18
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqe;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 19
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdrw;

    .line 20
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 22
    :cond_2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    const/4 v1, 0x0

    .line 23
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    if-ge v1, v2, :cond_4

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    aget v2, v2, v1

    aget v4, p1, v1

    if-eq v2, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdrw;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final getInt(I)I
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdrw;->zzfb(I)V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    aget p1, v0, p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 4

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqe;->zzaxr()V

    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdrw;->zzfb(I)V

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    aget v1, v0, p1

    .line 90
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 91
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    .line 93
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->modCount:I

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqe;->zzaxr()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    if-ge v1, v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    .line 69
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->modCount:I

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final removeRange(II)V
    .locals 2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqe;->zzaxr()V

    if-lt p2, p1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    .line 13
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->modCount:I

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 77
    check-cast p2, Ljava/lang/Integer;

    .line 78
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqe;->zzaxr()V

    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdrw;->zzfb(I)V

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    aget v1, v0, p1

    .line 82
    aput p2, v0, p1

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    return v0
.end method

.method public final synthetic zzfd(I)Lcom/google/android/gms/internal/ads/zzdsb;
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdrw;->zzgk(I)Lcom/google/android/gms/internal/ads/zzdrz;

    move-result-object p1

    return-object p1
.end method

.method public final zzgk(I)Lcom/google/android/gms/internal/ads/zzdrz;
    .locals 2

    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    if-lt p1, v0, :cond_0

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdrw;-><init>([II)V

    return-object v0

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zzgl(I)V
    .locals 4

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqe;->zzaxr()V

    .line 40
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x3

    .line 41
    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 42
    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 43
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnk:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdrw;->size:I

    aput p1, v0, v1

    return-void
.end method
