.class final Lcom/google/android/gms/internal/ads/zzgt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/gms/internal/ads/zzmc;
.implements Lcom/google/android/gms/internal/ads/zzme;
.implements Lcom/google/android/gms/internal/ads/zzni;


# instance fields
.field private repeatMode:I

.field private state:I

.field private final zzacq:[Lcom/google/android/gms/internal/ads/zzhf;

.field private final zzacr:Lcom/google/android/gms/internal/ads/zznf;

.field private final zzact:Lcom/google/android/gms/internal/ads/zzddu;

.field private final zzacw:Lcom/google/android/gms/internal/ads/zzhl;

.field private final zzacx:Lcom/google/android/gms/internal/ads/zzhi;

.field private zzacz:Z

.field private zzadd:Z

.field private zzade:Lcom/google/android/gms/internal/ads/zzhg;

.field private zzadi:Lcom/google/android/gms/internal/ads/zzhc;

.field private zzadj:Lcom/google/android/gms/internal/ads/zzgv;

.field private final zzadz:[Lcom/google/android/gms/internal/ads/zzhe;

.field private final zzaea:Lcom/google/android/gms/internal/ads/zzha;

.field private zzaeb:Lcom/google/android/gms/internal/ads/zzmb;

.field private final zzaed:Lcom/google/android/gms/internal/ads/zzoo;

.field private final zzaee:Lcom/google/android/gms/internal/ads/zzddu;

.field private final zzaef:Landroid/os/HandlerThread;

.field private final zzaeg:Lcom/google/android/gms/internal/ads/zzgk;

.field private zzaeh:Lcom/google/android/gms/internal/ads/zzhf;

.field private zzaei:Lcom/google/android/gms/internal/ads/zzog;

.field private zzaej:[Lcom/google/android/gms/internal/ads/zzhf;

.field private zzaek:Z

.field private zzael:Z

.field private zzaem:I

.field private zzaen:I

.field private zzaeo:J

.field private zzaep:I

.field private zzaeq:Lcom/google/android/gms/internal/ads/zzgu;

.field private zzaer:J

.field private zzaes:Lcom/google/android/gms/internal/ads/zzgs;

.field private zzaet:Lcom/google/android/gms/internal/ads/zzgs;

.field private zzaeu:Lcom/google/android/gms/internal/ads/zzgs;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zznf;Lcom/google/android/gms/internal/ads/zzha;ZILcom/google/android/gms/internal/ads/zzddu;Lcom/google/android/gms/internal/ads/zzgv;Lcom/google/android/gms/internal/ads/zzgk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacq:[Lcom/google/android/gms/internal/ads/zzhf;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacr:Lcom/google/android/gms/internal/ads/zznf;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaea:Lcom/google/android/gms/internal/ads/zzha;

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacz:Z

    const/4 p3, 0x0

    .line 6
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgt;->repeatMode:I

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzact:Lcom/google/android/gms/internal/ads/zzddu;

    const/4 p4, 0x1

    .line 8
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzgt;->state:I

    .line 9
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeg:Lcom/google/android/gms/internal/ads/zzgk;

    .line 11
    array-length p4, p1

    new-array p4, p4, [Lcom/google/android/gms/internal/ads/zzhe;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzadz:[Lcom/google/android/gms/internal/ads/zzhe;

    const/4 p4, 0x0

    .line 12
    :goto_0
    array-length p5, p1

    if-ge p4, p5, :cond_0

    .line 13
    aget-object p5, p1, p4

    invoke-interface {p5, p4}, Lcom/google/android/gms/internal/ads/zzhf;->setIndex(I)V

    .line 14
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzadz:[Lcom/google/android/gms/internal/ads/zzhe;

    aget-object p6, p1, p4

    invoke-interface {p6}, Lcom/google/android/gms/internal/ads/zzhf;->zzdp()Lcom/google/android/gms/internal/ads/zzhe;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzoo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzoo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaed:Lcom/google/android/gms/internal/ads/zzoo;

    .line 17
    new-array p1, p3, [Lcom/google/android/gms/internal/ads/zzhf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaej:[Lcom/google/android/gms/internal/ads/zzhf;

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacw:Lcom/google/android/gms/internal/ads/zzhl;

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    .line 20
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zznf;->zza(Lcom/google/android/gms/internal/ads/zzni;)V

    .line 21
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhc;->zzagb:Lcom/google/android/gms/internal/ads/zzhc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzadi:Lcom/google/android/gms/internal/ads/zzhc;

    .line 22
    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaef:Landroid/os/HandlerThread;

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaef:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/zzddu;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaef:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzddu;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    return-void
.end method

.method private final setState(I)V
    .locals 3

    .line 545
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->state:I

    if-eq v0, p1, :cond_0

    .line 546
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->state:I

    .line 547
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzact:Lcom/google/android/gms/internal/ads/zzddu;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/ads/zzhg;Lcom/google/android/gms/internal/ads/zzhg;)I
    .locals 6

    .line 692
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhg;->zzew()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, p1

    const/4 p1, -0x1

    :goto_0
    if-ge v2, v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 694
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacw:Lcom/google/android/gms/internal/ads/zzhl;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzgt;->repeatMode:I

    invoke-virtual {p2, v3, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Lcom/google/android/gms/internal/ads/zzhl;I)I

    move-result v3

    .line 695
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    const/4 v4, 0x1

    .line 696
    invoke-virtual {p2, v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Z)Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhi;->zzado:Ljava/lang/Object;

    .line 697
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzhg;->zzc(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private final zza(IJ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 594
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzek()V

    const/4 v0, 0x0

    .line 595
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzael:Z

    const/4 v1, 0x2

    .line 596
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgt;->setState(I)V

    .line 598
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 599
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz p1, :cond_0

    .line 600
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgs;->release()V

    :cond_0
    move-object v4, v3

    goto :goto_2

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_3

    .line 603
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzgs;->zzads:I

    if-ne v5, p1, :cond_2

    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzgs;->zzadv:Z

    if-eqz v5, :cond_2

    move-object v4, v2

    goto :goto_1

    .line 605
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgs;->release()V

    .line 606
    :goto_1
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    goto :goto_0

    .line 607
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    if-ne p1, v4, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    if-eq p1, v2, :cond_6

    .line 608
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaej:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v2, p1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_5

    aget-object v6, p1, v5

    .line 609
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzhf;->disable()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 611
    :cond_5
    new-array p1, v0, [Lcom/google/android/gms/internal/ads/zzhf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaej:[Lcom/google/android/gms/internal/ads/zzhf;

    .line 612
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaei:Lcom/google/android/gms/internal/ads/zzog;

    .line 613
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeh:Lcom/google/android/gms/internal/ads/zzhf;

    .line 614
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    :cond_6
    if-eqz v4, :cond_8

    .line 616
    iput-object v3, v4, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    .line 617
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    .line 618
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    .line 619
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzgt;->zzb(Lcom/google/android/gms/internal/ads/zzgs;)V

    .line 620
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzgs;->zzadw:Z

    if-eqz p1, :cond_7

    .line 621
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgs;->zzadn:Lcom/google/android/gms/internal/ads/zzlz;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzlz;->zzeg(J)J

    move-result-wide p1

    move-wide p2, p1

    .line 622
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzgt;->zzdq(J)V

    .line 623
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzeo()V

    goto :goto_4

    .line 624
    :cond_8
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    .line 625
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    .line 626
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    .line 627
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzgt;->zzdq(J)V

    .line 628
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzddu;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzgu;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgu;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 709
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgu;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    .line 710
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhg;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    .line 712
    :cond_0
    :try_start_0
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzgu;->zzaev:I

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzgu;->zzaew:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgt;->zzb(Lcom/google/android/gms/internal/ads/zzhg;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    if-ne v1, v0, :cond_1

    return-object p1

    .line 718
    :cond_1
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 719
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Z)Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzhi;->zzado:Ljava/lang/Object;

    .line 720
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhg;->zzc(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 722
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 723
    :cond_2
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgt;->zza(ILcom/google/android/gms/internal/ads/zzhg;Lcom/google/android/gms/internal/ads/zzhg;)I

    move-result p1

    if-eq p1, v2, :cond_3

    .line 725
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    const/4 v2, 0x0

    .line 726
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Z)Lcom/google/android/gms/internal/ads/zzhi;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 727
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgt;->zzb(IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 715
    :catch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzgu;->zzaev:I

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzgu;->zzaew:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Lcom/google/android/gms/internal/ads/zzhg;IJ)V

    throw v0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzhg;IJJ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzhg;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 731
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhg;->zzev()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzc(III)I

    .line 732
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacw:Lcom/google/android/gms/internal/ads/zzhl;

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhl;ZJ)Lcom/google/android/gms/internal/ads/zzhl;

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p3, p5

    if-nez p2, :cond_0

    .line 734
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacw:Lcom/google/android/gms/internal/ads/zzhl;

    .line 735
    iget-wide p3, p2, Lcom/google/android/gms/internal/ads/zzhl;->zzagy:J

    cmp-long p2, p3, p5

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 739
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacw:Lcom/google/android/gms/internal/ads/zzhl;

    .line 740
    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/zzhl;->zzagz:J

    add-long/2addr v2, p3

    .line 742
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    .line 743
    invoke-virtual {p1, v1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Z)Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object p1

    .line 744
    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzhi;->zzagj:J

    cmp-long p3, p1, p5

    if-eqz p3, :cond_1

    cmp-long p3, v2, p1

    .line 747
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zza(JJ)V
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzddu;->removeMessages(I)V

    add-long/2addr p1, p3

    .line 589
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    .line 591
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzddu;->sendEmptyMessage(I)Z

    return-void

    .line 592
    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    invoke-virtual {p3, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzddu;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzgs;)V
    .locals 0

    :goto_0
    if-eqz p0, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgs;->release()V

    .line 763
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzhf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 671
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhf;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 672
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhf;->stop()V

    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/Object;I)V
    .locals 4

    .line 682
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgv;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    .line 683
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgt;->zzb(Ljava/lang/Object;I)V

    .line 684
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(IJ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    const/4 p1, 0x4

    .line 685
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgt;->setState(I)V

    .line 686
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgt;->zzi(Z)V

    return-void
.end method

.method private final zza([ZI)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 789
    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzhf;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzgt;->zzaej:[Lcom/google/android/gms/internal/ads/zzhf;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 791
    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzgt;->zzacq:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v5, v4

    if-ge v2, v5, :cond_7

    .line 792
    aget-object v4, v4, v2

    .line 793
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzgs;->zzady:Lcom/google/android/gms/internal/ads/zznh;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zznh;->zzbeg:Lcom/google/android/gms/internal/ads/zzng;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzng;->zzay(I)Lcom/google/android/gms/internal/ads/zzne;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 795
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzgt;->zzaej:[Lcom/google/android/gms/internal/ads/zzhf;

    add-int/lit8 v15, v3, 0x1

    aput-object v4, v6, v3

    .line 796
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhf;->getState()I

    move-result v3

    if-nez v3, :cond_5

    .line 797
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzady:Lcom/google/android/gms/internal/ads/zznh;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zznh;->zzbei:[Lcom/google/android/gms/internal/ads/zzhh;

    aget-object v7, v3, v2

    .line 798
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzgt;->zzacz:Z

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzgt;->state:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 799
    :goto_1
    aget-boolean v8, p1, v2

    if-nez v8, :cond_1

    if-eqz v3, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    .line 800
    :goto_2
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzne;->length()I

    move-result v6

    new-array v8, v6, [Lcom/google/android/gms/internal/ads/zzgw;

    const/4 v6, 0x0

    .line 801
    :goto_3
    array-length v9, v8

    if-ge v6, v9, :cond_2

    .line 802
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zzne;->zzaw(I)Lcom/google/android/gms/internal/ads/zzgw;

    move-result-object v9

    aput-object v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 804
    :cond_2
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzgs;->zzadp:[Lcom/google/android/gms/internal/ads/zzmo;

    aget-object v9, v5, v2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzgt;->zzaer:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    .line 805
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgs;->zzef()J

    move-result-wide v13

    move-object v6, v4

    .line 806
    invoke-interface/range {v6 .. v14}, Lcom/google/android/gms/internal/ads/zzhf;->zza(Lcom/google/android/gms/internal/ads/zzhh;[Lcom/google/android/gms/internal/ads/zzgw;Lcom/google/android/gms/internal/ads/zzmo;JZJ)V

    .line 807
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhf;->zzdq()Lcom/google/android/gms/internal/ads/zzog;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 809
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzgt;->zzaei:Lcom/google/android/gms/internal/ads/zzog;

    if-nez v6, :cond_3

    .line 811
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzgt;->zzaei:Lcom/google/android/gms/internal/ads/zzog;

    .line 812
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeh:Lcom/google/android/gms/internal/ads/zzhf;

    .line 813
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgt;->zzaei:Lcom/google/android/gms/internal/ads/zzog;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzgt;->zzadi:Lcom/google/android/gms/internal/ads/zzhc;

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zzog;->zzb(Lcom/google/android/gms/internal/ads/zzhc;)Lcom/google/android/gms/internal/ads/zzhc;

    goto :goto_4

    .line 810
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple renderer media clocks enabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/zzgl;

    move-result-object v1

    throw v1

    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 815
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhf;->start()V

    :cond_5
    move v3, v15

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private final zzb(IJ)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 729
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgt;->zzb(Lcom/google/android/gms/internal/ads/zzhg;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzhg;IJ)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzhg;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 730
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgt;->zza(Lcom/google/android/gms/internal/ads/zzhg;IJJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzgs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    if-ne v0, p1, :cond_0

    return-void

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacq:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 769
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacq:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v5, v4

    if-ge v2, v5, :cond_6

    .line 770
    aget-object v4, v4, v2

    .line 771
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhf;->getState()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v0, v2

    .line 772
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzgs;->zzady:Lcom/google/android/gms/internal/ads/zznh;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zznh;->zzbeg:Lcom/google/android/gms/internal/ads/zzng;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzng;->zzay(I)Lcom/google/android/gms/internal/ads/zzne;

    move-result-object v5

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 775
    :cond_2
    aget-boolean v6, v0, v2

    if-eqz v6, :cond_5

    if-eqz v5, :cond_3

    .line 776
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhf;->zzdu()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 777
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhf;->zzdr()Lcom/google/android/gms/internal/ads/zzmo;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzgs;->zzadp:[Lcom/google/android/gms/internal/ads/zzmo;

    aget-object v6, v6, v2

    if-ne v5, v6, :cond_5

    .line 778
    :cond_3
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeh:Lcom/google/android/gms/internal/ads/zzhf;

    if-ne v4, v5, :cond_4

    .line 779
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaed:Lcom/google/android/gms/internal/ads/zzoo;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaei:Lcom/google/android/gms/internal/ads/zzog;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzoo;->zza(Lcom/google/android/gms/internal/ads/zzog;)V

    const/4 v5, 0x0

    .line 780
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaei:Lcom/google/android/gms/internal/ads/zzog;

    .line 781
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeh:Lcom/google/android/gms/internal/ads/zzhf;

    .line 782
    :cond_4
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgt;->zza(Lcom/google/android/gms/internal/ads/zzhf;)V

    .line 783
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhf;->disable()V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 785
    :cond_6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    .line 786
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzact:Lcom/google/android/gms/internal/ads/zzddu;

    const/4 v2, 0x3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgs;->zzady:Lcom/google/android/gms/internal/ads/zznh;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 787
    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzgt;->zza([ZI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;I)V
    .locals 4

    .line 688
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzact:Lcom/google/android/gms/internal/ads/zzddu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(Lcom/google/android/gms/internal/ads/zzhg;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgv;I)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 689
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private final zzdq(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x3938700

    goto :goto_0

    .line 633
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgs;->zzef()J

    move-result-wide v0

    :goto_0
    add-long/2addr p1, v0

    .line 634
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaer:J

    .line 635
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaed:Lcom/google/android/gms/internal/ads/zzoo;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaer:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzoo;->zzel(J)V

    .line 636
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaej:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 637
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaer:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhf;->zzdo(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final zzdr(J)Z
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 674
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzgv;->zzaex:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzgs;->zzadv:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final zzej()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    const/4 v0, 0x0

    .line 553
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzael:Z

    .line 554
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaed:Lcom/google/android/gms/internal/ads/zzoo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoo;->start()V

    .line 555
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaej:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 556
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhf;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzek()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaed:Lcom/google/android/gms/internal/ads/zzoo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoo;->stop()V

    .line 560
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaej:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 561
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgt;->zza(Lcom/google/android/gms/internal/ads/zzhf;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzel()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    if-nez v0, :cond_0

    return-void

    .line 566
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgs;->zzadn:Lcom/google/android/gms/internal/ads/zzlz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlz;->zzhi()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 568
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgt;->zzdq(J)V

    goto :goto_1

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeh:Lcom/google/android/gms/internal/ads/zzhf;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhf;->zzeu()Z

    move-result v0

    if-nez v0, :cond_2

    .line 570
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaei:Lcom/google/android/gms/internal/ads/zzog;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzog;->zzfp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaer:J

    .line 571
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaed:Lcom/google/android/gms/internal/ads/zzoo;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaer:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzoo;->zzel(J)V

    goto :goto_0

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaed:Lcom/google/android/gms/internal/ads/zzoo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoo;->zzfp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaer:J

    .line 573
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaer:J

    .line 574
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgs;->zzef()J

    move-result-wide v3

    sub-long/2addr v1, v3

    move-wide v0, v1

    .line 576
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/zzgv;->zzaex:J

    .line 577
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeo:J

    .line 578
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaej:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v0, v0

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_3

    move-wide v3, v1

    goto :goto_2

    .line 579
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgs;->zzadn:Lcom/google/android/gms/internal/ads/zzlz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlz;->zzhj()J

    move-result-wide v3

    .line 580
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    cmp-long v5, v3, v1

    if-nez v5, :cond_4

    .line 581
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzgs;->zzads:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    const/4 v4, 0x0

    .line 582
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Z)Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object v1

    .line 583
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzhi;->zzagj:J

    .line 585
    :cond_4
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzgv;->zzaey:J

    return-void
.end method

.method private final zzem()V
    .locals 2

    const/4 v0, 0x1

    .line 640
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;->zzi(Z)V

    .line 641
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaea:Lcom/google/android/gms/internal/ads/zzha;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzha;->onStopped()V

    .line 642
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;->setState(I)V

    return-void
.end method

.method private final zzen()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzgs;->zzadv:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    if-ne v0, v1, :cond_3

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaej:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 677
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhf;->zzds()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 680
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgs;->zzadn:Lcom/google/android/gms/internal/ads/zzlz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlz;->zzhf()V

    :cond_3
    return-void
.end method

.method private final zzeo()V
    .locals 7

    .line 748
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzgs;->zzadv:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgs;->zzadn:Lcom/google/android/gms/internal/ads/zzlz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlz;->zzhh()J

    move-result-wide v0

    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 751
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;->zzh(Z)V

    return-void

    .line 752
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaer:J

    .line 753
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgs;->zzef()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr v0, v3

    .line 756
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaea:Lcom/google/android/gms/internal/ads/zzha;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzha;->zzdt(J)Z

    move-result v0

    .line 757
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;->zzh(Z)V

    if-eqz v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgs;->zzadn:Lcom/google/android/gms/internal/ads/zzlz;

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzlz;->zzef(J)Z

    :cond_2
    return-void
.end method

.method private final zzh(Z)V
    .locals 3

    .line 549
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzadd:Z

    if-eq v0, p1, :cond_0

    .line 550
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzadd:Z

    .line 551
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzact:Lcom/google/android/gms/internal/ads/zzddu;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private final zzi(Z)V
    .locals 8

    .line 644
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzddu;->removeMessages(I)V

    const/4 v0, 0x0

    .line 645
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzael:Z

    .line 646
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaed:Lcom/google/android/gms/internal/ads/zzoo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoo;->stop()V

    const/4 v1, 0x0

    .line 647
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaei:Lcom/google/android/gms/internal/ads/zzog;

    .line 648
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeh:Lcom/google/android/gms/internal/ads/zzhf;

    const-wide/32 v2, 0x3938700

    .line 649
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaer:J

    .line 650
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaej:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 651
    :try_start_0
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgt;->zza(Lcom/google/android/gms/internal/ads/zzhf;)V

    .line 652
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhf;->disable()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgl; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    :goto_1
    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    .line 655
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 657
    :cond_0
    new-array v2, v0, [Lcom/google/android/gms/internal/ads/zzhf;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaej:[Lcom/google/android/gms/internal/ads/zzhf;

    .line 658
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v2, :cond_1

    goto :goto_3

    .line 659
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    .line 660
    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgt;->zza(Lcom/google/android/gms/internal/ads/zzgs;)V

    .line 661
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    .line 662
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    .line 663
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    .line 664
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;->zzh(Z)V

    if-eqz p1, :cond_3

    .line 666
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeb:Lcom/google/android/gms/internal/ads/zzmb;

    if-eqz p1, :cond_2

    .line 667
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzmb;->zzhs()V

    .line 668
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaeb:Lcom/google/android/gms/internal/ads/zzmb;

    .line 669
    :cond_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    :cond_3
    return-void
.end method

.method private final zzo(I)Z
    .locals 5

    .line 700
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    const/4 v2, 0x0

    .line 701
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Z)Lcom/google/android/gms/internal/ads/zzhi;

    .line 702
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacw:Lcom/google/android/gms/internal/ads/zzhl;

    .line 703
    invoke-virtual {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhl;Z)Lcom/google/android/gms/internal/ads/zzhl;

    move-result-object v0

    .line 704
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzagv:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzacw:Lcom/google/android/gms/internal/ads/zzhl;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzgt;->repeatMode:I

    .line 706
    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Lcom/google/android/gms/internal/ads/zzhl;I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 34

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    const/4 v10, 0x1

    .line 71
    :try_start_0
    iget v2, v1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgl; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v11, 0x7

    const-wide/16 v3, 0x0

    const/4 v14, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v15, 0x4

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x2

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    return v9

    .line 95
    :pswitch_0
    :try_start_1
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 96
    iput v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->repeatMode:I

    .line 97
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    goto :goto_0

    :cond_0
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    :goto_0
    if-eqz v2, :cond_9

    .line 100
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 101
    :goto_1
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    if-ne v2, v4, :cond_2

    move v4, v3

    move-object v3, v2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    move v4, v3

    move-object v3, v2

    const/4 v2, 0x0

    .line 102
    :goto_2
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget v12, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzads:I

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacw:Lcom/google/android/gms/internal/ads/zzhl;

    invoke-virtual {v11, v12, v13, v14, v1}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Lcom/google/android/gms/internal/ads/zzhl;I)I

    move-result v11

    .line 103
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v12, :cond_5

    if-eq v11, v5, :cond_5

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzgs;->zzads:I

    if-ne v12, v11, :cond_5

    .line 104
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    .line 105
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    if-ne v3, v11, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    or-int/2addr v4, v11

    .line 106
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    if-ne v3, v11, :cond_4

    const/4 v11, 0x1

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    or-int/2addr v2, v11

    goto :goto_2

    .line 108
    :cond_5
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v5, :cond_6

    .line 109
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgt;->zza(Lcom/google/android/gms/internal/ads/zzgs;)V

    .line 110
    iput-object v6, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    .line 111
    :cond_6
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzads:I

    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/ads/zzgt;->zzo(I)Z

    move-result v5

    iput-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadu:Z

    if-nez v2, :cond_7

    .line 113
    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    :cond_7
    if-nez v4, :cond_8

    .line 114
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v2, :cond_8

    .line 115
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzgs;->zzads:I

    .line 116
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzgv;->zzaex:J

    invoke-direct {v8, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgt;->zza(IJ)J

    move-result-wide v3

    .line 117
    new-instance v5, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(IJ)V

    iput-object v5, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    .line 118
    :cond_8
    iget v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->state:I

    if-ne v2, v15, :cond_9

    if-eqz v1, :cond_9

    .line 119
    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzgt;->setState(I)V

    :cond_9
    return v10

    .line 512
    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzgp;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzgl; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 513
    :try_start_2
    array-length v2, v1

    :goto_5
    if-ge v9, v2, :cond_a

    aget-object v3, v1, v9

    .line 514
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzgp;->zzacm:Lcom/google/android/gms/internal/ads/zzgm;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzgp;->zzacn:I

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgp;->zzaco:Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzgm;->zza(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 516
    :cond_a
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeb:Lcom/google/android/gms/internal/ads/zzmb;

    if-eqz v1, :cond_b

    .line 517
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzddu;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 518
    :cond_b
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzgl; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 519
    :try_start_4
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaen:I

    add-int/2addr v1, v10

    iput v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaen:I

    .line 520
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 521
    monitor-exit p0

    return v10

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 522
    monitor-enter p0
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzgl; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 523
    :try_start_6
    iget v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaen:I

    add-int/2addr v2, v10

    iput v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaen:I

    .line 524
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 525
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 526
    :try_start_7
    throw v1
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/zzgl; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 525
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1

    .line 452
    :pswitch_2
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v1, :cond_1b

    .line 453
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    const/4 v2, 0x1

    :goto_6
    if-eqz v1, :cond_1b

    .line 455
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadv:Z

    if-nez v3, :cond_c

    goto/16 :goto_d

    .line 457
    :cond_c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgs;->zzeh()Z

    move-result v3

    if-nez v3, :cond_e

    .line 458
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    if-ne v1, v3, :cond_d

    const/4 v2, 0x0

    .line 460
    :cond_d
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    goto :goto_6

    :cond_e
    if-eqz v2, :cond_18

    .line 462
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    if-eq v2, v3, :cond_f

    const/4 v2, 0x1

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    .line 463
    :goto_7
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgt;->zza(Lcom/google/android/gms/internal/ads/zzgs;)V

    .line 464
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iput-object v6, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    .line 465
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    .line 466
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    .line 467
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacq:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v3, v3

    new-array v3, v3, [Z

    .line 468
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    iget-wide v11, v5, Lcom/google/android/gms/internal/ads/zzgv;->zzaex:J

    invoke-virtual {v4, v11, v12, v2, v3}, Lcom/google/android/gms/internal/ads/zzgs;->zza(JZ[Z)J

    move-result-wide v4

    .line 469
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    iget-wide v11, v2, Lcom/google/android/gms/internal/ads/zzgv;->zzaex:J

    cmp-long v2, v4, v11

    if-eqz v2, :cond_10

    .line 470
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    iput-wide v4, v2, Lcom/google/android/gms/internal/ads/zzgv;->zzaex:J

    .line 471
    invoke-direct {v8, v4, v5}, Lcom/google/android/gms/internal/ads/zzgt;->zzdq(J)V

    .line 473
    :cond_10
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacq:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v2, v2

    new-array v2, v2, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 474
    :goto_8
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacq:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v11, v11

    if-ge v4, v11, :cond_17

    .line 475
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacq:[Lcom/google/android/gms/internal/ads/zzhf;

    aget-object v11, v11, v4

    .line 476
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhf;->getState()I

    move-result v12

    if-eqz v12, :cond_11

    const/4 v12, 0x1

    goto :goto_9

    :cond_11
    const/4 v12, 0x0

    :goto_9
    aput-boolean v12, v2, v4

    .line 477
    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzgs;->zzadp:[Lcom/google/android/gms/internal/ads/zzmo;

    aget-object v12, v12, v4

    if-eqz v12, :cond_12

    add-int/lit8 v5, v5, 0x1

    .line 480
    :cond_12
    aget-boolean v13, v2, v4

    if-eqz v13, :cond_16

    .line 481
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhf;->zzdr()Lcom/google/android/gms/internal/ads/zzmo;

    move-result-object v13

    if-eq v12, v13, :cond_15

    .line 482
    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeh:Lcom/google/android/gms/internal/ads/zzhf;

    if-ne v11, v13, :cond_14

    if-nez v12, :cond_13

    .line 484
    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaed:Lcom/google/android/gms/internal/ads/zzoo;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaei:Lcom/google/android/gms/internal/ads/zzog;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/zzoo;->zza(Lcom/google/android/gms/internal/ads/zzog;)V

    .line 485
    :cond_13
    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaei:Lcom/google/android/gms/internal/ads/zzog;

    .line 486
    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeh:Lcom/google/android/gms/internal/ads/zzhf;

    .line 487
    :cond_14
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgt;->zza(Lcom/google/android/gms/internal/ads/zzhf;)V

    .line 488
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhf;->disable()V

    goto :goto_a

    .line 489
    :cond_15
    aget-boolean v12, v3, v4

    if-eqz v12, :cond_16

    .line 490
    iget-wide v12, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaer:J

    invoke-interface {v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzhf;->zzdo(J)V

    :cond_16
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 492
    :cond_17
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzact:Lcom/google/android/gms/internal/ads/zzddu;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzady:Lcom/google/android/gms/internal/ads/zznh;

    invoke-virtual {v3, v14, v1}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 493
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 494
    invoke-direct {v8, v2, v5}, Lcom/google/android/gms/internal/ads/zzgt;->zza([ZI)V

    goto :goto_c

    .line 496
    :cond_18
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    .line 497
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    :goto_b
    if-eqz v1, :cond_19

    .line 499
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgs;->release()V

    .line 500
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    goto :goto_b

    .line 501
    :cond_19
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    .line 502
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadv:Z

    if-eqz v1, :cond_1a

    .line 503
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadt:J

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget-wide v4, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaer:J

    .line 505
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgs;->zzef()J

    move-result-wide v11

    sub-long/2addr v4, v11

    .line 506
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 507
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    invoke-virtual {v3, v1, v2, v9}, Lcom/google/android/gms/internal/ads/zzgs;->zzb(JZ)J

    .line 508
    :cond_1a
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzeo()V

    .line 509
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzel()V

    .line 510
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzddu;->sendEmptyMessage(I)Z

    :cond_1b
    :goto_d
    return v10

    .line 446
    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzlz;

    .line 447
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v2, :cond_1d

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzgs;->zzadn:Lcom/google/android/gms/internal/ads/zzlz;

    if-eq v2, v1, :cond_1c

    goto :goto_e

    .line 449
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzeo()V

    :cond_1d
    :goto_e
    return v10

    .line 359
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzlz;

    .line 360
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v2, :cond_20

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzgs;->zzadn:Lcom/google/android/gms/internal/ads/zzlz;

    if-eq v2, v1, :cond_1e

    goto :goto_f

    .line 362
    :cond_1e
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    .line 363
    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadv:Z

    .line 364
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgs;->zzeh()Z

    .line 365
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadt:J

    invoke-virtual {v1, v2, v3, v9}, Lcom/google/android/gms/internal/ads/zzgs;->zzb(JZ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadt:J

    .line 366
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    if-nez v1, :cond_1f

    .line 367
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    .line 368
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadt:J

    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzgt;->zzdq(J)V

    .line 369
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzgt;->zzb(Lcom/google/android/gms/internal/ads/zzgs;)V

    .line 370
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzeo()V

    :cond_20
    :goto_f
    return v10

    .line 372
    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 373
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    .line 374
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhg;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    .line 375
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_24

    .line 378
    iget v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaep:I

    if-lez v3, :cond_22

    .line 379
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeq:Lcom/google/android/gms/internal/ads/zzgu;

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/zzgt;->zza(Lcom/google/android/gms/internal/ads/zzgu;)Landroid/util/Pair;

    move-result-object v3

    .line 380
    iget v4, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaep:I

    .line 381
    iput v9, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaep:I

    .line 382
    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeq:Lcom/google/android/gms/internal/ads/zzgu;

    if-nez v3, :cond_21

    .line 384
    invoke-direct {v8, v1, v4}, Lcom/google/android/gms/internal/ads/zzgt;->zza(Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 386
    :cond_21
    new-instance v7, Lcom/google/android/gms/internal/ads/zzgv;

    iget-object v11, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v7, v11, v14, v15}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(IJ)V

    iput-object v7, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    goto :goto_10

    .line 387
    :cond_22
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzgv;->zzadt:J

    cmp-long v7, v3, v12

    if-nez v7, :cond_24

    .line 388
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhg;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 389
    invoke-direct {v8, v1, v9}, Lcom/google/android/gms/internal/ads/zzgt;->zza(Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 391
    :cond_23
    invoke-direct {v8, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzgt;->zzb(IJ)Landroid/util/Pair;

    move-result-object v3

    .line 392
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgv;

    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v4, v7, v14, v15}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(IJ)V

    iput-object v4, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    :cond_24
    const/4 v4, 0x0

    .line 393
    :goto_10
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v3, :cond_25

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    goto :goto_11

    .line 394
    :cond_25
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    :goto_11
    if-eqz v3, :cond_2f

    .line 396
    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzado:Ljava/lang/Object;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzhg;->zzc(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v5, :cond_29

    .line 398
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzads:I

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    invoke-direct {v8, v6, v2, v7}, Lcom/google/android/gms/internal/ads/zzgt;->zza(ILcom/google/android/gms/internal/ads/zzhg;Lcom/google/android/gms/internal/ads/zzhg;)I

    move-result v2

    if-ne v2, v5, :cond_26

    .line 400
    invoke-direct {v8, v1, v4}, Lcom/google/android/gms/internal/ads/zzgt;->zza(Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 402
    :cond_26
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    .line 404
    invoke-virtual {v6, v2, v7, v9}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Z)Lcom/google/android/gms/internal/ads/zzhi;

    .line 406
    invoke-direct {v8, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzgt;->zzb(IJ)Landroid/util/Pair;

    move-result-object v2

    .line 407
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 408
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 409
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    invoke-virtual {v2, v6, v7, v10}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Z)Lcom/google/android/gms/internal/ads/zzhi;

    .line 410
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzhi;->zzado:Ljava/lang/Object;

    .line 411
    iput v5, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzads:I

    .line 412
    :goto_12
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v7, :cond_28

    .line 413
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    .line 414
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzado:Ljava/lang/Object;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    move v7, v6

    goto :goto_13

    :cond_27
    const/4 v7, -0x1

    .line 415
    :goto_13
    iput v7, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzads:I

    goto :goto_12

    .line 416
    :cond_28
    invoke-direct {v8, v6, v11, v12}, Lcom/google/android/gms/internal/ads/zzgt;->zza(IJ)J

    move-result-wide v2

    .line 417
    new-instance v5, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(IJ)V

    iput-object v5, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    goto/16 :goto_17

    .line 419
    :cond_29
    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzgt;->zzo(I)Z

    move-result v2

    invoke-virtual {v3, v7, v2}, Lcom/google/android/gms/internal/ads/zzgs;->zzc(IZ)V

    .line 420
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    if-ne v3, v2, :cond_2a

    const/4 v2, 0x1

    goto :goto_14

    :cond_2a
    const/4 v2, 0x0

    .line 421
    :goto_14
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzgv;->zzads:I

    if-eq v7, v11, :cond_2b

    .line 422
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    .line 423
    new-instance v12, Lcom/google/android/gms/internal/ads/zzgv;

    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzgv;->zzadt:J

    invoke-direct {v12, v7, v13, v14}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(IJ)V

    .line 424
    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzgv;->zzaex:J

    iput-wide v13, v12, Lcom/google/android/gms/internal/ads/zzgv;->zzaex:J

    .line 425
    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzgv;->zzaey:J

    iput-wide v13, v12, Lcom/google/android/gms/internal/ads/zzgv;->zzaey:J

    .line 427
    iput-object v12, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    .line 428
    :cond_2b
    :goto_15
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v11, :cond_2f

    .line 430
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    .line 431
    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacw:Lcom/google/android/gms/internal/ads/zzhl;

    iget v15, v8, Lcom/google/android/gms/internal/ads/zzgt;->repeatMode:I

    invoke-virtual {v12, v7, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Lcom/google/android/gms/internal/ads/zzhl;I)I

    move-result v7

    if-eq v7, v5, :cond_2d

    .line 432
    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzgs;->zzado:Ljava/lang/Object;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    .line 433
    invoke-virtual {v13, v7, v14, v10}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Z)Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzhi;->zzado:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2d

    .line 434
    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzgt;->zzo(I)Z

    move-result v3

    invoke-virtual {v11, v7, v3}, Lcom/google/android/gms/internal/ads/zzgs;->zzc(IZ)V

    .line 435
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    if-ne v11, v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_16

    :cond_2c
    const/4 v3, 0x0

    :goto_16
    or-int/2addr v2, v3

    move-object v3, v11

    goto :goto_15

    :cond_2d
    if-nez v2, :cond_2e

    .line 437
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzgs;->zzads:I

    .line 438
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzgv;->zzaex:J

    invoke-direct {v8, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgt;->zza(IJ)J

    move-result-wide v5

    .line 439
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {v3, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(IJ)V

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    goto :goto_17

    .line 441
    :cond_2e
    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    .line 442
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iput-object v6, v2, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    .line 443
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgt;->zza(Lcom/google/android/gms/internal/ads/zzgs;)V

    .line 444
    :cond_2f
    :goto_17
    invoke-direct {v8, v1, v4}, Lcom/google/android/gms/internal/ads/zzgt;->zzb(Ljava/lang/Object;I)V

    :goto_18
    return v10

    .line 351
    :pswitch_6
    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzgt;->zzi(Z)V

    .line 352
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaea:Lcom/google/android/gms/internal/ads/zzha;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzha;->zzes()V

    .line 353
    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzgt;->setState(I)V

    .line 354
    monitor-enter p0
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzgl; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    .line 355
    :try_start_a
    iput-boolean v10, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaek:Z

    .line 356
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 357
    monitor-exit p0

    return v10

    :catchall_3
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1

    .line 348
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzem()V

    return v10

    .line 341
    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhc;

    .line 342
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaei:Lcom/google/android/gms/internal/ads/zzog;

    if-eqz v2, :cond_30

    .line 343
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaei:Lcom/google/android/gms/internal/ads/zzog;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzog;->zzb(Lcom/google/android/gms/internal/ads/zzhc;)Lcom/google/android/gms/internal/ads/zzhc;

    move-result-object v1

    goto :goto_19

    .line 344
    :cond_30
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaed:Lcom/google/android/gms/internal/ads/zzoo;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzoo;->zzb(Lcom/google/android/gms/internal/ads/zzhc;)Lcom/google/android/gms/internal/ads/zzhc;

    move-result-object v1

    .line 345
    :goto_19
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadi:Lcom/google/android/gms/internal/ads/zzhc;

    .line 346
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzact:Lcom/google/android/gms/internal/ads/zzddu;

    invoke-virtual {v2, v11, v1}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return v10

    .line 308
    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgu;

    .line 309
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    if-nez v2, :cond_31

    .line 310
    iget v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaep:I

    add-int/2addr v2, v10

    iput v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaep:I

    .line 311
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeq:Lcom/google/android/gms/internal/ads/zzgu;

    goto/16 :goto_1e

    .line 313
    :cond_31
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzgt;->zza(Lcom/google/android/gms/internal/ads/zzgu;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_32

    .line 315
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {v1, v9, v3, v4}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    .line 316
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzact:Lcom/google/android/gms/internal/ads/zzddu;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    invoke-virtual {v1, v15, v10, v9, v2}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 317
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {v1, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    .line 318
    invoke-direct {v8, v15}, Lcom/google/android/gms/internal/ads/zzgt;->setState(I)V

    .line 319
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzgt;->zzi(Z)V

    goto :goto_1e

    .line 321
    :cond_32
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzgu;->zzaew:J

    cmp-long v1, v3, v12

    if-nez v1, :cond_33

    const/4 v1, 0x1

    goto :goto_1a

    :cond_33
    const/4 v1, 0x0

    .line 322
    :goto_1a
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 323
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/zzgl; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    .line 324
    :try_start_c
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzgv;->zzads:I

    if-ne v3, v2, :cond_35

    const-wide/16 v6, 0x3e8

    div-long v11, v4, v6

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    iget-wide v13, v2, Lcom/google/android/gms/internal/ads/zzgv;->zzaex:J

    div-long/2addr v13, v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    cmp-long v2, v11, v13

    if-nez v2, :cond_35

    .line 325
    :try_start_d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(IJ)V

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    .line 326
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzact:Lcom/google/android/gms/internal/ads/zzddu;

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    goto :goto_1b

    :cond_34
    const/4 v1, 0x0

    :goto_1b
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    invoke-virtual {v2, v15, v1, v9, v3}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/zzgl; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_1e

    .line 329
    :cond_35
    :try_start_e
    invoke-direct {v8, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgt;->zza(IJ)J

    move-result-wide v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    cmp-long v2, v4, v6

    if-eqz v2, :cond_36

    const/4 v2, 0x1

    goto :goto_1c

    :cond_36
    const/4 v2, 0x0

    :goto_1c
    or-int/2addr v1, v2

    .line 332
    :try_start_f
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {v2, v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(IJ)V

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    .line 333
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzact:Lcom/google/android/gms/internal/ads/zzddu;

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    goto :goto_1d

    :cond_37
    const/4 v1, 0x0

    :goto_1d
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    invoke-virtual {v2, v15, v1, v9, v3}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_1e
    return v10

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 336
    new-instance v6, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {v6, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(IJ)V

    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    .line 337
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzact:Lcom/google/android/gms/internal/ads/zzddu;

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    goto :goto_1f

    :cond_38
    const/4 v1, 0x0

    :goto_1f
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    invoke-virtual {v3, v15, v1, v9, v4}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 338
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 339
    throw v2

    .line 122
    :pswitch_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 124
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    if-nez v1, :cond_39

    .line 125
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeb:Lcom/google/android/gms/internal/ads/zzmb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzmb;->zzhr()V

    move-wide v14, v5

    goto/16 :goto_31

    .line 128
    :cond_39
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    if-nez v1, :cond_3a

    .line 129
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzgv;->zzads:I

    goto :goto_20

    .line 130
    :cond_3a
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzads:I

    .line 131
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzgs;->zzadu:Z

    if-nez v2, :cond_3d

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgs;->zzeg()Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    .line 133
    invoke-virtual {v2, v1, v7, v9}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Z)Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object v2

    .line 134
    iget-wide v14, v2, Lcom/google/android/gms/internal/ads/zzhi;->zzagj:J

    cmp-long v2, v14, v12

    if-nez v2, :cond_3b

    goto :goto_21

    .line 137
    :cond_3b
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v2, :cond_3c

    .line 138
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzgs;->index:I

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzgs;->index:I

    sub-int/2addr v2, v7

    const/16 v7, 0x64

    if-eq v2, v7, :cond_3d

    .line 140
    :cond_3c
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacw:Lcom/google/android/gms/internal/ads/zzhl;

    iget v15, v8, Lcom/google/android/gms/internal/ads/zzgt;->repeatMode:I

    invoke-virtual {v2, v1, v7, v14, v15}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Lcom/google/android/gms/internal/ads/zzhl;I)I

    move-result v1

    .line 141
    :goto_20
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhg;->zzew()I

    move-result v2

    if-lt v1, v2, :cond_3e

    .line 142
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeb:Lcom/google/android/gms/internal/ads/zzmb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzmb;->zzhr()V

    :cond_3d
    :goto_21
    move-wide v14, v5

    goto/16 :goto_27

    .line 144
    :cond_3e
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    if-nez v2, :cond_3f

    .line 145
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzgv;->zzaex:J

    :goto_22
    move-wide v14, v5

    goto :goto_23

    .line 146
    :cond_3f
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    .line 147
    invoke-virtual {v2, v1, v7, v9}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Z)Lcom/google/android/gms/internal/ads/zzhi;

    .line 148
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacw:Lcom/google/android/gms/internal/ads/zzhl;

    .line 150
    invoke-virtual {v2, v9, v7, v9}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhl;Z)Lcom/google/android/gms/internal/ads/zzhl;

    if-eqz v1, :cond_40

    goto :goto_22

    .line 153
    :cond_40
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgs;->zzef()J

    move-result-wide v1

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget v14, v14, Lcom/google/android/gms/internal/ads/zzgs;->zzads:I

    iget-object v15, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    .line 155
    invoke-virtual {v7, v14, v15, v9}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Z)Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object v7

    .line 156
    iget-wide v14, v7, Lcom/google/android/gms/internal/ads/zzhi;->zzagj:J

    add-long/2addr v1, v14

    .line 157
    iget-wide v14, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaer:J

    sub-long/2addr v1, v14

    .line 158
    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    const/4 v14, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 159
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v14

    move-wide v14, v5

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    .line 160
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzgt;->zza(Lcom/google/android/gms/internal/ads/zzhg;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 162
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 163
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move v1, v2

    .line 164
    :goto_23
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    if-nez v2, :cond_41

    const-wide/32 v5, 0x3938700

    add-long/2addr v5, v3

    :goto_24
    move-wide/from16 v23, v5

    goto :goto_25

    .line 166
    :cond_41
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgs;->zzef()J

    move-result-wide v5

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzgs;->zzads:I

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    .line 168
    invoke-virtual {v2, v7, v11, v9}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Z)Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object v2

    .line 169
    iget-wide v12, v2, Lcom/google/android/gms/internal/ads/zzhi;->zzagj:J

    add-long/2addr v5, v12

    goto :goto_24

    .line 171
    :goto_25
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    if-nez v2, :cond_42

    const/16 v29, 0x0

    goto :goto_26

    :cond_42
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzgs;->index:I

    add-int/2addr v2, v10

    move/from16 v29, v2

    .line 172
    :goto_26
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzgt;->zzo(I)Z

    move-result v31

    .line 173
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    invoke-virtual {v2, v1, v5, v10}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Z)Lcom/google/android/gms/internal/ads/zzhi;

    .line 174
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacq:[Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadz:[Lcom/google/android/gms/internal/ads/zzhe;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacr:Lcom/google/android/gms/internal/ads/zznf;

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaea:Lcom/google/android/gms/internal/ads/zzha;

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeb:Lcom/google/android/gms/internal/ads/zzmb;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzhi;->zzado:Ljava/lang/Object;

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move/from16 v30, v1

    move-wide/from16 v32, v3

    invoke-direct/range {v20 .. v33}, Lcom/google/android/gms/internal/ads/zzgs;-><init>([Lcom/google/android/gms/internal/ads/zzhf;[Lcom/google/android/gms/internal/ads/zzhe;JLcom/google/android/gms/internal/ads/zznf;Lcom/google/android/gms/internal/ads/zzha;Lcom/google/android/gms/internal/ads/zzmb;Ljava/lang/Object;IIZJ)V

    .line 175
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v1, :cond_43

    .line 176
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    .line 177
    :cond_43
    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    .line 178
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadn:Lcom/google/android/gms/internal/ads/zzlz;

    invoke-interface {v1, v8, v3, v4}, Lcom/google/android/gms/internal/ads/zzlz;->zza(Lcom/google/android/gms/internal/ads/zzmc;J)V

    .line 179
    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzgt;->zzh(Z)V

    .line 180
    :cond_44
    :goto_27
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v1, :cond_46

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgs;->zzeg()Z

    move-result v1

    if-eqz v1, :cond_45

    goto :goto_28

    .line 182
    :cond_45
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v1, :cond_47

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadd:Z

    if-nez v1, :cond_47

    .line 183
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzeo()V

    goto :goto_29

    .line 181
    :cond_46
    :goto_28
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzgt;->zzh(Z)V

    .line 184
    :cond_47
    :goto_29
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v1, :cond_51

    .line 185
    :goto_2a
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    if-eq v1, v2, :cond_48

    iget-wide v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaer:J

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadr:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_48

    .line 186
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgs;->release()V

    .line 187
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzgt;->zzb(Lcom/google/android/gms/internal/ads/zzgs;)V

    .line 188
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgv;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzgs;->zzads:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadt:J

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzel()V

    .line 190
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzact:Lcom/google/android/gms/internal/ads/zzddu;

    const/4 v2, 0x5

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2a

    .line 191
    :cond_48
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadu:Z

    if-eqz v1, :cond_4a

    const/4 v1, 0x0

    .line 192
    :goto_2b
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacq:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v2, v2

    if-ge v1, v2, :cond_51

    .line 193
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacq:[Lcom/google/android/gms/internal/ads/zzhf;

    aget-object v2, v2, v1

    .line 194
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadp:[Lcom/google/android/gms/internal/ads/zzmo;

    aget-object v3, v3, v1

    if-eqz v3, :cond_49

    .line 195
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhf;->zzdr()Lcom/google/android/gms/internal/ads/zzmo;

    move-result-object v4

    if-ne v4, v3, :cond_49

    .line 196
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhf;->zzds()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 197
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhf;->zzdt()V

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_4a
    const/4 v1, 0x0

    .line 200
    :goto_2c
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacq:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v2, v2

    if-ge v1, v2, :cond_4c

    .line 201
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacq:[Lcom/google/android/gms/internal/ads/zzhf;

    aget-object v2, v2, v1

    .line 202
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadp:[Lcom/google/android/gms/internal/ads/zzmo;

    aget-object v3, v3, v1

    .line 203
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhf;->zzdr()Lcom/google/android/gms/internal/ads/zzmo;

    move-result-object v4

    if-ne v4, v3, :cond_51

    if-eqz v3, :cond_4b

    .line 204
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhf;->zzds()Z

    move-result v2

    if-nez v2, :cond_4b

    goto/16 :goto_31

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 207
    :cond_4c
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    if-eqz v1, :cond_51

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadv:Z

    if-eqz v1, :cond_51

    .line 208
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzady:Lcom/google/android/gms/internal/ads/zznh;

    .line 209
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzgs;->zzadx:Lcom/google/android/gms/internal/ads/zzgs;

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    .line 210
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzgs;->zzady:Lcom/google/android/gms/internal/ads/zznh;

    .line 211
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadn:Lcom/google/android/gms/internal/ads/zzlz;

    .line 212
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzlz;->zzhi()J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4d

    const/4 v3, 0x1

    goto :goto_2d

    :cond_4d
    const/4 v3, 0x0

    :goto_2d
    const/4 v4, 0x0

    .line 213
    :goto_2e
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacq:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v5, v5

    if-ge v4, v5, :cond_51

    .line 214
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacq:[Lcom/google/android/gms/internal/ads/zzhf;

    aget-object v5, v5, v4

    .line 215
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zznh;->zzbeg:Lcom/google/android/gms/internal/ads/zzng;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzng;->zzay(I)Lcom/google/android/gms/internal/ads/zzne;

    move-result-object v6

    if-eqz v6, :cond_50

    if-nez v3, :cond_4f

    .line 218
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhf;->zzdu()Z

    move-result v6

    if-nez v6, :cond_50

    .line 219
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zznh;->zzbeg:Lcom/google/android/gms/internal/ads/zzng;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzng;->zzay(I)Lcom/google/android/gms/internal/ads/zzne;

    move-result-object v6

    .line 220
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zznh;->zzbei:[Lcom/google/android/gms/internal/ads/zzhh;

    aget-object v7, v7, v4

    .line 221
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zznh;->zzbei:[Lcom/google/android/gms/internal/ads/zzhh;

    aget-object v11, v11, v4

    if-eqz v6, :cond_4f

    .line 222
    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzhh;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 223
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzne;->length()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzgw;

    const/4 v11, 0x0

    .line 224
    :goto_2f
    array-length v12, v7

    if-ge v11, v12, :cond_4e

    .line 225
    invoke-interface {v6, v11}, Lcom/google/android/gms/internal/ads/zzne;->zzaw(I)Lcom/google/android/gms/internal/ads/zzgw;

    move-result-object v12

    aput-object v12, v7, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2f

    .line 227
    :cond_4e
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzgs;->zzadp:[Lcom/google/android/gms/internal/ads/zzmo;

    aget-object v6, v6, v4

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaet:Lcom/google/android/gms/internal/ads/zzgs;

    .line 228
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzgs;->zzef()J

    move-result-wide v11

    .line 229
    invoke-interface {v5, v7, v6, v11, v12}, Lcom/google/android/gms/internal/ads/zzhf;->zza([Lcom/google/android/gms/internal/ads/zzgw;Lcom/google/android/gms/internal/ads/zzmo;J)V

    goto :goto_30

    .line 231
    :cond_4f
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhf;->zzdt()V

    :cond_50
    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 233
    :cond_51
    :goto_31
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    const-wide/16 v2, 0xa

    if-nez v1, :cond_52

    .line 234
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzen()V

    .line 235
    invoke-direct {v8, v14, v15, v2, v3}, Lcom/google/android/gms/internal/ads/zzgt;->zza(JJ)V

    goto/16 :goto_3e

    :cond_52
    const-string v1, "doSomeWork"

    .line 237
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzon;->beginSection(Ljava/lang/String;)V

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzel()V

    .line 239
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzadn:Lcom/google/android/gms/internal/ads/zzlz;

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzgv;->zzaex:J

    invoke-interface {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzlz;->zzee(J)V

    .line 242
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaej:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    :goto_32
    if-ge v5, v4, :cond_58

    aget-object v11, v1, v5

    .line 243
    iget-wide v12, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaer:J

    iget-wide v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeo:J

    invoke-interface {v11, v12, v13, v2, v3}, Lcom/google/android/gms/internal/ads/zzhf;->zzb(JJ)V

    if-eqz v7, :cond_53

    .line 244
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhf;->zzeu()Z

    move-result v2

    if-eqz v2, :cond_53

    const/4 v7, 0x1

    goto :goto_33

    :cond_53
    const/4 v7, 0x0

    .line 245
    :goto_33
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhf;->isReady()Z

    move-result v2

    if-nez v2, :cond_55

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhf;->zzeu()Z

    move-result v2

    if-eqz v2, :cond_54

    goto :goto_34

    :cond_54
    const/4 v2, 0x0

    goto :goto_35

    :cond_55
    :goto_34
    const/4 v2, 0x1

    :goto_35
    if-nez v2, :cond_56

    .line 247
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhf;->zzdv()V

    :cond_56
    if-eqz v6, :cond_57

    if-eqz v2, :cond_57

    const/4 v6, 0x1

    goto :goto_36

    :cond_57
    const/4 v6, 0x0

    :goto_36
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v2, 0xa

    goto :goto_32

    :cond_58
    if-nez v6, :cond_59

    .line 251
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzen()V

    .line 252
    :cond_59
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaei:Lcom/google/android/gms/internal/ads/zzog;

    if-eqz v1, :cond_5a

    .line 253
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaei:Lcom/google/android/gms/internal/ads/zzog;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzog;->zzfi()Lcom/google/android/gms/internal/ads/zzhc;

    move-result-object v1

    .line 254
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadi:Lcom/google/android/gms/internal/ads/zzhc;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 255
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadi:Lcom/google/android/gms/internal/ads/zzhc;

    .line 256
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaed:Lcom/google/android/gms/internal/ads/zzoo;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaei:Lcom/google/android/gms/internal/ads/zzog;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzoo;->zza(Lcom/google/android/gms/internal/ads/zzog;)V

    .line 257
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzact:Lcom/google/android/gms/internal/ads/zzddu;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 259
    :cond_5a
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzgs;->zzads:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    .line 260
    invoke-virtual {v1, v2, v3, v9}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Z)Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object v1

    .line 261
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzhi;->zzagj:J

    if-eqz v7, :cond_5c

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5b

    .line 263
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzgv;->zzaex:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_5c

    :cond_5b
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeu:Lcom/google/android/gms/internal/ads/zzgs;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzadu:Z

    if-eqz v3, :cond_5c

    const/4 v3, 0x4

    .line 264
    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/zzgt;->setState(I)V

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzek()V

    const/4 v4, 0x2

    goto/16 :goto_3b

    .line 266
    :cond_5c
    iget v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_62

    .line 267
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaej:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v3, v3

    if-lez v3, :cond_61

    if-eqz v6, :cond_60

    .line 268
    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzael:Z

    .line 269
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzgs;->zzadv:Z

    if-nez v2, :cond_5d

    .line 270
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzgs;->zzadt:J

    goto :goto_37

    .line 271
    :cond_5d
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzgs;->zzadn:Lcom/google/android/gms/internal/ads/zzlz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzlz;->zzhj()J

    move-result-wide v2

    :goto_37
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v2, v5

    if-nez v7, :cond_5f

    .line 273
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzgs;->zzadu:Z

    if-eqz v2, :cond_5e

    const/4 v1, 0x1

    goto :goto_38

    .line 275
    :cond_5e
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzade:Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzgs;->zzads:I

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacx:Lcom/google/android/gms/internal/ads/zzhi;

    .line 276
    invoke-virtual {v2, v3, v5, v9}, Lcom/google/android/gms/internal/ads/zzhg;->zza(ILcom/google/android/gms/internal/ads/zzhi;Z)Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object v2

    .line 277
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzhi;->zzagj:J

    .line 279
    :cond_5f
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaea:Lcom/google/android/gms/internal/ads/zzha;

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaes:Lcom/google/android/gms/internal/ads/zzgs;

    iget-wide v11, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaer:J

    .line 281
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgs;->zzef()J

    move-result-wide v6

    sub-long/2addr v11, v6

    sub-long/2addr v2, v11

    .line 283
    invoke-interface {v5, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzha;->zzc(JZ)Z

    move-result v1

    :goto_38
    if-eqz v1, :cond_60

    const/4 v1, 0x1

    goto :goto_39

    :cond_60
    const/4 v1, 0x0

    goto :goto_39

    .line 285
    :cond_61
    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzgt;->zzdr(J)Z

    move-result v1

    :goto_39
    if-eqz v1, :cond_64

    const/4 v1, 0x3

    .line 287
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzgt;->setState(I)V

    .line 288
    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacz:Z

    if-eqz v1, :cond_64

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzej()V

    goto :goto_3b

    .line 290
    :cond_62
    iget v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->state:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_64

    .line 291
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaej:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v3, v3

    if-lez v3, :cond_63

    goto :goto_3a

    .line 292
    :cond_63
    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzgt;->zzdr(J)Z

    move-result v6

    :goto_3a
    if-nez v6, :cond_64

    .line 294
    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacz:Z

    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzael:Z

    .line 295
    invoke-direct {v8, v4}, Lcom/google/android/gms/internal/ads/zzgt;->setState(I)V

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzek()V

    .line 297
    :cond_64
    :goto_3b
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->state:I

    if-ne v1, v4, :cond_65

    .line 298
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaej:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v2, v1

    :goto_3c
    if-ge v9, v2, :cond_65

    aget-object v3, v1, v9

    .line 299
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhf;->zzdv()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3c

    .line 301
    :cond_65
    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacz:Z

    if-eqz v1, :cond_66

    iget v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_67

    :cond_66
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->state:I

    if-ne v1, v4, :cond_68

    :cond_67
    const-wide/16 v1, 0xa

    .line 302
    invoke-direct {v8, v14, v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzgt;->zza(JJ)V

    goto :goto_3d

    .line 303
    :cond_68
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaej:[Lcom/google/android/gms/internal/ads/zzhf;

    array-length v1, v1

    if-eqz v1, :cond_69

    const-wide/16 v1, 0x3e8

    .line 304
    invoke-direct {v8, v14, v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzgt;->zza(JJ)V

    goto :goto_3d

    .line 305
    :cond_69
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzddu;->removeMessages(I)V

    .line 306
    :goto_3d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzon;->endSection()V

    :goto_3e
    return v10

    :pswitch_b
    const/4 v4, 0x2

    .line 83
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_6a

    const/4 v1, 0x1

    goto :goto_3f

    :cond_6a
    const/4 v1, 0x0

    .line 84
    :goto_3f
    iput-boolean v9, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzael:Z

    .line 85
    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzacz:Z

    if-nez v1, :cond_6b

    .line 87
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzek()V

    .line 88
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzel()V

    goto :goto_40

    .line 89
    :cond_6b
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6c

    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzej()V

    .line 91
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzddu;->sendEmptyMessage(I)Z

    goto :goto_40

    .line 92
    :cond_6c
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->state:I

    if-ne v1, v4, :cond_6d

    .line 93
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzddu;->sendEmptyMessage(I)Z

    :cond_6d
    :goto_40
    return v10

    :pswitch_c
    const/4 v4, 0x2

    .line 72
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzmb;

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_6e

    const/4 v1, 0x1

    goto :goto_41

    :cond_6e
    const/4 v1, 0x0

    .line 73
    :goto_41
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzact:Lcom/google/android/gms/internal/ads/zzddu;

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzddu;->sendEmptyMessage(I)Z

    .line 74
    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzgt;->zzi(Z)V

    .line 75
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaea:Lcom/google/android/gms/internal/ads/zzha;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzha;->zzer()V

    if-eqz v1, :cond_6f

    .line 77
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgv;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v9, v5, v6}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzadj:Lcom/google/android/gms/internal/ads/zzgv;

    .line 78
    :cond_6f
    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeb:Lcom/google/android/gms/internal/ads/zzmb;

    .line 79
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaeg:Lcom/google/android/gms/internal/ads/zzgk;

    invoke-interface {v2, v1, v10, v8}, Lcom/google/android/gms/internal/ads/zzmb;->zza(Lcom/google/android/gms/internal/ads/zzgk;ZLcom/google/android/gms/internal/ads/zzme;)V

    .line 80
    invoke-direct {v8, v4}, Lcom/google/android/gms/internal/ads/zzgt;->setState(I)V

    .line 81
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzddu;->sendEmptyMessage(I)Z
    :try_end_f
    .catch Lcom/google/android/gms/internal/ads/zzgl; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    return v10

    :catch_0
    move-exception v0

    move-object v1, v0

    const/16 v3, 0x8

    goto :goto_42

    :catch_1
    move-exception v0

    move-object v1, v0

    const/16 v3, 0x8

    goto :goto_43

    :catch_2
    move-exception v0

    move-object v1, v0

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Internal runtime error."

    .line 540
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzact:Lcom/google/android/gms/internal/ads/zzddu;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/zzgl;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 542
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 543
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzem()V

    return v10

    :catch_3
    move-exception v0

    const/16 v3, 0x8

    move-object v1, v0

    :goto_42
    const-string v2, "ExoPlayerImplInternal"

    const-string v4, "Source error."

    .line 535
    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzact:Lcom/google/android/gms/internal/ads/zzddu;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Ljava/io/IOException;)Lcom/google/android/gms/internal/ads/zzgl;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 537
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzem()V

    return v10

    :catch_4
    move-exception v0

    const/16 v3, 0x8

    move-object v1, v0

    :goto_43
    const-string v2, "ExoPlayerImplInternal"

    const-string v4, "Renderer error."

    .line 530
    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgt;->zzact:Lcom/google/android/gms/internal/ads/zzddu;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 532
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzem()V

    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 54
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaek:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 55
    monitor-exit p0

    return-void

    .line 56
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzddu;->sendEmptyMessage(I)Z

    .line 57
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaek:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 58
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 61
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaef:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public final stop()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzddu;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzhg;IJ)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgu;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzgu;-><init>(Lcom/google/android/gms/internal/ads/zzhg;IJ)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzlz;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzmb;Z)V
    .locals 2

    .line 26
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzmn;)V
    .locals 2

    .line 818
    check-cast p1, Lcom/google/android/gms/internal/ads/zzlz;

    .line 819
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final varargs zza([Lcom/google/android/gms/internal/ads/zzgp;)V
    .locals 2

    .line 36
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaek:Z

    if-eqz v0, :cond_0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    .line 37
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 39
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaem:I

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhg;Ljava/lang/Object;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final varargs declared-synchronized zzb([Lcom/google/android/gms/internal/ads/zzgp;)V
    .locals 3

    monitor-enter p0

    .line 42
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaek:Z

    if-eqz v0, :cond_0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    .line 43
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaem:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaem:I

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 47
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p1, v0, :cond_1

    .line 48
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 51
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 53
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public final zzei()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzddu;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final zzf(Z)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzaee:Lcom/google/android/gms/internal/ads/zzddu;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzddu;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
