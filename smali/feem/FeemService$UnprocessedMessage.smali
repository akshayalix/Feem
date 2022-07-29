.class Lfeem/FeemService$UnprocessedMessage;
.super Ljava/lang/Object;
.source "FeemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/FeemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnprocessedMessage"
.end annotation


# instance fields
.field endpoint:Ljava/lang/String;

.field from:Ljava/lang/String;

.field message:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
