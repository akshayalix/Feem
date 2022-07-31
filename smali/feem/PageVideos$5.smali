.class Lfeem/PageVideos$5;
.super Lfeem/PageVideos$VideoAdapterGrid;
.source "PageVideos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PageVideos;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/PageVideos;


# direct methods
.method constructor <init>(Lfeem/PageVideos;Ljava/util/ArrayList;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lfeem/PageVideos$5;->this$0:Lfeem/PageVideos;

    invoke-direct {p0, p1, p2}, Lfeem/PageVideos$VideoAdapterGrid;-><init>(Lfeem/PageVideos;Ljava/util/ArrayList;)V

    return-void
.end method
