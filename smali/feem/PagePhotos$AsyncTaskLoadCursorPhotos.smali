.class Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;
.super Landroid/os/AsyncTask;
.source "PagePhotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PagePhotos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncTaskLoadCursorPhotos"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/database/Cursor;",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "Lfeem/PagePhotos$FeemPhoto;",
        ">;>;"
    }
.end annotation


# instance fields
.field lbl_loading:Landroid/widget/TextView;

.field final synthetic this$0:Lfeem/PagePhotos;


# direct methods
.method public constructor <init>(Lfeem/PagePhotos;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->this$0:Lfeem/PagePhotos;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 743
    iput-object p1, p0, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->lbl_loading:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 740
    check-cast p1, [Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->doInBackground([Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/database/Cursor;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lfeem/PagePhotos$FeemPhoto;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 810
    aget-object p1, p1, v0

    .line 811
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 814
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 815
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :goto_0
    if-eqz p1, :cond_4

    .line 821
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "datetaken"

    .line 822
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 823
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "_id"

    .line 824
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 825
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "_data"

    .line 826
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 840
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 841
    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 842
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 845
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 846
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 847
    new-instance v5, Lfeem/PagePhotos$FeemPhoto;

    iget-object v7, p0, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->this$0:Lfeem/PagePhotos;

    invoke-direct {v5, v7}, Lfeem/PagePhotos$FeemPhoto;-><init>(Lfeem/PagePhotos;)V

    .line 848
    sget-object v7, Lfeem/PagePhotos$Type;->Date:Lfeem/PagePhotos$Type;

    iput-object v7, v5, Lfeem/PagePhotos$FeemPhoto;->type:Lfeem/PagePhotos$Type;

    .line 849
    iput-object v4, v5, Lfeem/PagePhotos$FeemPhoto;->day:Ljava/lang/String;

    .line 851
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    :cond_2
    new-instance v5, Lfeem/PagePhotos$FeemPhoto;

    iget-object v7, p0, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->this$0:Lfeem/PagePhotos;

    invoke-direct {v5, v7}, Lfeem/PagePhotos$FeemPhoto;-><init>(Lfeem/PagePhotos;)V

    .line 856
    sget-object v7, Lfeem/PagePhotos$Type;->Picture:Lfeem/PagePhotos$Type;

    iput-object v7, v5, Lfeem/PagePhotos$FeemPhoto;->type:Lfeem/PagePhotos$Type;

    .line 857
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lfeem/PagePhotos$FeemPhoto;->imgSource:Ljava/lang/String;

    .line 858
    iput v6, v5, Lfeem/PagePhotos$FeemPhoto;->imageId:I

    .line 860
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    iget-object v6, p0, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->this$0:Lfeem/PagePhotos;

    iget-object v6, v6, Lfeem/PagePhotos;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "adapter"

    .line 863
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new hashmap for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v6, p0, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->this$0:Lfeem/PagePhotos;

    iget-object v6, v6, Lfeem/PagePhotos;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v6, v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    :cond_3
    iget-object v6, p0, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->this$0:Lfeem/PagePhotos;

    iget-object v6, v6, Lfeem/PagePhotos;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 868
    iget-object v5, v5, Lfeem/PagePhotos$FeemPhoto;->imgSource:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 882
    invoke-static {}, Ljava/lang/System;->gc()V

    throw p1

    :catch_0
    :cond_4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 885
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 887
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finished for real   "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "photos"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 740
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfeem/PagePhotos$FeemPhoto;",
            ">;)V"
        }
    .end annotation

    .line 769
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 773
    iget-object v0, p0, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->this$0:Lfeem/PagePhotos;

    iget-object v0, v0, Lfeem/PagePhotos;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 774
    iget-object v0, p0, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->this$0:Lfeem/PagePhotos;

    iget-object v0, v0, Lfeem/PagePhotos;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 778
    iget-object p1, p0, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->this$0:Lfeem/PagePhotos;

    invoke-static {p1}, Lfeem/PagePhotos;->access$200(Lfeem/PagePhotos;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 780
    :try_start_0
    iget-object p1, p0, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->this$0:Lfeem/PagePhotos;

    invoke-virtual {p1}, Lfeem/PagePhotos;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "cursorloader"

    const-string v1, ""

    .line 783
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    :goto_0
    iget-object p1, p0, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->lbl_loading:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 756
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 758
    iget-object v0, p0, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->this$0:Lfeem/PagePhotos;

    iget-object v0, v0, Lfeem/PagePhotos;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 760
    iget-object v0, p0, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->this$0:Lfeem/PagePhotos;

    invoke-virtual {v0}, Lfeem/PagePhotos;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080070

    .line 761
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->lbl_loading:Landroid/widget/TextView;

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    .line 795
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 796
    array-length v0, p1

    if-lez v0, :cond_0

    .line 797
    iget-object v0, p0, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->lbl_loading:Landroid/widget/TextView;

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

    .line 740
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lfeem/PagePhotos$AsyncTaskLoadCursorPhotos;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
