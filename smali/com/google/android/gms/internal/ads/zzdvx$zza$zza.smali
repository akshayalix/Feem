.class public final Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;
.super Lcom/google/android/gms/internal/ads/zzdrt;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdtg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdvx$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdvx$zza$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdrt<",
        "Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;",
        "Lcom/google/android/gms/internal/ads/zzdvx$zza$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdtg;"
    }
.end annotation


# static fields
.field private static volatile zzdz:Lcom/google/android/gms/internal/ads/zzdtn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhur:Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;


# instance fields
.field private zzdl:I

.field private zzhun:Ljava/lang/String;

.field private zzhuo:Ljava/lang/String;

.field private zzhup:Ljava/lang/String;

.field private zzhuq:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;-><init>()V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;->zzhur:Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;

    .line 28
    const-class v1, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdrt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdrt;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrt;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;->zzhun:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;->zzhuo:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;->zzhup:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzbcu()Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;->zzhur:Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdvz;->zzdk:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 22
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdrt$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;->zzhur:Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdrt$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdrt;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    .line 20
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

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;->zzhur:Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdl"

    aput-object v0, p1, p2

    const-string p2, "zzhun"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzhuo"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzhup"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzhuq"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;->zzhur:Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0008\u0001\u0003\u0008\u0002\u0004\u0004\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzdte;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdvz;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdvx$zza$zza;-><init>()V

    return-object p1

    nop

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
