.class public Lcom/google/android/gms/internal/ads/zzawh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzawj;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawh;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbdi;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 8
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbdi;->onPause()V

    const/4 p0, 0x1

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzbdi;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 12
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbdi;->onResume()V

    const/4 p0, 0x1

    return p0
.end method

.method public static zzcr(I)Lcom/google/android/gms/internal/ads/zzawh;
    .locals 1

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    .line 40
    new-instance p0, Lcom/google/android/gms/internal/ads/zzawo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawo;-><init>()V

    return-object p0

    :cond_0
    const/16 v0, 0x1a

    if-lt p0, v0, :cond_1

    .line 42
    new-instance p0, Lcom/google/android/gms/internal/ads/zzawp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawp;-><init>()V

    return-object p0

    :cond_1
    const/16 v0, 0x18

    if-lt p0, v0, :cond_2

    .line 44
    new-instance p0, Lcom/google/android/gms/internal/ads/zzawm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawm;-><init>()V

    return-object p0

    :cond_2
    const/16 v0, 0x15

    if-lt p0, v0, :cond_3

    .line 46
    new-instance p0, Lcom/google/android/gms/internal/ads/zzawn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawn;-><init>()V

    return-object p0

    :cond_3
    const/16 v0, 0x13

    if-lt p0, v0, :cond_4

    .line 48
    new-instance p0, Lcom/google/android/gms/internal/ads/zzawk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawk;-><init>()V

    return-object p0

    :cond_4
    const/16 v0, 0x12

    if-lt p0, v0, :cond_5

    .line 50
    new-instance p0, Lcom/google/android/gms/internal/ads/zzawl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawl;-><init>()V

    return-object p0

    :cond_5
    const/16 v0, 0x11

    if-lt p0, v0, :cond_6

    .line 52
    new-instance p0, Lcom/google/android/gms/internal/ads/zzawi;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawi;-><init>()V

    return-object p0

    .line 53
    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzawh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawh;-><init>()V

    return-object p0
.end method

.method public static zzwq()Z
    .locals 2

    .line 20
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public zza(Landroid/content/ContentResolver;)I
    .locals 2

    const-string v0, "wifi_on"

    const/4 v1, 0x0

    .line 32
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public zza(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 19
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p3
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .line 34
    new-instance p3, Landroid/webkit/WebResourceResponse;

    invoke-direct {p3, p1, p2, p6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p3
.end method

.method public zza(Lcom/google/android/gms/internal/ads/zzbdi;Lcom/google/android/gms/internal/ads/zzsm;Z)Lcom/google/android/gms/internal/ads/zzbdl;
    .locals 1

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbek;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbek;-><init>(Lcom/google/android/gms/internal/ads/zzbdi;Lcom/google/android/gms/internal/ads/zzsm;Z)V

    return-object v0
.end method

.method public zza(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/zzte;
    .locals 0

    .line 31
    sget-object p1, Lcom/google/android/gms/internal/ads/zzte;->zzbvv:Lcom/google/android/gms/internal/ads/zzte;

    return-object p1
.end method

.method public zza(Landroid/app/Activity;Landroid/content/res/Configuration;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawg;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzawg;-><init>(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzayc;->zza(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 4
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public zzb(Landroid/content/ContentResolver;)I
    .locals 2

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    .line 33
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public zzbc(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public zzbd(Landroid/content/Context;)Landroid/webkit/CookieManager;
    .locals 3

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawh;->zzwq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 24
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 25
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Failed to obtain CookieManager."

    .line 27
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzavs;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzku()Lcom/google/android/gms/internal/ads/zzave;

    move-result-object v0

    const-string v2, "ApiLevelUtil.getCookieManager"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzave;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method public zzg(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public zzwo()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public zzwp()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 18
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public zzwr()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzws()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method
