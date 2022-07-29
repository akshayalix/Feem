.class public Lfeem/FeemThumbnailer;
.super Ljava/lang/Thread;
.source "FeemThumbnailer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfeem/FeemThumbnailer$ThumbnailToProcess;,
        Lfeem/FeemThumbnailer$Holder;
    }
.end annotation


# static fields
.field private static _contentResolver:Landroid/content/ContentResolver;


# instance fields
.field private _thumbnailQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lfeem/FeemThumbnailer$ThumbnailToProcess;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lfeem/FeemThumbnailer;->_thumbnailQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 45
    invoke-virtual {p0}, Lfeem/FeemThumbnailer;->start()V

    return-void
.end method

.method public static getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 40
    sget-object v0, Lfeem/FeemThumbnailer;->_contentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static getInstance()Lfeem/FeemThumbnailer;
    .locals 1

    .line 54
    sget-object v0, Lfeem/FeemThumbnailer$Holder;->INSTANCE:Lfeem/FeemThumbnailer;

    return-object v0
.end method

.method private process_in_background(Lfeem/FeemThumbnailer$ThumbnailToProcess;)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "videos"

    const-string v1, ""

    const-string v2, "photos"

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processing thumbnail image "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lfeem/FeemThumbnailer$ThumbnailToProcess;->table:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lfeem/FeemThumbnailer$ThumbnailToProcess;->parameter:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "thumbnailer"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v3, p1, Lfeem/FeemThumbnailer$ThumbnailToProcess;->table:Ljava/lang/String;

    const/4 v5, 0x0

    .line 110
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x3

    const-string v8, "obtaining thumbnail"

    if-eqz v6, :cond_0

    .line 111
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lfeem/FeemThumbnailer$ThumbnailToProcess;->parameter:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Lfeem/FeemThumbnailer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p1, p1, Lfeem/FeemThumbnailer$ThumbnailToProcess;->parameter:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    .line 112
    invoke-static {v0, v2, v3, v7, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lfeem/FeemThumbnailer$ThumbnailToProcess;->parameter:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lfeem/FeemThumbnailer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p1, p1, Lfeem/FeemThumbnailer$ThumbnailToProcess;->parameter:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    .line 121
    invoke-static {v0, v2, v3, v7, v5}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "apps"

    .line 128
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iget-object p1, p1, Lfeem/FeemThumbnailer$ThumbnailToProcess;->parameter:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 130
    invoke-static {p1}, Lfeem/Feem;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-object v5, p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    .line 195
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "feemthumbnailer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 190
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 192
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_2
    :goto_3
    return-object v5
.end method

.method public static setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0

    .line 36
    sput-object p0, Lfeem/FeemThumbnailer;->_contentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private writeQueue()Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lfeem/FeemThumbnailer$ThumbnailToProcess;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lfeem/FeemThumbnailer;->_thumbnailQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lfeem/FeemThumbnailer;->_thumbnailQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 207
    :cond_0
    iget-object v0, p0, Lfeem/FeemThumbnailer;->_thumbnailQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized queue_thumbnail(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "photos"

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    :cond_0
    new-instance v0, Lfeem/FeemThumbnailer$ThumbnailToProcess;

    invoke-direct {v0}, Lfeem/FeemThumbnailer$ThumbnailToProcess;-><init>()V

    .line 230
    iput-object p1, v0, Lfeem/FeemThumbnailer$ThumbnailToProcess;->table:Ljava/lang/String;

    .line 231
    iput-object p2, v0, Lfeem/FeemThumbnailer$ThumbnailToProcess;->imageView:Landroid/widget/ImageView;

    .line 232
    iput-object p3, v0, Lfeem/FeemThumbnailer$ThumbnailToProcess;->parameter:Ljava/lang/Object;

    .line 233
    invoke-virtual {p2}, Landroid/widget/ImageView;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lfeem/FeemThumbnailer$ThumbnailToProcess;->access$102(Lfeem/FeemThumbnailer$ThumbnailToProcess;I)I

    .line 234
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lfeem/FeemThumbnailer$ThumbnailToProcess;->access$002(Lfeem/FeemThumbnailer$ThumbnailToProcess;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 236
    invoke-direct {p0}, Lfeem/FeemThumbnailer;->writeQueue()Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 238
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 239
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfeem/FeemThumbnailer$ThumbnailToProcess;

    .line 240
    invoke-static {p2}, Lfeem/FeemThumbnailer$ThumbnailToProcess;->access$100(Lfeem/FeemThumbnailer$ThumbnailToProcess;)I

    move-result p3

    invoke-static {v0}, Lfeem/FeemThumbnailer$ThumbnailToProcess;->access$100(Lfeem/FeemThumbnailer$ThumbnailToProcess;)I

    move-result v1

    if-ne p3, v1, :cond_1

    .line 241
    invoke-direct {p0}, Lfeem/FeemThumbnailer;->writeQueue()Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_2
    invoke-direct {p0}, Lfeem/FeemThumbnailer;->writeQueue()Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "feemthumbnailer"

    .line 252
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1

    return-void
.end method

.method public run()V
    .locals 4

    .line 63
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 69
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lfeem/FeemThumbnailer;->writeQueue()Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfeem/FeemThumbnailer$ThumbnailToProcess;

    .line 70
    invoke-static {v0}, Lfeem/FeemThumbnailer$ThumbnailToProcess;->access$000(Lfeem/FeemThumbnailer$ThumbnailToProcess;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {v0}, Lfeem/FeemThumbnailer$ThumbnailToProcess;->access$000(Lfeem/FeemThumbnailer$ThumbnailToProcess;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {v0}, Lfeem/FeemThumbnailer$ThumbnailToProcess;->access$100(Lfeem/FeemThumbnailer$ThumbnailToProcess;)I

    move-result v1

    invoke-static {v0}, Lfeem/FeemThumbnailer$ThumbnailToProcess;->access$000(Lfeem/FeemThumbnailer$ThumbnailToProcess;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    invoke-direct {p0, v0}, Lfeem/FeemThumbnailer;->process_in_background(Lfeem/FeemThumbnailer$ThumbnailToProcess;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    invoke-static {v0}, Lfeem/FeemThumbnailer$ThumbnailToProcess;->access$000(Lfeem/FeemThumbnailer$ThumbnailToProcess;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 81
    invoke-static {v0}, Lfeem/FeemThumbnailer$ThumbnailToProcess;->access$000(Lfeem/FeemThumbnailer$ThumbnailToProcess;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 82
    invoke-static {v0}, Lfeem/FeemThumbnailer$ThumbnailToProcess;->access$100(Lfeem/FeemThumbnailer$ThumbnailToProcess;)I

    move-result v2

    invoke-static {v0}, Lfeem/FeemThumbnailer$ThumbnailToProcess;->access$000(Lfeem/FeemThumbnailer$ThumbnailToProcess;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 85
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 86
    new-instance v3, Lfeem/FeemThumbnailer$1;

    invoke-direct {v3, p0, v0, v1}, Lfeem/FeemThumbnailer$1;-><init>(Lfeem/FeemThumbnailer;Lfeem/FeemThumbnailer$ThumbnailToProcess;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "feemthumbnailer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
