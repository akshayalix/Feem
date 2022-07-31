.class Lfeem/PageVideos$FeemVideo;
.super Ljava/lang/Object;
.source "PageVideos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageVideos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeemVideo"
.end annotation


# instance fields
.field public fileName:Ljava/lang/String;

.field public fileSize:Ljava/lang/String;

.field final synthetic this$0:Lfeem/PageVideos;

.field public type:Lfeem/PageVideos$Type;

.field public videoId:I

.field public videoSource:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfeem/PageVideos;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lfeem/PageVideos$FeemVideo;->this$0:Lfeem/PageVideos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
