.class Lfeem/MainActivity$13;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/MainActivity;


# direct methods
.method constructor <init>(Lfeem/MainActivity;)V
    .locals 0

    .line 702
    iput-object p1, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "action"

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "feem"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "quit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "about to quit"

    .line 709
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object p1, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    const-class v1, Lfeem/FeemService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lfeem/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 711
    iget-object p1, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    invoke-virtual {p1}, Lfeem/MainActivity;->finish()V

    goto/16 :goto_2

    .line 712
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "feem_message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "message"

    .line 714
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 717
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 720
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "open_file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "filepath"

    .line 721
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 722
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 723
    invoke-static {p1, v1}, Lfeem/MainActivity;->openFile(Landroid/content/Context;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 732
    :catch_0
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:native_callback("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 734
    iget-object p2, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    invoke-virtual {p2, p1}, Lfeem/MainActivity;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 735
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "show_alert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string p1, "title"

    .line 736
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "description"

    .line 737
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 740
    iget-object v1, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 742
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "copy_to_clipboard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "msg"

    .line 743
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 744
    iget-object p2, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Lfeem/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const/4 v0, 0x0

    .line 745
    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 746
    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto/16 :goto_2

    .line 747
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "turn_on_accessibility"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 748
    sget-object p1, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string p2, "turning on accessibility 2"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    iget-object p2, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    invoke-virtual {p2, p1, v0}, Lfeem/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 760
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "show_file_picker"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    if-nez p1, :cond_e

    :try_start_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v3, "open_file_browser"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto/16 :goto_1

    .line 791
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v3, "add_shared_files"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 794
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/16 p2, 0x13

    const-string v0, "*/*"

    if-ge p1, p2, :cond_7

    .line 795
    :try_start_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 796
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    .line 797
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 801
    :cond_7
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.OPENABLE"

    .line 802
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    :goto_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p2, v0, :cond_8

    const-string p2, "android.intent.extra.LOCAL_ONLY"

    .line 807
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 809
    :cond_8
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p2, v0, :cond_9

    const-string p2, "android.intent.extra.ALLOW_MULTIPLE"

    .line 810
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 817
    :cond_9
    iget-object p2, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    iget-object v0, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    invoke-static {v0}, Lfeem/MainActivity;->access$400(Lfeem/MainActivity;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lfeem/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 820
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v3, "change_avatar"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 822
    iget-object p1, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    invoke-static {p1}, Lfeem/MainActivity;->access$100(Lfeem/MainActivity;)Lfeem/RequestPermissionHandler;

    move-result-object p1

    iget-object p2, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v0

    iget-object v0, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    .line 824
    invoke-static {v0}, Lfeem/MainActivity;->access$200(Lfeem/MainActivity;)I

    move-result v0

    new-instance v1, Lfeem/MainActivity$13$2;

    invoke-direct {v1, p0}, Lfeem/MainActivity$13$2;-><init>(Lfeem/MainActivity$13;)V

    .line 822
    invoke-virtual {p1, p2, v2, v0, v1}, Lfeem/RequestPermissionHandler;->requestPermission(Landroid/app/Activity;[Ljava/lang/String;ILfeem/RequestPermissionHandler$RequestPermissionListener;)V

    goto :goto_2

    .line 849
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v3, "change_downloads_folder"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 851
    iget-object p1, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    invoke-static {p1}, Lfeem/MainActivity;->access$100(Lfeem/MainActivity;)Lfeem/RequestPermissionHandler;

    move-result-object p1

    iget-object p2, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v0

    iget-object v0, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    .line 853
    invoke-static {v0}, Lfeem/MainActivity;->access$200(Lfeem/MainActivity;)I

    move-result v0

    new-instance v1, Lfeem/MainActivity$13$3;

    invoke-direct {v1, p0}, Lfeem/MainActivity$13$3;-><init>(Lfeem/MainActivity$13;)V

    .line 851
    invoke-virtual {p1, p2, v2, v0, v1}, Lfeem/RequestPermissionHandler;->requestPermission(Landroid/app/Activity;[Ljava/lang/String;ILfeem/RequestPermissionHandler$RequestPermissionListener;)V

    goto :goto_2

    .line 864
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "show_ad"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 866
    iget-object p1, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    iget-boolean p1, p1, Lfeem/MainActivity;->activityIsInBackground:Z

    if-eqz p1, :cond_d

    .line 867
    iget-object p1, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    iput-boolean v2, p1, Lfeem/MainActivity;->pendingAdToShow:Z

    goto :goto_2

    .line 870
    :cond_d
    iget-object p1, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    new-instance p2, Lfeem/MainActivity$13$4;

    invoke-direct {p2, p0}, Lfeem/MainActivity$13$4;-><init>(Lfeem/MainActivity$13;)V

    invoke-virtual {p1, p2}, Lfeem/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 763
    :cond_e
    :goto_1
    iget-object p1, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    invoke-static {p1}, Lfeem/MainActivity;->access$100(Lfeem/MainActivity;)Lfeem/RequestPermissionHandler;

    move-result-object p1

    iget-object v3, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v0, v4, v2

    iget-object v0, p0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    .line 765
    invoke-static {v0}, Lfeem/MainActivity;->access$200(Lfeem/MainActivity;)I

    move-result v0

    new-instance v1, Lfeem/MainActivity$13$1;

    invoke-direct {v1, p0, p2}, Lfeem/MainActivity$13$1;-><init>(Lfeem/MainActivity$13;Landroid/content/Intent;)V

    .line 763
    invoke-virtual {p1, v3, v4, v0, v1}, Lfeem/RequestPermissionHandler;->requestPermission(Landroid/app/Activity;[Ljava/lang/String;ILfeem/RequestPermissionHandler$RequestPermissionListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_f
    :goto_2
    return-void
.end method
