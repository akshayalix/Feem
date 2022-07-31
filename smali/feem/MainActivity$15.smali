.class Lfeem/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/MainActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/MainActivity;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lfeem/MainActivity;IILandroid/content/Intent;)V
    .locals 0

    .line 1266
    iput-object p1, p0, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    iput p2, p0, Lfeem/MainActivity$15;->val$resultCode:I

    iput p3, p0, Lfeem/MainActivity$15;->val$requestCode:I

    iput-object p4, p0, Lfeem/MainActivity$15;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    move-object/from16 v1, p0

    .line 1271
    iget v0, v1, Lfeem/MainActivity$15;->val$resultCode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_20

    .line 1273
    iget v0, v1, Lfeem/MainActivity$15;->val$requestCode:I

    const/16 v2, 0x7c6

    if-ne v0, v2, :cond_0

    .line 1275
    iget-object v0, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    invoke-virtual {v0}, Lfeem/MainActivity;->isStoragePermissionRequired()Z

    goto/16 :goto_1b

    .line 1276
    :cond_0
    iget-object v2, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    invoke-static {v2}, Lfeem/MainActivity;->access$300(Lfeem/MainActivity;)I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    iget-object v0, v0, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    iget-object v0, v0, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1278
    iget-object v0, v1, Lfeem/MainActivity$15;->val$intent:Landroid/content/Intent;

    const-string v2, "files_to_send"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1279
    iget-object v2, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    iget-object v3, v2, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lfeem/MainActivity;->send_files_and_folders_to_destination(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 1281
    :cond_1
    iget v0, v1, Lfeem/MainActivity$15;->val$requestCode:I

    iget-object v2, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    invoke-static {v2}, Lfeem/MainActivity;->access$600(Lfeem/MainActivity;)I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 1283
    iget-object v0, v1, Lfeem/MainActivity$15;->val$intent:Landroid/content/Intent;

    const-string v2, "selected_folder"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 1288
    :cond_2
    invoke-static {v0}, Lfeem/FeemService;->change_downloads_folder(Ljava/lang/String;)V

    .line 1289
    iget-object v2, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    new-instance v3, Lfeem/MainActivity$15$1;

    invoke-direct {v3, v1, v0}, Lfeem/MainActivity$15$1;-><init>(Lfeem/MainActivity$15;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lfeem/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1b

    .line 1296
    :cond_3
    iget v0, v1, Lfeem/MainActivity$15;->val$requestCode:I

    iget-object v2, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    invoke-static {v2}, Lfeem/MainActivity;->access$500(Lfeem/MainActivity;)I

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_5

    .line 1298
    iget-object v0, v1, Lfeem/MainActivity$15;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1302
    :try_start_0
    iget-object v2, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    invoke-static {v2, v0}, Lfeem/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v3, :cond_4

    .line 1308
    iget-object v0, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    new-instance v2, Lfeem/MainActivity$15$2;

    invoke-direct {v2, v1}, Lfeem/MainActivity$15$2;-><init>(Lfeem/MainActivity$15;)V

    invoke-virtual {v0, v2}, Lfeem/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1317
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x64

    invoke-static {v0, v2, v2}, Lfeem/Feem;->decodeSampledBitmapFromFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data:image/jpeg;base64,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v0, v4, v2}, Lfeem/Feem;->encodeToBase64(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1321
    invoke-static {v0}, Lfeem/FeemService;->change_avatar(Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 1331
    :cond_5
    iget v0, v1, Lfeem/MainActivity$15;->val$requestCode:I

    iget-object v2, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    invoke-static {v2}, Lfeem/MainActivity;->access$300(Lfeem/MainActivity;)I

    move-result v2

    const-string v4, "feedback"

    const-string v5, "peer_id"

    const-string v6, "error"

    const-string v7, "send_folder"

    const-string v8, "feedback_for_peer"

    const-string v9, "files"

    const-wide/16 v12, 0x1

    const-string v14, "from_ui"

    const-string v15, "action"

    const-wide/16 v16, 0x0

    if-ne v0, v2, :cond_a

    .line 1333
    iget-object v0, v1, Lfeem/MainActivity$15;->val$intent:Landroid/content/Intent;

    const-string v2, "files_to_send"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1335
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1336
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 1343
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide/from16 v20, v16

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    add-long v6, v16, v12

    .line 1345
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1348
    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 1349
    :cond_6
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1350
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1353
    :cond_7
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v16, v12, v20

    const-wide/16 v18, 0x3e8

    cmp-long v0, v16, v18

    if-lez v0, :cond_8

    move-object/from16 v26, v11

    .line 1358
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 1361
    :try_start_1
    invoke-virtual {v11, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1362
    iget-object v0, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    iget-object v0, v0, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    invoke-virtual {v11, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-wide/from16 v16, v12

    :try_start_2
    const-string v12, "Processing Path "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-wide/from16 v16, v12

    :goto_3
    move-object/from16 v12, v22

    move-object/from16 v13, v23

    .line 1365
    invoke-static {v13, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1368
    :goto_4
    iget-object v0, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lfeem/MainActivity;->to_ui(Ljava/lang/String;)V

    move-wide/from16 v20, v16

    goto :goto_5

    :cond_8
    move-object/from16 v26, v11

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    :goto_5
    move-wide/from16 v16, v6

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v11, v26

    const-wide/16 v12, 0x1

    goto/16 :goto_1

    .line 1377
    :cond_9
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "pending_files_updated"

    .line 1378
    invoke-virtual {v0, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1379
    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1381
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/pending_files_updated"

    .line 1384
    invoke-static {v2, v0, v14}, Lfeem/FeemService;->request_from_core(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1386
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "pending_folders_updated"

    .line 1387
    invoke-virtual {v2, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "folders"

    .line 1388
    invoke-virtual {v2, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1390
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/pending_folders_updated"

    .line 1393
    invoke-static {v3, v2, v14}, Lfeem/FeemService;->request_from_core(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:native_callback("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1398
    iget-object v2, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    new-instance v3, Lfeem/MainActivity$15$3;

    invoke-direct {v3, v1, v0}, Lfeem/MainActivity$15$3;-><init>(Lfeem/MainActivity$15;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lfeem/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1b

    :catch_3
    move-exception v0

    .line 1407
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1408
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FEEMWIFI"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    :cond_a
    move-object v12, v6

    move-object v13, v7

    .line 1412
    iget v0, v1, Lfeem/MainActivity$15;->val$requestCode:I

    iget-object v2, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    invoke-static {v2}, Lfeem/MainActivity;->access$800(Lfeem/MainActivity;)I

    move-result v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v0, v2, :cond_15

    .line 1414
    iget-object v0, v1, Lfeem/MainActivity$15;->val$intent:Landroid/content/Intent;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    .line 1417
    :cond_b
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_6

    :cond_c
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    .line 1421
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1425
    :goto_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1427
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v7, v10, :cond_d

    .line 1428
    iget-object v7, v1, Lfeem/MainActivity$15;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v7

    goto :goto_7

    :cond_d
    move-object v7, v3

    .line 1430
    :goto_7
    iget-object v10, v1, Lfeem/MainActivity$15;->val$intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    if-eqz v0, :cond_e

    .line 1434
    iget-object v0, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    invoke-static {v0}, Lfeem/MainActivity;->access$900(Lfeem/MainActivity;)Landroid/net/Uri;

    move-result-object v0

    .line 1436
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v6, 0x8

    .line 1439
    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1440
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_c

    .line 1442
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x12

    if-lt v0, v11, :cond_10

    if-eqz v7, :cond_10

    .line 1444
    :goto_8
    invoke-virtual {v7}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-ge v6, v0, :cond_12

    .line 1445
    invoke-virtual {v7, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 1446
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 1449
    :try_start_4
    iget-object v10, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    invoke-static {v10, v0}, Lfeem/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    .line 1451
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    :goto_9
    if-nez v0, :cond_f

    goto :goto_a

    .line 1459
    :cond_f
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_10
    if-eqz v10, :cond_12

    .line 1469
    :try_start_5
    iget-object v0, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    invoke-static {v0, v10}, Lfeem/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    .line 1471
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b
    if-nez v3, :cond_11

    .line 1475
    iget-object v0, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    new-instance v2, Lfeem/MainActivity$15$4;

    invoke-direct {v2, v1}, Lfeem/MainActivity$15$4;-><init>(Lfeem/MainActivity$15;)V

    invoke-virtual {v0, v2}, Lfeem/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1485
    :cond_11
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1505
    :cond_12
    :goto_c
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v10, 0x36ee80

    .line 1507
    div-long/2addr v6, v10

    .line 1508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    iget-object v10, v10, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1514
    :try_start_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide/from16 v10, v16

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    const-wide/16 v20, 0x1

    add-long v12, v16, v20

    move-object/from16 v20, v6

    .line 1516
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1517
    invoke-static {v0}, Lfeem/Feem;->sha256Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1519
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v16, v6

    .line 1520
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v14

    const-string v14, "filename"

    move-object/from16 v26, v9

    .line 1521
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "fileurl"

    .line 1522
    invoke-virtual {v0, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "filesize"

    .line 1523
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v27, v12

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "isDirectory"

    const-string v7, "0"

    .line 1524
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1527
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v12, v6, v10

    const-wide/16 v17, 0x3e8

    cmp-long v0, v12, v17

    if-lez v0, :cond_13

    .line 1534
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    .line 1537
    :try_start_7
    invoke-virtual {v9, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1538
    iget-object v0, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    iget-object v0, v0, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    invoke-virtual {v9, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Processing Path "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-wide/from16 v12, v27

    :try_start_8
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-object/from16 v14, v22

    move-object/from16 v10, v23

    goto :goto_f

    :catch_6
    move-exception v0

    goto :goto_e

    :catch_7
    move-exception v0

    move-wide/from16 v12, v27

    :goto_e
    move-object/from16 v14, v22

    move-object/from16 v10, v23

    .line 1541
    :try_start_9
    invoke-static {v10, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1544
    :goto_f
    iget-object v0, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lfeem/MainActivity;->to_ui(Ljava/lang/String;)V

    move-object v9, v10

    move-wide v10, v6

    goto :goto_10

    :cond_13
    move-object/from16 v14, v22

    move-object/from16 v9, v23

    move-wide/from16 v12, v27

    :goto_10
    move-object/from16 v0, v16

    move-object/from16 v6, v20

    move-wide/from16 v16, v12

    move-object v12, v14

    move-object/from16 v14, v21

    move-object v13, v9

    move-object/from16 v9, v26

    goto/16 :goto_d

    :cond_14
    move-object/from16 v26, v9

    move-object/from16 v21, v14

    .line 1553
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    .line 1556
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sender"

    .line 1557
    invoke-static {}, Lfeem/FeemService;->deviceid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "receiver"

    .line 1558
    iget-object v4, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    iget-object v4, v4, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v10, v26

    .line 1559
    invoke-virtual {v2, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1560
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/create_upload"

    move-object/from16 v11, v21

    .line 1563
    invoke-static {v2, v0, v11}, Lfeem/FeemService;->request_from_core(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    goto/16 :goto_1b

    :cond_15
    move-object v10, v9

    move-object v9, v13

    move-object v11, v14

    move-object v14, v12

    .line 1572
    iget v0, v1, Lfeem/MainActivity$15;->val$requestCode:I

    iget-object v2, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    invoke-static {v2}, Lfeem/MainActivity;->access$400(Lfeem/MainActivity;)I

    move-result v2

    if-ne v0, v2, :cond_20

    .line 1574
    iget-object v0, v1, Lfeem/MainActivity$15;->val$intent:Landroid/content/Intent;

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_11

    .line 1577
    :cond_16
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    goto :goto_11

    :cond_17
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    .line 1581
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1585
    :goto_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1587
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x10

    if-lt v7, v12, :cond_18

    .line 1588
    iget-object v7, v1, Lfeem/MainActivity$15;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v7

    goto :goto_12

    :cond_18
    move-object v7, v3

    .line 1590
    :goto_12
    iget-object v12, v1, Lfeem/MainActivity$15;->val$intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    if-eqz v0, :cond_19

    .line 1594
    iget-object v0, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    invoke-static {v0}, Lfeem/MainActivity;->access$900(Lfeem/MainActivity;)Landroid/net/Uri;

    move-result-object v0

    .line 1596
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v6, 0x8

    .line 1599
    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1600
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_17

    .line 1602
    :cond_19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x12

    if-lt v0, v13, :cond_1b

    if-eqz v7, :cond_1b

    .line 1604
    :goto_13
    invoke-virtual {v7}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-ge v6, v0, :cond_1d

    .line 1605
    invoke-virtual {v7, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 1606
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 1609
    :try_start_a
    iget-object v12, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    invoke-static {v12, v0}, Lfeem/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_14

    :catch_8
    move-exception v0

    .line 1611
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    :goto_14
    if-nez v0, :cond_1a

    goto :goto_15

    .line 1619
    :cond_1a
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_1b
    if-eqz v12, :cond_1d

    .line 1629
    :try_start_b
    iget-object v0, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    invoke-static {v0, v12}, Lfeem/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_16

    :catch_9
    move-exception v0

    .line 1631
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_16
    if-nez v3, :cond_1c

    .line 1635
    iget-object v0, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    new-instance v2, Lfeem/MainActivity$15$5;

    invoke-direct {v2, v1}, Lfeem/MainActivity$15$5;-><init>(Lfeem/MainActivity$15;)V

    invoke-virtual {v0, v2}, Lfeem/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1645
    :cond_1c
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1665
    :cond_1d
    :goto_17
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v12, 0x36ee80

    .line 1667
    div-long/2addr v6, v12

    .line 1673
    :try_start_c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide/from16 v12, v16

    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v22, v6

    const-wide/16 v20, 0x1

    add-long v6, v16, v20

    move-object/from16 v16, v11

    .line 1676
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v26, v10

    .line 1677
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v23, v9

    const-string v9, "filename"

    .line 1678
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "fileurl"

    .line 1679
    invoke-virtual {v11, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1682
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v24, v9, v12

    const-wide/16 v17, 0x3e8

    cmp-long v0, v24, v17

    if-lez v0, :cond_1e

    .line 1689
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 1692
    :try_start_d
    invoke-virtual {v11, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1693
    iget-object v0, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    iget-object v0, v0, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    invoke-virtual {v11, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Processing Path "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    move-object/from16 v12, v23

    goto :goto_19

    :catch_a
    move-exception v0

    move-object/from16 v12, v23

    .line 1696
    :try_start_e
    invoke-static {v12, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1699
    :goto_19
    iget-object v0, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lfeem/MainActivity;->to_ui(Ljava/lang/String;)V

    move-wide/from16 v29, v9

    move-object v9, v12

    move-wide/from16 v12, v29

    goto :goto_1a

    :cond_1e
    move-object/from16 v9, v23

    :goto_1a
    move-object/from16 v11, v16

    move-object/from16 v10, v26

    move-wide/from16 v16, v6

    move-object/from16 v6, v22

    goto/16 :goto_18

    :cond_1f
    move-object/from16 v26, v10

    move-object/from16 v16, v11

    .line 1708
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v2, v26

    .line 1710
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1711
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/add_shared_files"

    move-object/from16 v3, v16

    .line 1713
    invoke-static {v2, v0, v3}, Lfeem/FeemService;->request_from_core(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 1735
    :catch_b
    :cond_20
    :goto_1b
    iget-object v0, v1, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    const-string v2, ""

    iput-object v2, v0, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    return-void
.end method
