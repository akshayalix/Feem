.class public final Lcom/google/android/gms/ads/internal/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private zzbkv:J

.field private zzup:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/zzd;->zzbkv:J

    return-void
.end method

.method private final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazb;ZLcom/google/android/gms/internal/ads/zzavf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7
    .param p4    # Lcom/google/android/gms/internal/ads/zzavf;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/zzd;->zzbkv:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-string p1, "Not retrying to fetch app settings"

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzavs;->zzez(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/zzd;->zzbkv:J

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzavf;->zzvj()J

    move-result-wide v2

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/ads/zzzn;->zzcmt:Lcom/google/android/gms/internal/ads/zzzc;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzve;->zzoy()Lcom/google/android/gms/internal/ads/zzzj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzzj;->zzd(Lcom/google/android/gms/internal/ads/zzzc;)Ljava/lang/Object;

    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v6, v4, v2

    if-lez v6, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    .line 21
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzavf;->zzvk()Z

    move-result p4

    if-nez p4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_6

    const-string p1, "Context not provided to fetch application settings"

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzavs;->zzez(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_6
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_7

    const-string p1, "App settings could not be fetched. Required parameters missing"

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzavs;->zzez(Ljava/lang/String;)V

    return-void

    .line 30
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    if-eqz p4, :cond_8

    goto :goto_2

    :cond_8
    move-object p4, p1

    .line 31
    :goto_2
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzd;->zzup:Landroid/content/Context;

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzld()Lcom/google/android/gms/internal/ads/zzajt;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzd;->zzup:Landroid/content/Context;

    .line 33
    invoke-virtual {p4, v0, p2}, Lcom/google/android/gms/internal/ads/zzajt;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazb;)Lcom/google/android/gms/internal/ads/zzakc;

    move-result-object p2

    sget-object p4, Lcom/google/android/gms/internal/ads/zzajx;->zzdaq:Lcom/google/android/gms/internal/ads/zzajy;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzajx;->zzdaq:Lcom/google/android/gms/internal/ads/zzajy;

    const-string v1, "google.afma.config.fetchAppSettings"

    .line 34
    invoke-virtual {p2, v1, p4, v0}, Lcom/google/android/gms/internal/ads/zzakc;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajv;Lcom/google/android/gms/internal/ads/zzajw;)Lcom/google/android/gms/internal/ads/zzaju;

    move-result-object p2

    .line 35
    :try_start_0
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 36
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string p6, "app_id"

    .line 37
    invoke-virtual {p4, p6, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 38
    :cond_9
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_a

    const-string p5, "ad_unit_id"

    .line 39
    invoke-virtual {p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    :goto_3
    const-string p5, "is_init"

    .line 40
    invoke-virtual {p4, p5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p3, "pn"

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-interface {p2, p4}, Lcom/google/android/gms/internal/ads/zzaju;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdhe;

    move-result-object p1

    .line 43
    sget-object p2, Lcom/google/android/gms/ads/internal/zzf;->zzbkw:Lcom/google/android/gms/internal/ads/zzdgf;

    .line 44
    sget-object p3, Lcom/google/android/gms/internal/ads/zzazd;->zzdwj:Lcom/google/android/gms/internal/ads/zzdhd;

    .line 45
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdgs;->zzb(Lcom/google/android/gms/internal/ads/zzdhe;Lcom/google/android/gms/internal/ads/zzdgf;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhe;

    move-result-object p2

    if-eqz p7, :cond_b

    .line 48
    sget-object p3, Lcom/google/android/gms/internal/ads/zzazd;->zzdwj:Lcom/google/android/gms/internal/ads/zzdhd;

    .line 49
    invoke-interface {p1, p7, p3}, Lcom/google/android/gms/internal/ads/zzdhe;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_b
    const-string p1, "ConfigLoader.maybeFetchNewAppSettings"

    .line 50
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazh;->zza(Lcom/google/android/gms/internal/ads/zzdhe;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Error requesting application settings"

    .line 53
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzavs;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzavf;)V
    .locals 9

    if-eqz p4, :cond_0

    .line 5
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzavf;->zzvm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v7, p3

    .line 6
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/zzd;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazb;ZLcom/google/android/gms/internal/ads/zzavf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazb;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p4

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/zzd;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazb;ZLcom/google/android/gms/internal/ads/zzavf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
