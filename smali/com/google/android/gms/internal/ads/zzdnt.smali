.class public final Lcom/google/android/gms/internal/ads/zzdnt;
.super Lcom/google/android/gms/internal/ads/zzdrt;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdtg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdnt$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdrt<",
        "Lcom/google/android/gms/internal/ads/zzdnt;",
        "Lcom/google/android/gms/internal/ads/zzdnt$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdtg;"
    }
.end annotation


# static fields
.field private static volatile zzdz:Lcom/google/android/gms/internal/ads/zzdtn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "Lcom/google/android/gms/internal/ads/zzdnt;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhei:Lcom/google/android/gms/internal/ads/zzdnt;


# instance fields
.field private zzheg:Ljava/lang/String;

.field private zzheh:Lcom/google/android/gms/internal/ads/zzdng;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdnt;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdnt;->zzhei:Lcom/google/android/gms/internal/ads/zzdnt;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/zzdnt;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdrt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdrt;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrt;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnt;->zzheg:Ljava/lang/String;

    return-void
.end method

.method public static zzaws()Lcom/google/android/gms/internal/ads/zzdnt;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdnt;->zzhei:Lcom/google/android/gms/internal/ads/zzdnt;

    return-object v0
.end method

.method static synthetic zzawt()Lcom/google/android/gms/internal/ads/zzdnt;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdnt;->zzhei:Lcom/google/android/gms/internal/ads/zzdnt;

    return-object v0
.end method

.method public static zzba(Lcom/google/android/gms/internal/ads/zzdqk;)Lcom/google/android/gms/internal/ads/zzdnt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdse;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdnt;->zzhei:Lcom/google/android/gms/internal/ads/zzdnt;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdrt;->zza(Lcom/google/android/gms/internal/ads/zzdrt;Lcom/google/android/gms/internal/ads/zzdqk;)Lcom/google/android/gms/internal/ads/zzdrt;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdnt;

    return-object p0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdnu;->zzdk:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 23
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdnt;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    if-nez p1, :cond_1

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/zzdnt;

    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdnt;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdrt$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdnt;->zzhei:Lcom/google/android/gms/internal/ads/zzdnt;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdrt$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdrt;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdnt;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    .line 21
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

    .line 13
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdnt;->zzhei:Lcom/google/android/gms/internal/ads/zzdnt;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    .line 10
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzheg"

    aput-object v0, p1, p2

    const-string p2, "zzheh"

    aput-object p2, p1, p3

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdnt;->zzhei:Lcom/google/android/gms/internal/ads/zzdnt;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdnt;->zza(Lcom/google/android/gms/internal/ads/zzdte;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdnt$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdnt$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdnu;)V

    return-object p1

    .line 8
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdnt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdnt;-><init>()V

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

.method public final zzawq()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnt;->zzheg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzawr()Lcom/google/android/gms/internal/ads/zzdng;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnt;->zzheh:Lcom/google/android/gms/internal/ads/zzdng;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdng;->zzavo()Lcom/google/android/gms/internal/ads/zzdng;

    move-result-object v0

    :cond_0
    return-object v0
.end method
