.class Lfeem/PagePhotos$FeemPhoto;
.super Ljava/lang/Object;
.source "PagePhotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PagePhotos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeemPhoto"
.end annotation


# instance fields
.field public day:Ljava/lang/String;

.field public imageId:I

.field public imgSource:Ljava/lang/String;

.field final synthetic this$0:Lfeem/PagePhotos;

.field public type:Lfeem/PagePhotos$Type;


# direct methods
.method constructor <init>(Lfeem/PagePhotos;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lfeem/PagePhotos$FeemPhoto;->this$0:Lfeem/PagePhotos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
