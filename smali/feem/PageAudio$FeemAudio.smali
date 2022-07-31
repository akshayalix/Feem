.class Lfeem/PageAudio$FeemAudio;
.super Ljava/lang/Object;
.source "PageAudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeemAudio"
.end annotation


# instance fields
.field public albumId:I

.field public albumName:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public audioId:I

.field public audioSource:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public fileSize:Ljava/lang/String;

.field final synthetic this$0:Lfeem/PageAudio;

.field public track:Ljava/lang/String;

.field public type:Lfeem/PageAudio$Type;

.field public year:I


# direct methods
.method constructor <init>(Lfeem/PageAudio;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lfeem/PageAudio$FeemAudio;->this$0:Lfeem/PageAudio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
