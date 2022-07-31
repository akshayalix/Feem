.class Lfeem/PagePhotos$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "PagePhotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PagePhotos;
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
.field private imageId:I

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfeem/PagePhotos;


# direct methods
.method public constructor <init>(Lfeem/PagePhotos;Landroid/widget/ImageView;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lfeem/PagePhotos$BitmapWorkerTask;->this$0:Lfeem/PagePhotos;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 176
    iput p1, p0, Lfeem/PagePhotos$BitmapWorkerTask;->imageId:I

    .line 180
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lfeem/PagePhotos$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$100(Lfeem/PagePhotos$BitmapWorkerTask;)I
    .locals 0

    .line 174
    iget p0, p0, Lfeem/PagePhotos$BitmapWorkerTask;->imageId:I

    return p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    .line 186
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lfeem/PagePhotos$BitmapWorkerTask;->imageId:I

    const/4 v1, 0x0

    .line 190
    :try_start_0
    iget-object v2, p0, Lfeem/PagePhotos$BitmapWorkerTask;->this$0:Lfeem/PagePhotos;

    .line 191
    invoke-virtual {v2}, Lfeem/PagePhotos;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lfeem/PagePhotos$BitmapWorkerTask;->imageId:I

    int-to-long v3, v3

    const/4 v5, 0x1

    .line 190
    invoke-static {v2, v3, v4, v5, v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 193
    iget-object v3, p0, Lfeem/PagePhotos$BitmapWorkerTask;->this$0:Lfeem/PagePhotos;

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v2}, Lfeem/PagePhotos;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 174
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lfeem/PagePhotos$BitmapWorkerTask;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 205
    invoke-virtual {p0}, Lfeem/PagePhotos$BitmapWorkerTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 209
    :cond_0
    iget-object v0, p0, Lfeem/PagePhotos$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 210
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 212
    invoke-static {v0}, Lfeem/PagePhotos;->access$000(Landroid/widget/ImageView;)Lfeem/PagePhotos$BitmapWorkerTask;

    move-result-object v1

    if-ne p0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 174
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lfeem/PagePhotos$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
