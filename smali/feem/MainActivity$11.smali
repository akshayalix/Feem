.class Lfeem/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/MainActivity;->showStoragePermissionDialog()V
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

    .line 502
    iput-object p1, p0, Lfeem/MainActivity$11;->this$0:Lfeem/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 506
    iget-object p1, p0, Lfeem/MainActivity$11;->this$0:Lfeem/MainActivity;

    invoke-static {p1}, Lfeem/MainActivity;->access$100(Lfeem/MainActivity;)Lfeem/RequestPermissionHandler;

    move-result-object p1

    iget-object p2, p0, Lfeem/MainActivity$11;->this$0:Lfeem/MainActivity;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    .line 508
    invoke-static {p2}, Lfeem/MainActivity;->access$200(Lfeem/MainActivity;)I

    move-result v1

    new-instance v2, Lfeem/MainActivity$11$1;

    invoke-direct {v2, p0}, Lfeem/MainActivity$11$1;-><init>(Lfeem/MainActivity$11;)V

    .line 506
    invoke-virtual {p1, p2, v0, v1, v2}, Lfeem/RequestPermissionHandler;->requestPermission(Landroid/app/Activity;[Ljava/lang/String;ILfeem/RequestPermissionHandler$RequestPermissionListener;)V

    return-void
.end method
