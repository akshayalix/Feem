.class Lfeem/PageAudio$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "PageAudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageAudio;
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
.field private albumId:I

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfeem/PageAudio;


# direct methods
.method public constructor <init>(Lfeem/PageAudio;Landroid/widget/ImageView;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lfeem/PageAudio$BitmapWorkerTask;->this$0:Lfeem/PageAudio;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 153
    iput p1, p0, Lfeem/PageAudio$BitmapWorkerTask;->albumId:I

    .line 157
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lfeem/PageAudio$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$100(Lfeem/PageAudio$BitmapWorkerTask;)I
    .locals 0

    .line 151
    iget p0, p0, Lfeem/PageAudio$BitmapWorkerTask;->albumId:I

    return p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 163
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lfeem/PageAudio$BitmapWorkerTask;->albumId:I

    const-string v1, "content://media/external/audio/albumart"

    .line 165
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 167
    iget v2, p0, Lfeem/PageAudio$BitmapWorkerTask;->albumId:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 170
    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v2, 0x0

    .line 176
    :try_start_0
    iget-object v3, p0, Lfeem/PageAudio$BitmapWorkerTask;->this$0:Lfeem/PageAudio;

    invoke-virtual {v3}, Lfeem/PageAudio;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    .line 177
    invoke-virtual {v3, v1, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/16 v3, 0x60

    .line 184
    invoke-static {v1, v3, v3}, Lfeem/Feem;->decodeSampledBitmapFromFileDescriptor(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 185
    iget-object v1, p0, Lfeem/PageAudio$BitmapWorkerTask;->this$0:Lfeem/PageAudio;

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lfeem/PageAudio;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "songs"

    const-string v4, "thumbnail"

    .line 190
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 194
    iget-object v1, p0, Lfeem/PageAudio$BitmapWorkerTask;->this$0:Lfeem/PageAudio;

    invoke-virtual {v1}, Lfeem/PageAudio;->getDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 195
    iget-object v1, p0, Lfeem/PageAudio$BitmapWorkerTask;->this$0:Lfeem/PageAudio;

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Lfeem/PageAudio;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 151
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lfeem/PageAudio$BitmapWorkerTask;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 206
    invoke-virtual {p0}, Lfeem/PageAudio$BitmapWorkerTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 210
    :cond_0
    iget-object v0, p0, Lfeem/PageAudio$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 211
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 213
    invoke-static {v0}, Lfeem/PageAudio;->access$000(Landroid/widget/ImageView;)Lfeem/PageAudio$BitmapWorkerTask;

    move-result-object v1

    if-ne p0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 151
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lfeem/PageAudio$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
