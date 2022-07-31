.class Lfeem/PageVideos$AsyncTaskLoadCursorVideos;
.super Landroid/os/AsyncTask;
.source "PageVideos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageVideos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncTaskLoadCursorVideos"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/database/Cursor;",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "Lfeem/PageVideos$FeemVideo;",
        ">;>;"
    }
.end annotation


# instance fields
.field lbl_loading:Landroid/widget/TextView;

.field final synthetic this$0:Lfeem/PageVideos;


# direct methods
.method public constructor <init>(Lfeem/PageVideos;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->this$0:Lfeem/PageVideos;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 563
    iput-object p1, p0, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->lbl_loading:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 560
    check-cast p1, [Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->doInBackground([Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/database/Cursor;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lfeem/PageVideos$FeemVideo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 624
    aget-object p1, p1, v0

    .line 625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 628
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p1, :cond_3

    .line 634
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "date_added"

    .line 635
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 636
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v5, "_id"

    .line 637
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 638
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "_data"

    .line 639
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 646
    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "_size"

    .line 652
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v6, "_display_name"

    .line 653
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 655
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 656
    invoke-virtual {v10, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 657
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 661
    new-instance v4, Lfeem/PageVideos$FeemVideo;

    iget-object v10, p0, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->this$0:Lfeem/PageVideos;

    invoke-direct {v4, v10}, Lfeem/PageVideos$FeemVideo;-><init>(Lfeem/PageVideos;)V

    .line 662
    sget-object v10, Lfeem/PageVideos$Type;->Video:Lfeem/PageVideos$Type;

    iput-object v10, v4, Lfeem/PageVideos$FeemVideo;->type:Lfeem/PageVideos$Type;

    .line 663
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lfeem/PageVideos$FeemVideo;->videoSource:Ljava/lang/String;

    .line 664
    iput v5, v4, Lfeem/PageVideos$FeemVideo;->videoId:I

    .line 665
    invoke-static {v8, v9}, Lfeem/Feem;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lfeem/PageVideos$FeemVideo;->fileSize:Ljava/lang/String;

    .line 666
    iput-object v6, v4, Lfeem/PageVideos$FeemVideo;->fileName:Ljava/lang/String;

    .line 668
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object v5, p0, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->this$0:Lfeem/PageVideos;

    iget-object v5, v5, Lfeem/PageVideos;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "adapter"

    .line 671
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new hashmap for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v5, p0, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->this$0:Lfeem/PageVideos;

    iget-object v5, v5, Lfeem/PageVideos;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5, v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    :cond_2
    iget-object v5, p0, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->this$0:Lfeem/PageVideos;

    iget-object v5, v5, Lfeem/PageVideos;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 676
    iget-object v4, v4, Lfeem/PageVideos$FeemVideo;->videoSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 688
    invoke-static {}, Ljava/lang/System;->gc()V

    throw p1

    :catch_0
    :cond_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 698
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finished for real  "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "video"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 560
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfeem/PageVideos$FeemVideo;",
            ">;)V"
        }
    .end annotation

    .line 593
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 596
    iget-object v0, p0, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->this$0:Lfeem/PageVideos;

    iget-object v0, v0, Lfeem/PageVideos;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 597
    iget-object v0, p0, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->this$0:Lfeem/PageVideos;

    iget-object v0, v0, Lfeem/PageVideos;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 600
    iget-object p1, p0, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->this$0:Lfeem/PageVideos;

    invoke-static {p1}, Lfeem/PageVideos;->access$200(Lfeem/PageVideos;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 602
    :try_start_0
    iget-object p1, p0, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->this$0:Lfeem/PageVideos;

    invoke-virtual {p1}, Lfeem/PageVideos;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "cursorloader"

    const-string v1, ""

    .line 605
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    :goto_0
    iget-object p1, p0, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->lbl_loading:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 576
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 577
    iget-object v0, p0, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->this$0:Lfeem/PageVideos;

    iget-object v0, v0, Lfeem/PageVideos;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 578
    iget-object v0, p0, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->this$0:Lfeem/PageVideos;

    invoke-virtual {v0}, Lfeem/PageVideos;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080070

    .line 579
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->lbl_loading:Landroid/widget/TextView;

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    .line 585
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 586
    array-length v0, p1

    if-lez v0, :cond_0

    .line 587
    iget-object v0, p0, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->lbl_loading:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 560
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lfeem/PageVideos$AsyncTaskLoadCursorVideos;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
