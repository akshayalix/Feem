.class Lfeem/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/MainActivity;->showLocationPermissionDialog()V
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

    .line 452
    iput-object p1, p0, Lfeem/MainActivity$9;->this$0:Lfeem/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 456
    iget-object p1, p0, Lfeem/MainActivity$9;->this$0:Lfeem/MainActivity;

    invoke-static {p1}, Lfeem/MainActivity;->access$100(Lfeem/MainActivity;)Lfeem/RequestPermissionHandler;

    move-result-object p1

    iget-object p2, p0, Lfeem/MainActivity$9;->this$0:Lfeem/MainActivity;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    .line 458
    invoke-static {p2}, Lfeem/MainActivity;->access$000(Lfeem/MainActivity;)I

    move-result v1

    new-instance v2, Lfeem/MainActivity$9$1;

    invoke-direct {v2, p0}, Lfeem/MainActivity$9$1;-><init>(Lfeem/MainActivity$9;)V

    .line 456
    invoke-virtual {p1, p2, v0, v1, v2}, Lfeem/RequestPermissionHandler;->requestPermission(Landroid/app/Activity;[Ljava/lang/String;ILfeem/RequestPermissionHandler$RequestPermissionListener;)V

    return-void
.end method
