.class public final Lcom/google/android/gms/internal/ads/zzhw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# static fields
.field private static zzahp:Z = false

.field private static zzahq:Z = false


# instance fields
.field private streamType:I

.field private zzadi:Lcom/google/android/gms/internal/ads/zzhc;

.field private zzafp:I

.field private final zzahr:Lcom/google/android/gms/internal/ads/zzhn;

.field private final zzahs:Lcom/google/android/gms/internal/ads/zzih;

.field private final zzaht:Lcom/google/android/gms/internal/ads/zzim;

.field private final zzahu:[Lcom/google/android/gms/internal/ads/zzhm;

.field private final zzahv:Lcom/google/android/gms/internal/ads/zzic;

.field private final zzahw:Landroid/os/ConditionVariable;

.field private final zzahx:[J

.field private final zzahy:Lcom/google/android/gms/internal/ads/zzhy;

.field private final zzahz:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/zzif;",
            ">;"
        }
    .end annotation
.end field

.field private zzaia:Landroid/media/AudioTrack;

.field private zzaib:I

.field private zzaic:I

.field private zzaid:I

.field private zzaie:Z

.field private zzaif:I

.field private zzaig:J

.field private zzaih:Lcom/google/android/gms/internal/ads/zzhc;

.field private zzaii:J

.field private zzaij:J

.field private zzaik:Ljava/nio/ByteBuffer;

.field private zzail:I

.field private zzaim:I

.field private zzain:I

.field private zzaio:J

.field private zzaip:J

.field private zzaiq:Z

.field private zzair:J

.field private zzais:Ljava/lang/reflect/Method;

.field private zzait:I

.field private zzaiu:J

.field private zzaiv:J

.field private zzaiw:I

.field private zzaix:J

.field private zzaiy:J

.field private zzaiz:I

.field private zzaja:I

.field private zzajb:J

.field private zzajc:J

.field private zzajd:J

.field private zzaje:[Lcom/google/android/gms/internal/ads/zzhm;

.field private zzajf:[Ljava/nio/ByteBuffer;

.field private zzajg:Ljava/nio/ByteBuffer;

.field private zzajh:Ljava/nio/ByteBuffer;

.field private zzaji:[B

.field private zzajj:I

.field private zzajk:I

.field private zzajl:Z

.field private zzajm:Z

.field private zzajn:I

.field private zzajo:Z

.field private zzajp:Z

.field private zzajq:J

.field private zzcy:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhn;[Lcom/google/android/gms/internal/ads/zzhm;Lcom/google/android/gms/internal/ads/zzic;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahr:Lcom/google/android/gms/internal/ads/zzhn;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahv:Lcom/google/android/gms/internal/ads/zzic;

    .line 4
    new-instance p3, Landroid/os/ConditionVariable;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahw:Landroid/os/ConditionVariable;

    .line 5
    sget p3, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    const/16 v1, 0x12

    if-lt p3, v1, :cond_0

    .line 6
    :try_start_0
    const-class p3, Landroid/media/AudioTrack;

    const-string v1, "getLatency"

    .line 7
    invoke-virtual {p3, v1, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzais:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 10
    :cond_0
    :goto_0
    sget p3, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p3, v1, :cond_1

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzib;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzib;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahy:Lcom/google/android/gms/internal/ads/zzhy;

    goto :goto_1

    .line 12
    :cond_1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzhy;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzhy;-><init>(Lcom/google/android/gms/internal/ads/zzhz;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahy:Lcom/google/android/gms/internal/ads/zzhy;

    .line 13
    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzih;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzih;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahs:Lcom/google/android/gms/internal/ads/zzih;

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/ads/zzim;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzim;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaht:Lcom/google/android/gms/internal/ads/zzim;

    .line 15
    array-length p1, p2

    const/4 p3, 0x3

    add-int/2addr p1, p3

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzhm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahu:[Lcom/google/android/gms/internal/ads/zzhm;

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahu:[Lcom/google/android/gms/internal/ads/zzhm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzik;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzik;-><init>()V

    const/4 v2, 0x0

    aput-object v1, p1, v2

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahu:[Lcom/google/android/gms/internal/ads/zzhm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahs:Lcom/google/android/gms/internal/ads/zzih;

    aput-object v1, p1, v0

    .line 18
    array-length v0, p2

    const/4 v1, 0x2

    invoke-static {p2, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahu:[Lcom/google/android/gms/internal/ads/zzhm;

    array-length p2, p2

    add-int/2addr p2, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaht:Lcom/google/android/gms/internal/ads/zzim;

    aput-object v0, p1, p2

    const/16 p1, 0xa

    .line 20
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahx:[J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 21
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzcy:F

    .line 22
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaja:I

    .line 23
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhw;->streamType:I

    .line 24
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajn:I

    .line 25
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhc;->zzagb:Lcom/google/android/gms/internal/ads/zzhc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzadi:Lcom/google/android/gms/internal/ads/zzhc;

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajk:I

    .line 27
    new-array p1, v2, [Lcom/google/android/gms/internal/ads/zzhm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaje:[Lcom/google/android/gms/internal/ads/zzhm;

    .line 28
    new-array p1, v2, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajf:[Ljava/nio/ByteBuffer;

    .line 29
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahz:Ljava/util/LinkedList;

    return-void
.end method

.method private final isInitialized()Z
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzhw;)Landroid/os/ConditionVariable;
    .locals 0

    .line 541
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahw:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private final zzb(Ljava/nio/ByteBuffer;J)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzie;
        }
    .end annotation

    .line 322
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajh:Ljava/nio/ByteBuffer;

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 325
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoc;->checkArgument(Z)V

    goto :goto_1

    .line 326
    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajh:Ljava/nio/ByteBuffer;

    .line 327
    sget v0, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    if-ge v0, v2, :cond_5

    .line 328
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 329
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaji:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    .line 330
    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaji:[B

    .line 331
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 332
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaji:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 333
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 334
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajj:I

    .line 335
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 337
    sget v4, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    if-ge v4, v2, :cond_7

    .line 338
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaix:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahy:Lcom/google/android/gms/internal/ads/zzhy;

    .line 339
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhy;->zzfo()J

    move-result-wide v4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiw:I

    int-to-long v6, v2

    mul-long v4, v4, v6

    sub-long/2addr p2, v4

    long-to-int p3, p2

    .line 340
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaif:I

    sub-int/2addr p2, p3

    if-lez p2, :cond_6

    .line 342
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 343
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaji:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajj:I

    invoke-virtual {p3, v2, v4, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p2

    if-lez p2, :cond_f

    .line 345
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajj:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajj:I

    .line 346
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_5

    :cond_6
    :goto_2
    const/4 p2, 0x0

    goto/16 :goto_5

    .line 347
    :cond_7
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajo:Z

    if-eqz v2, :cond_e

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v4

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    .line 348
    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzoc;->checkState(Z)V

    .line 349
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    .line 350
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaik:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_9

    const/16 v4, 0x10

    .line 351
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaik:Ljava/nio/ByteBuffer;

    .line 352
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaik:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 353
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaik:Ljava/nio/ByteBuffer;

    const v5, 0x55550001

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 354
    :cond_9
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzail:I

    if-nez v4, :cond_a

    .line 355
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaik:Ljava/nio/ByteBuffer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 356
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaik:Ljava/nio/ByteBuffer;

    const/16 v5, 0x8

    const-wide/16 v6, 0x3e8

    mul-long p2, p2, v6

    invoke-virtual {v4, v5, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 357
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaik:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 358
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzail:I

    .line 359
    :cond_a
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaik:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-lez p2, :cond_c

    .line 361
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaik:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p3, p2, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p3

    if-gez p3, :cond_b

    .line 363
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzail:I

    move p2, p3

    goto :goto_5

    :cond_b
    if-ge p3, p2, :cond_c

    goto :goto_2

    .line 368
    :cond_c
    invoke-virtual {v2, p1, v0, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    if-gez p1, :cond_d

    .line 371
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzail:I

    goto :goto_4

    .line 373
    :cond_d
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzail:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzail:I

    :goto_4
    move p2, p1

    goto :goto_5

    .line 376
    :cond_e
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    .line 377
    invoke-virtual {p2, p1, v0, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    .line 379
    :cond_f
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajq:J

    if-ltz p2, :cond_13

    .line 382
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaie:Z

    if-nez p1, :cond_10

    .line 383
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaix:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaix:J

    :cond_10
    if-ne p2, v0, :cond_12

    .line 385
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaie:Z

    if-eqz p1, :cond_11

    .line 386
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiy:J

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiz:I

    int-to-long v2, p3

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiy:J

    :cond_11
    const/4 p1, 0x0

    .line 387
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajh:Ljava/nio/ByteBuffer;

    return v1

    :cond_12
    return v3

    .line 381
    :cond_13
    new-instance p1, Lcom/google/android/gms/internal/ads/zzie;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzie;-><init>(I)V

    throw p1

    return-void
.end method

.method private static zzbb(Ljava/lang/String;)I
    .locals 5

    .line 535
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "audio/eac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "audio/ac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "audio/vnd.dts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_1

    return v1

    :cond_1
    const/16 p0, 0x8

    return p0

    :cond_2
    const/4 p0, 0x7

    return p0

    :cond_3
    const/4 p0, 0x6

    return p0

    :cond_4
    const/4 p0, 0x5

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x41455b98 -> :sswitch_3
        0xb269698 -> :sswitch_2
        0x59ae0c65 -> :sswitch_1
        0x59c2dc42 -> :sswitch_0
    .end sparse-switch
.end method

.method private final zzdv(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzie;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaje:[Lcom/google/android/gms/internal/ads/zzhm;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    if-lez v1, :cond_0

    .line 306
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajf:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    .line 307
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajg:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhm;->zzaha:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    .line 309
    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzhw;->zzb(Ljava/nio/ByteBuffer;J)Z

    goto :goto_2

    .line 310
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaje:[Lcom/google/android/gms/internal/ads/zzhm;

    aget-object v3, v3, v1

    .line 311
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzhm;->zzi(Ljava/nio/ByteBuffer;)V

    .line 312
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhm;->zzfc()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 313
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajf:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 314
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private final zzdw(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 524
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzafp:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private final zzdx(J)J
    .locals 2

    .line 525
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzafp:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private final zzfd()V
    .locals 7

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahu:[Lcom/google/android/gms/internal/ads/zzhm;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 180
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhm;->isActive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 181
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    :cond_0
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhm;->flush()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 185
    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzhm;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzhm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaje:[Lcom/google/android/gms/internal/ads/zzhm;

    .line 186
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajf:[Ljava/nio/ByteBuffer;

    :goto_2
    if-ge v3, v1, :cond_2

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaje:[Lcom/google/android/gms/internal/ads/zzhm;

    aget-object v0, v0, v3

    .line 189
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhm;->flush()V

    .line 190
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajf:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhm;->zzfc()Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private final zzfg()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzie;
        }
    .end annotation

    .line 398
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajk:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 399
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaie:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaje:[Lcom/google/android/gms/internal/ads/zzhm;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajk:I

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 401
    :goto_2
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajk:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaje:[Lcom/google/android/gms/internal/ads/zzhm;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_4

    .line 402
    aget-object v4, v5, v4

    if-eqz v0, :cond_2

    .line 404
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhm;->zzfb()V

    .line 405
    :cond_2
    invoke-direct {p0, v7, v8}, Lcom/google/android/gms/internal/ads/zzhw;->zzdv(J)V

    .line 406
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhm;->zzeu()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 409
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajk:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajk:I

    goto :goto_1

    .line 411
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajh:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 412
    invoke-direct {p0, v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzhw;->zzb(Ljava/nio/ByteBuffer;J)Z

    .line 413
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajh:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return v3

    .line 415
    :cond_5
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajk:I

    return v2
.end method

.method private final zzfk()V
    .locals 2

    .line 465
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhw;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    sget v0, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzcy:F

    .line 468
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzcy:F

    .line 471
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :cond_1
    return-void
.end method

.method private final zzfl()J
    .locals 4

    .line 526
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaie:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiy:J

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaix:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiw:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzfm()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 527
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaio:J

    const/4 v2, 0x0

    .line 528
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzain:I

    .line 529
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaim:I

    .line 530
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaip:J

    .line 531
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiq:Z

    .line 532
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzair:J

    return-void
.end method

.method private final zzfn()Z
    .locals 2

    .line 534
    sget v0, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaid:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final pause()V
    .locals 1

    const/4 v0, 0x0

    .line 473
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajm:Z

    .line 474
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhw;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfm()V

    .line 476
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahy:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhy;->pause()V

    :cond_0
    return-void
.end method

.method public final play()V
    .locals 4

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajm:Z

    .line 194
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhw;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajc:J

    .line 196
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final release()V
    .locals 5

    .line 516
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->reset()V

    .line 517
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahu:[Lcom/google/android/gms/internal/ads/zzhm;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 518
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhm;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 520
    :cond_0
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajn:I

    .line 521
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajm:Z

    return-void
.end method

.method public final reset()V
    .locals 7

    .line 478
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhw;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    .line 479
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiu:J

    .line 480
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiv:J

    .line 481
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaix:J

    .line 482
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiy:J

    const/4 v2, 0x0

    .line 483
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiz:I

    .line 484
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaih:Lcom/google/android/gms/internal/ads/zzhc;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 485
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzadi:Lcom/google/android/gms/internal/ads/zzhc;

    .line 486
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaih:Lcom/google/android/gms/internal/ads/zzhc;

    goto :goto_0

    .line 487
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahz:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 488
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahz:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzif;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzif;->zza(Lcom/google/android/gms/internal/ads/zzif;)Lcom/google/android/gms/internal/ads/zzhc;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzadi:Lcom/google/android/gms/internal/ads/zzhc;

    .line 489
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahz:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 490
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaii:J

    .line 491
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaij:J

    .line 492
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajg:Ljava/nio/ByteBuffer;

    .line 493
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajh:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 494
    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaje:[Lcom/google/android/gms/internal/ads/zzhm;

    array-length v6, v5

    if-ge v3, v6, :cond_2

    .line 495
    aget-object v5, v5, v3

    .line 496
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhm;->flush()V

    .line 497
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajf:[Ljava/nio/ByteBuffer;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhm;->zzfc()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 499
    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajl:Z

    const/4 v3, -0x1

    .line 500
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajk:I

    .line 501
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaik:Ljava/nio/ByteBuffer;

    .line 502
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzail:I

    .line 503
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaja:I

    .line 504
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajd:J

    .line 505
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfm()V

    .line 506
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 508
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 509
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    .line 510
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    .line 511
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahy:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzhy;->zza(Landroid/media/AudioTrack;Z)V

    .line 512
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahw:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 513
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhz;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzhz;-><init>(Lcom/google/android/gms/internal/ads/zzhw;Landroid/media/AudioTrack;)V

    .line 514
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhz;->start()V

    :cond_4
    return-void
.end method

.method public final setStreamType(I)V
    .locals 1

    .line 442
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->streamType:I

    if-ne v0, p1, :cond_0

    return-void

    .line 444
    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->streamType:I

    .line 445
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajo:Z

    if-eqz p1, :cond_1

    return-void

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->reset()V

    const/4 p1, 0x0

    .line 448
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajn:I

    return-void
.end method

.method public final setVolume(F)V
    .locals 1

    .line 461
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzcy:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 462
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzcy:F

    .line 463
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfk()V

    :cond_0
    return-void
.end method

.method public final zza(Ljava/lang/String;IIII[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzia;
        }
    .end annotation

    const-string p5, "audio/raw"

    .line 109
    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x1

    xor-int/2addr p5, v0

    if-eqz p5, :cond_0

    .line 110
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhw;->zzbb(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p4

    :goto_0
    const/4 v1, 0x0

    if-nez p5, :cond_4

    .line 113
    invoke-static {p4, p2}, Lcom/google/android/gms/internal/ads/zzoq;->zzg(II)I

    move-result p4

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzait:I

    .line 114
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahs:Lcom/google/android/gms/internal/ads/zzih;

    invoke-virtual {p4, p6}, Lcom/google/android/gms/internal/ads/zzih;->zzb([I)V

    .line 115
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahu:[Lcom/google/android/gms/internal/ads/zzhm;

    array-length p6, p4

    move v3, p1

    move v2, p2

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_1
    if-ge p1, p6, :cond_2

    aget-object v4, p4, p1

    .line 116
    :try_start_0
    invoke-interface {v4, p3, v2, v3}, Lcom/google/android/gms/internal/ads/zzhm;->zzb(III)Z

    move-result v5
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhp; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr p2, v5

    .line 120
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhm;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 121
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhm;->zzez()I

    move-result v2

    .line 122
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhm;->zzfa()I

    move-result v3

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 119
    new-instance p2, Lcom/google/android/gms/internal/ads/zzia;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzia;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    if-eqz p2, :cond_3

    .line 125
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfd()V

    :cond_3
    move p4, p2

    move p2, v2

    move p1, v3

    goto :goto_2

    :cond_4
    const/4 p4, 0x0

    :goto_2
    const/16 p6, 0xfc

    const/16 v2, 0xc

    packed-switch p2, :pswitch_data_0

    .line 143
    new-instance p1, Lcom/google/android/gms/internal/ads/zzia;

    const/16 p3, 0x26

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Unsupported channel count: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzia;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :pswitch_0
    sget v3, Lcom/google/android/gms/internal/ads/zzgi;->CHANNEL_OUT_7POINT1_SURROUND:I

    goto :goto_3

    :pswitch_1
    const/16 v3, 0x4fc

    goto :goto_3

    :pswitch_2
    const/16 v3, 0xfc

    goto :goto_3

    :pswitch_3
    const/16 v3, 0xdc

    goto :goto_3

    :pswitch_4
    const/16 v3, 0xcc

    goto :goto_3

    :pswitch_5
    const/16 v3, 0x1c

    goto :goto_3

    :pswitch_6
    const/16 v3, 0xc

    goto :goto_3

    :pswitch_7
    const/4 v3, 0x4

    .line 144
    :goto_3
    sget v4, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    const/16 v5, 0x17

    const/4 v6, 0x5

    if-gt v4, v5, :cond_6

    sget-object v4, Lcom/google/android/gms/internal/ads/zzoq;->DEVICE:Ljava/lang/String;

    const-string v5, "foster"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/android/gms/internal/ads/zzoq;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "NVIDIA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x3

    if-eq p2, v4, :cond_7

    if-eq p2, v6, :cond_7

    const/4 p6, 0x7

    if-eq p2, p6, :cond_5

    goto :goto_4

    .line 146
    :cond_5
    sget p6, Lcom/google/android/gms/internal/ads/zzgi;->CHANNEL_OUT_7POINT1_SURROUND:I

    goto :goto_5

    :cond_6
    :goto_4
    move p6, v3

    .line 149
    :cond_7
    :goto_5
    sget v3, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    const/16 v4, 0x19

    if-gt v3, v4, :cond_8

    sget-object v3, Lcom/google/android/gms/internal/ads/zzoq;->DEVICE:Ljava/lang/String;

    const-string v4, "fugu"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p5, :cond_8

    if-ne p2, v0, :cond_8

    const/16 p6, 0xc

    :cond_8
    if-nez p4, :cond_9

    .line 151
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhw;->isInitialized()Z

    move-result p4

    if-eqz p4, :cond_9

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaic:I

    if-ne p4, p1, :cond_9

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzafp:I

    if-ne p4, p3, :cond_9

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaib:I

    if-ne p4, p6, :cond_9

    return-void

    .line 153
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->reset()V

    .line 154
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaic:I

    .line 155
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaie:Z

    .line 156
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzafp:I

    .line 157
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaib:I

    const/4 p4, 0x2

    if-eqz p5, :cond_a

    goto :goto_6

    :cond_a
    const/4 p1, 0x2

    .line 158
    :goto_6
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaid:I

    .line 159
    invoke-static {p4, p2}, Lcom/google/android/gms/internal/ads/zzoq;->zzg(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiw:I

    if-eqz p5, :cond_d

    .line 161
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaid:I

    if-eq p1, v6, :cond_c

    const/4 p2, 0x6

    if-ne p1, p2, :cond_b

    goto :goto_7

    :cond_b
    const p1, 0xc000

    goto :goto_9

    :cond_c
    :goto_7
    const/16 p1, 0x5000

    goto :goto_9

    .line 164
    :cond_d
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaid:I

    .line 165
    invoke-static {p3, p6, p1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_e

    goto :goto_8

    :cond_e
    const/4 v0, 0x0

    .line 166
    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoc;->checkState(Z)V

    shl-int/lit8 p2, p1, 0x2

    const-wide/32 p3, 0x3d090

    .line 168
    invoke-direct {p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzhw;->zzdx(J)J

    move-result-wide p3

    long-to-int p4, p3

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiw:I

    mul-int p3, p3, p4

    int-to-long v0, p1

    const-wide/32 v2, 0xb71b0

    .line 170
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzhw;->zzdx(J)J

    move-result-wide v2

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiw:I

    int-to-long v4, p1

    mul-long v2, v2, v4

    .line 171
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    if-ge p2, p3, :cond_f

    move p1, p3

    goto :goto_9

    :cond_f
    if-le p2, p1, :cond_10

    goto :goto_9

    :cond_10
    move p1, p2

    .line 174
    :goto_9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaif:I

    if-eqz p5, :cond_11

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_a

    .line 175
    :cond_11
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaif:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiw:I

    div-int/2addr p1, p2

    int-to-long p1, p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhw;->zzdw(J)J

    move-result-wide p1

    :goto_a
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaig:J

    .line 176
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzadi:Lcom/google/android/gms/internal/ads/zzhc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhw;->zzb(Lcom/google/android/gms/internal/ads/zzhc;)Lcom/google/android/gms/internal/ads/zzhc;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/nio/ByteBuffer;J)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzid;,
            Lcom/google/android/gms/internal/ads/zzie;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    .line 201
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajg:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzoc;->checkArgument(Z)V

    .line 202
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhw;->isInitialized()Z

    move-result v4

    const/4 v7, 0x0

    if-nez v4, :cond_6

    .line 204
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzahw:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    .line 205
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajo:Z

    if-eqz v4, :cond_2

    .line 206
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzafp:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaib:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaid:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaif:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajn:I

    .line 207
    new-instance v10, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v10}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 208
    invoke-virtual {v10, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    const/4 v11, 0x3

    .line 209
    invoke-virtual {v10, v11}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    const/16 v11, 0x10

    .line 210
    invoke-virtual {v10, v11}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    .line 211
    invoke-virtual {v10}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v11

    .line 212
    new-instance v10, Landroid/media/AudioFormat$Builder;

    invoke-direct {v10}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 213
    invoke-virtual {v10, v8}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    .line 214
    invoke-virtual {v8, v9}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    .line 215
    invoke-virtual {v8, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    .line 216
    invoke-virtual {v4}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v12

    .line 217
    new-instance v4, Landroid/media/AudioTrack;

    const/4 v14, 0x1

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 218
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    goto :goto_2

    .line 219
    :cond_2
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajn:I

    if-nez v4, :cond_3

    .line 220
    new-instance v4, Landroid/media/AudioTrack;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzhw;->streamType:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzafp:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaib:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaid:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaif:I

    const/4 v14, 0x1

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    goto :goto_2

    .line 221
    :cond_3
    new-instance v8, Landroid/media/AudioTrack;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzhw;->streamType:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzafp:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaib:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaid:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaif:I

    const/16 v22, 0x1

    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move/from16 v23, v4

    invoke-direct/range {v16 .. v23}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    .line 223
    :goto_2
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 234
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v4

    .line 235
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajn:I

    if-eq v8, v4, :cond_4

    .line 236
    iput v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajn:I

    .line 237
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzahv:Lcom/google/android/gms/internal/ads/zzic;

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/ads/zzic;->zzr(I)V

    .line 238
    :cond_4
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzahy:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfn()Z

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/ads/zzhy;->zza(Landroid/media/AudioTrack;Z)V

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfk()V

    .line 240
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajp:Z

    .line 241
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajm:Z

    if-eqz v4, :cond_6

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhw;->play()V

    goto :goto_4

    .line 225
    :cond_5
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 231
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    .line 232
    throw v0

    .line 229
    :catch_0
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    .line 233
    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzid;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzafp:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaib:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaif:I

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzid;-><init>(IIII)V

    throw v0

    .line 243
    :cond_6
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfn()Z

    move-result v4

    const-wide/16 v8, 0x0

    const/4 v10, 0x2

    if-eqz v4, :cond_8

    .line 244
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v10, :cond_7

    .line 245
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajp:Z

    return v5

    .line 247
    :cond_7
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v6, :cond_8

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzahy:Lcom/google/android/gms/internal/ads/zzhy;

    .line 248
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhy;->zzfo()J

    move-result-wide v11

    cmp-long v4, v11, v8

    if-eqz v4, :cond_8

    return v5

    .line 250
    :cond_8
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajp:Z

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfh()Z

    move-result v11

    iput-boolean v11, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajp:Z

    if-eqz v4, :cond_9

    .line 252
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajp:Z

    if-nez v4, :cond_9

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-eq v4, v6, :cond_9

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajq:J

    sub-long v19, v11, v13

    .line 254
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzahv:Lcom/google/android/gms/internal/ads/zzic;

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaif:I

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaig:J

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzgi;->zzdm(J)J

    move-result-wide v17

    move/from16 v16, v4

    invoke-interface/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzic;->zzc(IJJ)V

    .line 255
    :cond_9
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajg:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_17

    .line 256
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_a

    return v6

    .line 258
    :cond_a
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaie:Z

    if-eqz v4, :cond_f

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaiz:I

    if-nez v4, :cond_f

    .line 259
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaid:I

    const/4 v11, 0x7

    if-eq v4, v11, :cond_e

    const/16 v11, 0x8

    if-ne v4, v11, :cond_b

    goto :goto_5

    :cond_b
    const/4 v11, 0x5

    if-ne v4, v11, :cond_c

    .line 263
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhk;->zzey()I

    move-result v4

    goto :goto_6

    :cond_c
    const/4 v11, 0x6

    if-ne v4, v11, :cond_d

    .line 265
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzhk;->zzh(Ljava/nio/ByteBuffer;)I

    move-result v4

    goto :goto_6

    .line 266
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected audio encoding: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_e
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzig;->zzj(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 267
    :goto_6
    iput v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaiz:I

    .line 268
    :cond_f
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaih:Lcom/google/android/gms/internal/ads/zzhc;

    if-eqz v4, :cond_11

    .line 269
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfg()Z

    move-result v4

    if-nez v4, :cond_10

    return v5

    .line 271
    :cond_10
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzahz:Ljava/util/LinkedList;

    new-instance v15, Lcom/google/android/gms/internal/ads/zzif;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaih:Lcom/google/android/gms/internal/ads/zzhc;

    .line 272
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfl()J

    move-result-wide v10

    invoke-direct {v1, v10, v11}, Lcom/google/android/gms/internal/ads/zzhw;->zzdw(J)J

    move-result-wide v16

    const/4 v10, 0x0

    move-object v11, v15

    move-object v5, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzif;-><init>(Lcom/google/android/gms/internal/ads/zzhc;JJLcom/google/android/gms/internal/ads/zzhz;)V

    .line 274
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 275
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaih:Lcom/google/android/gms/internal/ads/zzhc;

    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfd()V

    .line 277
    :cond_11
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaja:I

    if-nez v4, :cond_12

    .line 278
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajb:J

    .line 279
    iput v6, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaja:I

    goto :goto_9

    .line 280
    :cond_12
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajb:J

    .line 282
    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaie:Z

    if-eqz v8, :cond_13

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaiv:J

    goto :goto_7

    :cond_13
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaiu:J

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzait:I

    int-to-long v10, v10

    div-long/2addr v8, v10

    .line 283
    :goto_7
    invoke-direct {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzhw;->zzdw(J)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 284
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaja:I

    if-ne v8, v6, :cond_14

    sub-long v8, v4, v2

    .line 285
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x30d40

    cmp-long v12, v8, v10

    if-lez v12, :cond_14

    const/16 v8, 0x50

    .line 286
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Discontinuity detected [expected "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", got "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    .line 287
    iput v8, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaja:I

    goto :goto_8

    :cond_14
    const/4 v8, 0x2

    .line 288
    :goto_8
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaja:I

    if-ne v9, v8, :cond_15

    .line 289
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajb:J

    sub-long v4, v2, v4

    add-long/2addr v8, v4

    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajb:J

    .line 290
    iput v6, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaja:I

    .line 291
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzahv:Lcom/google/android/gms/internal/ads/zzic;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzic;->zzed()V

    .line 292
    :cond_15
    :goto_9
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaie:Z

    if-eqz v4, :cond_16

    .line 293
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaiv:J

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaiz:I

    int-to-long v8, v8

    add-long/2addr v4, v8

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaiv:J

    goto :goto_a

    .line 294
    :cond_16
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaiu:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v4, v8

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaiu:J

    .line 295
    :goto_a
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajg:Ljava/nio/ByteBuffer;

    .line 296
    :cond_17
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzaie:Z

    if-eqz v0, :cond_18

    .line 297
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajg:Ljava/nio/ByteBuffer;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzhw;->zzb(Ljava/nio/ByteBuffer;J)Z

    goto :goto_b

    .line 298
    :cond_18
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhw;->zzdv(J)V

    .line 299
    :goto_b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajg:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_19

    .line 300
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzhw;->zzajg:Ljava/nio/ByteBuffer;

    return v6

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhc;)Lcom/google/android/gms/internal/ads/zzhc;
    .locals 3

    .line 426
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaie:Z

    if-eqz v0, :cond_0

    .line 427
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhc;->zzagb:Lcom/google/android/gms/internal/ads/zzhc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzadi:Lcom/google/android/gms/internal/ads/zzhc;

    .line 428
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzadi:Lcom/google/android/gms/internal/ads/zzhc;

    return-object p1

    .line 429
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaht:Lcom/google/android/gms/internal/ads/zzim;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzhc;->zzagc:F

    .line 430
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzim;->zza(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaht:Lcom/google/android/gms/internal/ads/zzim;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzhc;->zzagd:F

    .line 431
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzim;->zzb(F)F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhc;-><init>(FF)V

    .line 432
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaih:Lcom/google/android/gms/internal/ads/zzhc;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 433
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahz:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 434
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahz:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzif;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzif;->zza(Lcom/google/android/gms/internal/ads/zzif;)Lcom/google/android/gms/internal/ads/zzhc;

    move-result-object p1

    goto :goto_0

    .line 435
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzadi:Lcom/google/android/gms/internal/ads/zzhc;

    .line 436
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhc;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 437
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhw;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 438
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaih:Lcom/google/android/gms/internal/ads/zzhc;

    goto :goto_1

    .line 439
    :cond_3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzadi:Lcom/google/android/gms/internal/ads/zzhc;

    .line 440
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzadi:Lcom/google/android/gms/internal/ads/zzhc;

    return-object p1
.end method

.method public final zzba(Ljava/lang/String;)Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahr:Lcom/google/android/gms/internal/ads/zzhn;

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhw;->zzbb(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhn;->zzq(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzeu()Z
    .locals 1

    .line 417
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhw;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfh()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzfe()V
    .locals 2

    .line 198
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaja:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 199
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaja:I

    :cond_0
    return-void
.end method

.method public final zzff()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzie;
        }
    .end annotation

    .line 390
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajl:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhw;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahy:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhy;->zzdy(J)V

    const/4 v0, 0x0

    .line 394
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzail:I

    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajl:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzfh()Z
    .locals 7

    .line 418
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhw;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 419
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfl()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzahy:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhy;->zzfo()J

    move-result-wide v4

    const/4 v0, 0x1

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    .line 421
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    .line 422
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    .line 423
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method public final zzfi()Lcom/google/android/gms/internal/ads/zzhc;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzadi:Lcom/google/android/gms/internal/ads/zzhc;

    return-object v0
.end method

.method public final zzfj()V
    .locals 1

    .line 456
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 457
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajo:Z

    .line 458
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajn:I

    .line 459
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->reset()V

    :cond_0
    return-void
.end method

.method public final zzj(Z)J
    .locals 19

    move-object/from16 v0, p0

    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhw;->isInitialized()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaja:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1

    .line 38
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v4, 0x3

    const-wide/16 v5, 0x3e8

    if-ne v1, v4, :cond_8

    .line 40
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzahy:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhy;->zzfp()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-eqz v1, :cond_8

    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    div-long/2addr v11, v5

    .line 43
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaip:J

    sub-long v13, v11, v13

    const-wide/16 v15, 0x7530

    cmp-long v1, v13, v15

    if-ltz v1, :cond_3

    .line 44
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzahx:[J

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaim:I

    sub-long v13, v7, v11

    aput-wide v13, v1, v4

    add-int/2addr v4, v2

    const/16 v1, 0xa

    .line 45
    rem-int/2addr v4, v1

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaim:I

    .line 46
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzain:I

    if-ge v4, v1, :cond_2

    add-int/2addr v4, v2

    .line 47
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzain:I

    .line 48
    :cond_2
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaip:J

    .line 49
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaio:J

    const/4 v1, 0x0

    .line 50
    :goto_1
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzain:I

    if-ge v1, v2, :cond_3

    .line 51
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaio:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzahx:[J

    aget-wide v15, v4, v1

    int-to-long v9, v2

    div-long/2addr v15, v9

    add-long/2addr v13, v15

    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaio:J

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v9, 0x0

    goto :goto_1

    .line 53
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfn()Z

    move-result v1

    if-nez v1, :cond_8

    .line 54
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzair:J

    sub-long v1, v11, v1

    const-wide/32 v9, 0x7a120

    cmp-long v4, v1, v9

    if-ltz v4, :cond_8

    .line 55
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzahy:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhy;->zzfq()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiq:Z

    .line 56
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiq:Z

    const-string v2, "AudioTrack"

    if-eqz v1, :cond_6

    .line 57
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzahy:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhy;->zzfr()J

    move-result-wide v13

    div-long/2addr v13, v5

    .line 58
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzahy:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhy;->zzfs()J

    move-result-wide v5

    .line 59
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzajc:J

    cmp-long v1, v13, v9

    if-gez v1, :cond_4

    .line 60
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiq:Z

    goto :goto_2

    :cond_4
    sub-long v9, v13, v11

    .line 61
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-string v1, ", "

    const-wide/32 v17, 0x4c4b40

    cmp-long v4, v9, v17

    if-lez v4, :cond_5

    const/16 v4, 0x88

    .line 62
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiq:Z

    goto :goto_2

    .line 65
    :cond_5
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzhw;->zzdw(J)J

    move-result-wide v9

    sub-long/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v17, 0x4c4b40

    cmp-long v4, v9, v17

    if-lez v4, :cond_6

    const/16 v4, 0x8a

    .line 66
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiq:Z

    .line 69
    :cond_6
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzais:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_7

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaie:Z

    if-nez v3, :cond_7

    const/4 v3, 0x0

    .line 70
    :try_start_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaia:Landroid/media/AudioTrack;

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaig:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzajd:J

    .line 71
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzajd:J

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzajd:J

    .line 72
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzajd:J

    const-wide/32 v6, 0x4c4b40

    cmp-long v1, v4, v6

    if-lez v1, :cond_7

    .line 73
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzajd:J

    const/16 v1, 0x3d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ignoring impossibly large audio latency: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    .line 74
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzajd:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 77
    :catch_0
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzais:Ljava/lang/reflect/Method;

    .line 78
    :cond_7
    :goto_3
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzair:J

    .line 79
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 80
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaiq:Z

    if-eqz v5, :cond_9

    .line 81
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzahy:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhy;->zzfr()J

    move-result-wide v5

    div-long/2addr v5, v3

    sub-long/2addr v1, v5

    .line 82
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;->zzdx(J)J

    move-result-wide v1

    .line 83
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzahy:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhy;->zzfs()J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 84
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzhw;->zzdw(J)J

    move-result-wide v1

    goto :goto_5

    .line 86
    :cond_9
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzain:I

    if-nez v3, :cond_a

    .line 87
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzahy:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhy;->zzfp()J

    move-result-wide v1

    goto :goto_4

    .line 88
    :cond_a
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaio:J

    add-long/2addr v1, v3

    :goto_4
    if-nez p1, :cond_b

    .line 90
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzajd:J

    sub-long/2addr v1, v3

    .line 91
    :cond_b
    :goto_5
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzajb:J

    .line 92
    :goto_6
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzahz:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzahz:Ljava/util/LinkedList;

    .line 93
    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzif;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzif;->zzb(Lcom/google/android/gms/internal/ads/zzif;)J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-ltz v7, :cond_c

    .line 94
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzahz:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzif;

    .line 95
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzif;->zza(Lcom/google/android/gms/internal/ads/zzif;)Lcom/google/android/gms/internal/ads/zzhc;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzadi:Lcom/google/android/gms/internal/ads/zzhc;

    .line 96
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzif;->zzb(Lcom/google/android/gms/internal/ads/zzif;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaij:J

    .line 97
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzif;->zzc(Lcom/google/android/gms/internal/ads/zzif;)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzajb:J

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaii:J

    goto :goto_6

    .line 99
    :cond_c
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzadi:Lcom/google/android/gms/internal/ads/zzhc;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzhc;->zzagc:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_d

    .line 100
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaii:J

    add-long/2addr v1, v5

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaij:J

    sub-long/2addr v1, v5

    goto :goto_8

    .line 101
    :cond_d
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzahz:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaht:Lcom/google/android/gms/internal/ads/zzim;

    .line 102
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzim;->zzfw()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    cmp-long v9, v5, v7

    if-ltz v9, :cond_e

    .line 103
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaii:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaij:J

    sub-long v9, v1, v7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaht:Lcom/google/android/gms/internal/ads/zzim;

    .line 104
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzim;->zzfv()J

    move-result-wide v11

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaht:Lcom/google/android/gms/internal/ads/zzim;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzim;->zzfw()J

    move-result-wide v13

    .line 105
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzoq;->zza(JJJ)J

    move-result-wide v1

    goto :goto_7

    .line 107
    :cond_e
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaii:J

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzadi:Lcom/google/android/gms/internal/ads/zzhc;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzhc;->zzagc:F

    float-to-double v7, v7

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzhw;->zzaij:J

    sub-long/2addr v1, v9

    long-to-double v1, v1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v1

    double-to-long v1, v7

    :goto_7
    add-long/2addr v1, v5

    :goto_8
    add-long/2addr v3, v1

    return-wide v3
.end method

.method public final zzt(I)V
    .locals 3

    .line 450
    sget v0, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoc;->checkState(Z)V

    .line 451
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajo:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajn:I

    if-eq v0, p1, :cond_2

    .line 452
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajo:Z

    .line 453
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->zzajn:I

    .line 454
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->reset()V

    :cond_2
    return-void
.end method
