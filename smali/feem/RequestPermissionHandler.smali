.class public Lfeem/RequestPermissionHandler;
.super Ljava/lang/Object;
.source "RequestPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfeem/RequestPermissionHandler$RequestPermissionListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mRequestCode:I

.field private mRequestPermissionListener:Lfeem/RequestPermissionHandler$RequestPermissionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findUnGrantedPermissions([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 52
    invoke-direct {p0, v4}, Lfeem/RequestPermissionHandler;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 53
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    :cond_1
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private isPermissionGranted(Ljava/lang/String;)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lfeem/RequestPermissionHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private needRequestRuntimePermissions()Z
    .locals 2

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private requestUnGrantedPermissions([Ljava/lang/String;I)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lfeem/RequestPermissionHandler;->findUnGrantedPermissions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 37
    array-length v0, p1

    if-nez v0, :cond_0

    .line 38
    iget-object p1, p0, Lfeem/RequestPermissionHandler;->mRequestPermissionListener:Lfeem/RequestPermissionHandler$RequestPermissionListener;

    invoke-interface {p1}, Lfeem/RequestPermissionHandler$RequestPermissionListener;->onSuccess()V

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lfeem/RequestPermissionHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    iget p2, p0, Lfeem/RequestPermissionHandler;->mRequestCode:I

    if-ne p1, p2, :cond_3

    .line 62
    array-length p1, p3

    if-lez p1, :cond_2

    .line 63
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget v0, p3, p2

    if-eqz v0, :cond_0

    .line 65
    iget-object p1, p0, Lfeem/RequestPermissionHandler;->mRequestPermissionListener:Lfeem/RequestPermissionHandler$RequestPermissionListener;

    invoke-interface {p1}, Lfeem/RequestPermissionHandler$RequestPermissionListener;->onFailed()V

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lfeem/RequestPermissionHandler;->mRequestPermissionListener:Lfeem/RequestPermissionHandler$RequestPermissionListener;

    invoke-interface {p1}, Lfeem/RequestPermissionHandler$RequestPermissionListener;->onSuccess()V

    goto :goto_1

    .line 71
    :cond_2
    iget-object p1, p0, Lfeem/RequestPermissionHandler;->mRequestPermissionListener:Lfeem/RequestPermissionHandler$RequestPermissionListener;

    invoke-interface {p1}, Lfeem/RequestPermissionHandler$RequestPermissionListener;->onFailed()V

    :cond_3
    :goto_1
    return-void
.end method

.method public requestPermission(Landroid/app/Activity;[Ljava/lang/String;ILfeem/RequestPermissionHandler$RequestPermissionListener;)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    iput-object p1, p0, Lfeem/RequestPermissionHandler;->mActivity:Landroid/app/Activity;

    .line 21
    iput p3, p0, Lfeem/RequestPermissionHandler;->mRequestCode:I

    .line 22
    iput-object p4, p0, Lfeem/RequestPermissionHandler;->mRequestPermissionListener:Lfeem/RequestPermissionHandler$RequestPermissionListener;

    .line 24
    invoke-direct {p0}, Lfeem/RequestPermissionHandler;->needRequestRuntimePermissions()Z

    move-result p1

    if-nez p1, :cond_0

    .line 25
    iget-object p1, p0, Lfeem/RequestPermissionHandler;->mRequestPermissionListener:Lfeem/RequestPermissionHandler$RequestPermissionListener;

    invoke-interface {p1}, Lfeem/RequestPermissionHandler$RequestPermissionListener;->onSuccess()V

    return-void

    .line 28
    :cond_0
    invoke-direct {p0, p2, p3}, Lfeem/RequestPermissionHandler;->requestUnGrantedPermissions([Ljava/lang/String;I)V

    return-void
.end method
