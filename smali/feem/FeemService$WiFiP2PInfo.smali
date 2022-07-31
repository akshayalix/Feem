.class Lfeem/FeemService$WiFiP2PInfo;
.super Ljava/lang/Object;
.source "FeemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/FeemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WiFiP2PInfo"
.end annotation


# instance fields
.field bssid:Ljava/lang/String;

.field done:Z

.field lastpassword:Ljava/lang/String;

.field password:Ljava/lang/String;

.field ssid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 431
    iput-object v0, p0, Lfeem/FeemService$WiFiP2PInfo;->ssid:Ljava/lang/String;

    .line 432
    iput-object v0, p0, Lfeem/FeemService$WiFiP2PInfo;->bssid:Ljava/lang/String;

    .line 433
    iput-object v0, p0, Lfeem/FeemService$WiFiP2PInfo;->password:Ljava/lang/String;

    .line 434
    iput-object v0, p0, Lfeem/FeemService$WiFiP2PInfo;->lastpassword:Ljava/lang/String;

    return-void
.end method
