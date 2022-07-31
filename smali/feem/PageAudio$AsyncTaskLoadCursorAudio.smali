.class Lfeem/PageAudio$AsyncTaskLoadCursorAudio;
.super Landroid/os/AsyncTask;
.source "PageAudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncTaskLoadCursorAudio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/database/Cursor;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lfeem/PageAudio$FeemAudio;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/PageAudio;


# direct methods
.method public constructor <init>(Lfeem/PageAudio;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lfeem/PageAudio$AsyncTaskLoadCursorAudio;->this$0:Lfeem/PageAudio;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 671
    check-cast p1, [Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lfeem/PageAudio$AsyncTaskLoadCursorAudio;->doInBackground([Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/database/Cursor;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lfeem/PageAudio$FeemAudio;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, ""

    const/4 v2, 0x0

    .line 722
    aget-object v2, p1, v2

    .line 723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 726
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-string v6, "audio"

    if-eqz v2, :cond_3

    .line 731
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "_id"

    .line 734
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 735
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "_data"

    .line 736
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_0

    .line 740
    :cond_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0

    .line 744
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "_size"

    .line 746
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string v8, "title"

    .line 747
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v12, "album_id"

    .line 749
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v13, "album"

    .line 750
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "artist"

    .line 751
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "year"

    .line 752
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 p1, v6

    :try_start_1
    const-string v6, "track"

    .line 753
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v2

    .line 761
    new-instance v2, Lfeem/PageAudio$FeemAudio;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide/from16 v17, v3

    :try_start_2
    iget-object v3, v1, Lfeem/PageAudio$AsyncTaskLoadCursorAudio;->this$0:Lfeem/PageAudio;

    invoke-direct {v2, v3}, Lfeem/PageAudio$FeemAudio;-><init>(Lfeem/PageAudio;)V

    .line 762
    sget-object v3, Lfeem/PageAudio$Type;->Song:Lfeem/PageAudio$Type;

    iput-object v3, v2, Lfeem/PageAudio$FeemAudio;->type:Lfeem/PageAudio$Type;

    .line 763
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lfeem/PageAudio$FeemAudio;->audioSource:Ljava/lang/String;

    .line 764
    iput v7, v2, Lfeem/PageAudio$FeemAudio;->audioId:I

    .line 765
    invoke-static {v10, v11}, Lfeem/Feem;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lfeem/PageAudio$FeemAudio;->fileSize:Ljava/lang/String;

    .line 766
    iput-object v8, v2, Lfeem/PageAudio$FeemAudio;->fileName:Ljava/lang/String;

    .line 767
    iput v15, v2, Lfeem/PageAudio$FeemAudio;->year:I

    .line 768
    iput-object v13, v2, Lfeem/PageAudio$FeemAudio;->albumName:Ljava/lang/String;

    .line 769
    iput v12, v2, Lfeem/PageAudio$FeemAudio;->albumId:I

    .line 770
    iput-object v14, v2, Lfeem/PageAudio$FeemAudio;->artist:Ljava/lang/String;

    .line 771
    iput-object v6, v2, Lfeem/PageAudio$FeemAudio;->track:Ljava/lang/String;

    .line 774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 775
    iget-object v4, v1, Lfeem/PageAudio$AsyncTaskLoadCursorAudio;->this$0:Lfeem/PageAudio;

    iget-object v4, v4, Lfeem/PageAudio;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "adapter"

    .line 776
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new hashmap for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v4, v1, Lfeem/PageAudio$AsyncTaskLoadCursorAudio;->this$0:Lfeem/PageAudio;

    iget-object v4, v4, Lfeem/PageAudio;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    new-instance v4, Lfeem/PageAudio$FeemAudio;

    iget-object v6, v1, Lfeem/PageAudio$AsyncTaskLoadCursorAudio;->this$0:Lfeem/PageAudio;

    invoke-direct {v4, v6}, Lfeem/PageAudio$FeemAudio;-><init>(Lfeem/PageAudio;)V

    .line 780
    sget-object v6, Lfeem/PageAudio$Type;->Album:Lfeem/PageAudio$Type;

    iput-object v6, v4, Lfeem/PageAudio$FeemAudio;->type:Lfeem/PageAudio$Type;

    .line 781
    iput v15, v4, Lfeem/PageAudio$FeemAudio;->year:I

    .line 782
    iput-object v13, v4, Lfeem/PageAudio$FeemAudio;->albumName:Ljava/lang/String;

    .line 783
    iput v12, v4, Lfeem/PageAudio$FeemAudio;->albumId:I

    .line 784
    iput-object v14, v4, Lfeem/PageAudio$FeemAudio;->artist:Ljava/lang/String;

    .line 785
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_2
    iget-object v4, v1, Lfeem/PageAudio$AsyncTaskLoadCursorAudio;->this$0:Lfeem/PageAudio;

    iget-object v4, v4, Lfeem/PageAudio;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 789
    iget-object v4, v2, Lfeem/PageAudio$FeemAudio;->audioSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 793
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v2, v16

    move-wide/from16 v3, v17

    goto/16 :goto_0

    :catch_0
    move-wide/from16 v17, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 803
    invoke-static {}, Ljava/lang/System;->gc()V

    throw v0

    :catch_1
    :cond_3
    move-wide/from16 v17, v3

    move-object/from16 p1, v6

    :catch_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 807
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finished for real  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v2, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 671
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lfeem/PageAudio$AsyncTaskLoadCursorAudio;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfeem/PageAudio$FeemAudio;",
            ">;)V"
        }
    .end annotation

    .line 696
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 699
    iget-object v0, p0, Lfeem/PageAudio$AsyncTaskLoadCursorAudio;->this$0:Lfeem/PageAudio;

    iget-object v0, v0, Lfeem/PageAudio;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 700
    iget-object v0, p0, Lfeem/PageAudio$AsyncTaskLoadCursorAudio;->this$0:Lfeem/PageAudio;

    iget-object v0, v0, Lfeem/PageAudio;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 703
    iget-object p1, p0, Lfeem/PageAudio$AsyncTaskLoadCursorAudio;->this$0:Lfeem/PageAudio;

    invoke-static {p1}, Lfeem/PageAudio;->access$200(Lfeem/PageAudio;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 705
    :try_start_0
    iget-object p1, p0, Lfeem/PageAudio$AsyncTaskLoadCursorAudio;->this$0:Lfeem/PageAudio;

    invoke-virtual {p1}, Lfeem/PageAudio;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "cursorloader"

    const-string v1, ""

    .line 708
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 686
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 687
    iget-object v0, p0, Lfeem/PageAudio$AsyncTaskLoadCursorAudio;->this$0:Lfeem/PageAudio;

    iget-object v0, v0, Lfeem/PageAudio;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method
