.class public final Lcom/google/android/gms/internal/ads/zzdmn;
.super Lcom/google/android/gms/internal/ads/zzdrt;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdtg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdmn$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdrt<",
        "Lcom/google/android/gms/internal/ads/zzdmn;",
        "Lcom/google/android/gms/internal/ads/zzdmn$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdtg;"
    }
.end annotation


# static fields
.field private static volatile zzdz:Lcom/google/android/gms/internal/ads/zzdtn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "Lcom/google/android/gms/internal/ads/zzdmn;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhbu:Lcom/google/android/gms/internal/ads/zzdmn;


# instance fields
.field private zzhaa:I

.field private zzhbk:Lcom/google/android/gms/internal/ads/zzdmj;

.field private zzhbs:Lcom/google/android/gms/internal/ads/zzdqk;

.field private zzhbt:Lcom/google/android/gms/internal/ads/zzdqk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdmn;-><init>()V

    .line 48
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhbu:Lcom/google/android/gms/internal/ads/zzdmn;

    .line 49
    const-class v1, Lcom/google/android/gms/internal/ads/zzdmn;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdrt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdrt;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrt;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqk;->zzhhx:Lcom/google/android/gms/internal/ads/zzdqk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhbs:Lcom/google/android/gms/internal/ads/zzdqk;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqk;->zzhhx:Lcom/google/android/gms/internal/ads/zzdqk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhbt:Lcom/google/android/gms/internal/ads/zzdqk;

    return-void
.end method

.method private final setVersion(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhaa:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdmn;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdmn;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdmn;Lcom/google/android/gms/internal/ads/zzdmj;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdmn;->zzb(Lcom/google/android/gms/internal/ads/zzdmj;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdmn;Lcom/google/android/gms/internal/ads/zzdqk;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdmn;->zzan(Lcom/google/android/gms/internal/ads/zzdqk;)V

    return-void
.end method

.method private final zzan(Lcom/google/android/gms/internal/ads/zzdqk;)V
    .locals 0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhbs:Lcom/google/android/gms/internal/ads/zzdqk;

    return-void
.end method

.method private final zzao(Lcom/google/android/gms/internal/ads/zzdqk;)V
    .locals 0

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhbt:Lcom/google/android/gms/internal/ads/zzdqk;

    return-void
.end method

.method public static zzap(Lcom/google/android/gms/internal/ads/zzdqk;)Lcom/google/android/gms/internal/ads/zzdmn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdse;
        }
    .end annotation

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhbu:Lcom/google/android/gms/internal/ads/zzdmn;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdrt;->zza(Lcom/google/android/gms/internal/ads/zzdrt;Lcom/google/android/gms/internal/ads/zzdqk;)Lcom/google/android/gms/internal/ads/zzdrt;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdmn;

    return-object p0
.end method

.method public static zzaur()Lcom/google/android/gms/internal/ads/zzdmn$zza;
    .locals 1

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhbu:Lcom/google/android/gms/internal/ads/zzdmn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrt;->zzazt()Lcom/google/android/gms/internal/ads/zzdrt$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdmn$zza;

    return-object v0
.end method

.method public static zzaus()Lcom/google/android/gms/internal/ads/zzdmn;
    .locals 1

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhbu:Lcom/google/android/gms/internal/ads/zzdmn;

    return-object v0
.end method

.method static synthetic zzaut()Lcom/google/android/gms/internal/ads/zzdmn;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhbu:Lcom/google/android/gms/internal/ads/zzdmn;

    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzdmj;)V
    .locals 0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhbk:Lcom/google/android/gms/internal/ads/zzdmj;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdmn;Lcom/google/android/gms/internal/ads/zzdqk;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdmn;->zzao(Lcom/google/android/gms/internal/ads/zzdqk;)V

    return-void
.end method


# virtual methods
.method public final getVersion()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhaa:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 22
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdmm;->zzdk:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 40
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 38
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdmn;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    if-nez p1, :cond_1

    .line 31
    const-class p2, Lcom/google/android/gms/internal/ads/zzdmn;

    monitor-enter p2

    .line 32
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdmn;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdrt$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdmn;->zzhbu:Lcom/google/android/gms/internal/ads/zzdmn;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdrt$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdrt;)V

    .line 35
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdmn;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    .line 36
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 28
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdmn;->zzhbu:Lcom/google/android/gms/internal/ads/zzdmn;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    .line 25
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhaa"

    aput-object v0, p1, p2

    const-string p2, "zzhbk"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzhbs"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzhbt"

    aput-object p3, p1, p2

    .line 27
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdmn;->zzhbu:Lcom/google/android/gms/internal/ads/zzdmn;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdmn;->zza(Lcom/google/android/gms/internal/ads/zzdte;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdmn$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdmn$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdmm;)V

    return-object p1

    .line 23
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdmn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdmn;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzauf()Lcom/google/android/gms/internal/ads/zzdmj;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhbk:Lcom/google/android/gms/internal/ads/zzdmj;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdmj;->zzauk()Lcom/google/android/gms/internal/ads/zzdmj;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzaup()Lcom/google/android/gms/internal/ads/zzdqk;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhbs:Lcom/google/android/gms/internal/ads/zzdqk;

    return-object v0
.end method

.method public final zzauq()Lcom/google/android/gms/internal/ads/zzdqk;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhbt:Lcom/google/android/gms/internal/ads/zzdqk;

    return-object v0
.end method
