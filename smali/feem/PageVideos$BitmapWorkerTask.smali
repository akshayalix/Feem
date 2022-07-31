.class Lfeem/PageVideos$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "PageVideos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageVideos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfeem/PageVideos;

.field private videoId:I


# direct methods
.method public constructor <init>(Lfeem/PageVideos;Landroid/widget/ImageView;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lfeem/PageVideos$BitmapWorkerTask;->this$0:Lfeem/PageVideos;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 107
    iput p1, p0, Lfeem/PageVideos$BitmapWorkerTask;->videoId:I

    .line 111
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lfeem/PageVideos$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$100(Lfeem/PageVideos$BitmapWorkerTask;)I
    .locals 0

    .line 105
    iget p0, p0, Lfeem/PageVideos$BitmapWorkerTask;->videoId:I

    return p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 117
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lfeem/PageVideos$BitmapWorkerTask;->videoId:I

    .line 119
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 121
    :try_start_0
    iget-object p1, p0, Lfeem/PageVideos$BitmapWorkerTask;->this$0:Lfeem/PageVideos;

    .line 122
    invoke-virtual {p1}, Lfeem/PageVideos;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v0, p0, Lfeem/PageVideos$BitmapWorkerTask;->videoId:I

    int-to-long v0, v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 121
    invoke-static {p1, v0, v1, v2, v3}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "videos"

    const-string v1, "thumbnail error"

    .line 126
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    iget-object p1, p0, Lfeem/PageVideos$BitmapWorkerTask;->this$0:Lfeem/PageVideos;

    invoke-virtual {p1}, Lfeem/PageVideos;->getDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lfeem/PageVideos$BitmapWorkerTask;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lfeem/PageVideos$BitmapWorkerTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 139
    :cond_0
    iget-object v0, p0, Lfeem/PageVideos$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 142
    invoke-static {v0}, Lfeem/PageVideos;->access$000(Landroid/widget/ImageView;)Lfeem/PageVideos$BitmapWorkerTask;

    move-result-object v1

    if-ne p0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 105
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lfeem/PageVideos$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
