.class Lfeem/FeemFolderSelect$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "FeemFolderSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/FeemFolderSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private filePath:Ljava/lang/String;

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfeem/FeemFolderSelect;


# direct methods
.method public constructor <init>(Lfeem/FeemFolderSelect;Landroid/widget/ImageView;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lfeem/FeemFolderSelect$BitmapWorkerTask;->this$0:Lfeem/FeemFolderSelect;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 182
    iput-object p1, p0, Lfeem/FeemFolderSelect$BitmapWorkerTask;->filePath:Ljava/lang/String;

    .line 186
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lfeem/FeemFolderSelect$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$100(Lfeem/FeemFolderSelect$BitmapWorkerTask;)Ljava/lang/String;
    .locals 0

    .line 180
    iget-object p0, p0, Lfeem/FeemFolderSelect$BitmapWorkerTask;->filePath:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 192
    aget-object v1, p1, v0

    iput-object v1, p0, Lfeem/FeemFolderSelect$BitmapWorkerTask;->filePath:Ljava/lang/String;

    .line 195
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lfeem/FeemFolderSelect$BitmapWorkerTask;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const/16 v3, 0x60

    if-eqz v2, :cond_0

    .line 202
    iget-object v1, p0, Lfeem/FeemFolderSelect$BitmapWorkerTask;->this$0:Lfeem/FeemFolderSelect;

    const v2, 0x7f07006b

    invoke-static {v1, v2, v3, v3}, Lfeem/Feem;->decodeSampledBitmapFromResource(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_7

    .line 206
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfeem/Feem;->fileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xlsx"

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "xls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string v2, "pptx"

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "ppt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v2, "docx"

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "doc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v2, "mp3"

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string v2, "mp4"

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "avi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "flv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "mkv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string v2, "jpeg"

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "bmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    const-string v2, "zip"

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "rar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    const-string v2, "pdf"

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 237
    iget-object v1, p0, Lfeem/FeemFolderSelect$BitmapWorkerTask;->this$0:Lfeem/FeemFolderSelect;

    const v2, 0x7f07008d

    invoke-static {v1, v2, v3, v3}, Lfeem/Feem;->decodeSampledBitmapFromResource(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_7

    .line 241
    :cond_8
    iget-object v1, p0, Lfeem/FeemFolderSelect$BitmapWorkerTask;->this$0:Lfeem/FeemFolderSelect;

    const v2, 0x7f070068

    invoke-static {v1, v2, v3, v3}, Lfeem/Feem;->decodeSampledBitmapFromResource(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_7

    .line 233
    :cond_9
    :goto_0
    iget-object v1, p0, Lfeem/FeemFolderSelect$BitmapWorkerTask;->this$0:Lfeem/FeemFolderSelect;

    const v2, 0x7f07005e

    invoke-static {v1, v2, v3, v3}, Lfeem/Feem;->decodeSampledBitmapFromResource(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_7

    .line 229
    :cond_a
    :goto_1
    iget-object v1, p0, Lfeem/FeemFolderSelect$BitmapWorkerTask;->this$0:Lfeem/FeemFolderSelect;

    const v2, 0x7f070076

    invoke-static {v1, v2, v3, v3}, Lfeem/Feem;->decodeSampledBitmapFromResource(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_7

    .line 225
    :cond_b
    :goto_2
    iget-object v1, p0, Lfeem/FeemFolderSelect$BitmapWorkerTask;->this$0:Lfeem/FeemFolderSelect;

    const v2, 0x7f070078

    invoke-static {v1, v2, v3, v3}, Lfeem/Feem;->decodeSampledBitmapFromResource(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_7

    .line 221
    :cond_c
    :goto_3
    iget-object v1, p0, Lfeem/FeemFolderSelect$BitmapWorkerTask;->this$0:Lfeem/FeemFolderSelect;

    const v2, 0x7f070079

    invoke-static {v1, v2, v3, v3}, Lfeem/Feem;->decodeSampledBitmapFromResource(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_7

    .line 217
    :cond_d
    :goto_4
    iget-object v1, p0, Lfeem/FeemFolderSelect$BitmapWorkerTask;->this$0:Lfeem/FeemFolderSelect;

    const v2, 0x7f070096

    invoke-static {v1, v2, v3, v3}, Lfeem/Feem;->decodeSampledBitmapFromResource(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_7

    .line 213
    :cond_e
    :goto_5
    iget-object v1, p0, Lfeem/FeemFolderSelect$BitmapWorkerTask;->this$0:Lfeem/FeemFolderSelect;

    const v2, 0x7f07008f

    invoke-static {v1, v2, v3, v3}, Lfeem/Feem;->decodeSampledBitmapFromResource(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_7

    .line 209
    :cond_f
    :goto_6
    iget-object v1, p0, Lfeem/FeemFolderSelect$BitmapWorkerTask;->this$0:Lfeem/FeemFolderSelect;

    const v2, 0x7f070067

    invoke-static {v1, v2, v3, v3}, Lfeem/Feem;->decodeSampledBitmapFromResource(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 247
    :goto_7
    iget-object v2, p0, Lfeem/FeemFolderSelect$BitmapWorkerTask;->this$0:Lfeem/FeemFolderSelect;

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lfeem/FeemFolderSelect;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 180
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lfeem/FeemFolderSelect$BitmapWorkerTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 260
    invoke-virtual {p0}, Lfeem/FeemFolderSelect$BitmapWorkerTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 264
    :cond_0
    iget-object v0, p0, Lfeem/FeemFolderSelect$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 265
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 267
    invoke-static {v0}, Lfeem/FeemFolderSelect;->access$000(Landroid/widget/ImageView;)Lfeem/FeemFolderSelect$BitmapWorkerTask;

    move-result-object v1

    if-ne p0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 180
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lfeem/FeemFolderSelect$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
