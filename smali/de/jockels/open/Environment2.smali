.class public Lde/jockels/open/Environment2;
.super Ljava/lang/Object;
.source "Environment2.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final PATH_PREFIX:Ljava/lang/String; = "/Android/data/"

.field private static final TAG:Ljava/lang/String; = "Environment2"

.field private static mDeviceList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lde/jockels/open/DeviceDiv;",
            ">;"
        }
    .end annotation
.end field

.field private static mExternalEmulated:Z

.field private static mInternal:Lde/jockels/open/Device;

.field protected static mPrimary:Lde/jockels/open/DeviceExternal;

.field private static mSecondary:Lde/jockels/open/DeviceDiv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    invoke-static {}, Lde/jockels/open/Environment2;->rescanDevices()V

    const/4 v0, 0x0

    .line 27
    sput-object v0, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    .line 28
    sput-object v0, Lde/jockels/open/Environment2;->mDeviceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    .line 29
    sput-boolean v1, Lde/jockels/open/Environment2;->mExternalEmulated:Z

    .line 30
    sput-object v0, Lde/jockels/open/Environment2;->mInternal:Lde/jockels/open/Device;

    .line 31
    sput-object v0, Lde/jockels/open/Environment2;->mSecondary:Lde/jockels/open/DeviceDiv;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCardCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 116
    invoke-static {}, Lde/jockels/open/Environment2;->isSecondaryExternalStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    :try_start_0
    invoke-static {p0}, Lde/jockels/open/Environment2;->getSecondaryExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Lde/jockels/open/NoSecondaryStorageException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 120
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "NoSecondaryException trotz Available"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_0
    sget-object v0, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    invoke-virtual {v0, p0}, Lde/jockels/open/DeviceExternal;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getCardDirectory()Ljava/io/File;
    .locals 2

    .line 83
    invoke-static {}, Lde/jockels/open/Environment2;->isSecondaryExternalStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :try_start_0
    invoke-static {}, Lde/jockels/open/Environment2;->getSecondaryExternalStorageDirectory()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Lde/jockels/open/NoSecondaryStorageException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 87
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NoSecondaryException trotz Available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getCardFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 127
    invoke-static {}, Lde/jockels/open/Environment2;->isSecondaryExternalStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    :try_start_0
    invoke-static {p0, p1}, Lde/jockels/open/Environment2;->getSecondaryExternalFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Lde/jockels/open/NoSecondaryStorageException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 131
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "NoSecondaryException trotz Available"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    :cond_0
    sget-object v0, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    invoke-virtual {v0, p0, p1}, Lde/jockels/open/DeviceExternal;->getFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getCardPublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 94
    invoke-static {}, Lde/jockels/open/Environment2;->isSecondaryExternalStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    invoke-static {p0}, Lde/jockels/open/Environment2;->getSecondaryExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Lde/jockels/open/NoSecondaryStorageException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 98
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "NoSecondaryException trotz Available"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_0
    sget-object v0, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    invoke-virtual {v0, p0}, Lde/jockels/open/DeviceExternal;->getPublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getCardState()Ljava/lang/String;
    .locals 2

    .line 105
    invoke-static {}, Lde/jockels/open/Environment2;->isSecondaryExternalStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :try_start_0
    invoke-static {}, Lde/jockels/open/Environment2;->getSecondaryExternalStorageState()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lde/jockels/open/NoSecondaryStorageException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 109
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NoSecondaryException trotz Available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDevices(Ljava/lang/String;ZZZ)[Lde/jockels/open/Device;
    .locals 3

    const-class v0, Lde/jockels/open/Environment2;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 321
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 322
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lde/jockels/open/Environment2;->mDeviceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p3, :cond_1

    .line 323
    invoke-static {}, Lde/jockels/open/Environment2;->getInternalStorage()Lde/jockels/open/Device;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 324
    sget-object p2, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    invoke-virtual {p2}, Lde/jockels/open/DeviceExternal;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    sget-object p2, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_3
    sget-object p2, Lde/jockels/open/Environment2;->mDeviceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lde/jockels/open/Device;

    if-eqz p0, :cond_5

    .line 326
    invoke-virtual {p3}, Lde/jockels/open/Device;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p3}, Lde/jockels/open/Device;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 327
    :cond_6
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lde/jockels/open/Device;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lde/jockels/open/Device;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    return-void
.end method

.method public static getInternalStorage()Lde/jockels/open/Device;
    .locals 1

    .line 345
    sget-object v0, Lde/jockels/open/Environment2;->mInternal:Lde/jockels/open/Device;

    if-nez v0, :cond_0

    new-instance v0, Lde/jockels/open/DeviceIntern;

    invoke-direct {v0}, Lde/jockels/open/DeviceIntern;-><init>()V

    sput-object v0, Lde/jockels/open/Environment2;->mInternal:Lde/jockels/open/Device;

    .line 346
    :cond_0
    sget-object v0, Lde/jockels/open/Environment2;->mInternal:Lde/jockels/open/Device;

    return-object v0
.end method

.method public static getPrimaryExternalStorage()Lde/jockels/open/Device;
    .locals 1

    .line 334
    sget-object v0, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    return-object v0
.end method

.method public static getRescanIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 149
    sget-object v0, Lde/jockels/open/Environment2;->mDeviceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lde/jockels/open/Environment2;->rescanDevices()V

    .line 150
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SHARED"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSecondaryExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/jockels/open/NoSecondaryStorageException;
        }
    .end annotation

    .line 71
    sget-object v0, Lde/jockels/open/Environment2;->mSecondary:Lde/jockels/open/DeviceDiv;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {v0, p0}, Lde/jockels/open/DeviceDiv;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context darf nicht null sein"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_1
    new-instance p0, Lde/jockels/open/NoSecondaryStorageException;

    invoke-direct {p0}, Lde/jockels/open/NoSecondaryStorageException;-><init>()V

    throw p0
.end method

.method public static getSecondaryExternalFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/jockels/open/NoSecondaryStorageException;
        }
    .end annotation

    .line 64
    sget-object v0, Lde/jockels/open/Environment2;->mSecondary:Lde/jockels/open/DeviceDiv;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {v0, p0, p1}, Lde/jockels/open/DeviceDiv;->getFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context darf nicht null sein"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_1
    new-instance p0, Lde/jockels/open/NoSecondaryStorageException;

    invoke-direct {p0}, Lde/jockels/open/NoSecondaryStorageException;-><init>()V

    throw p0
.end method

.method public static getSecondaryExternalStorage()Lde/jockels/open/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/jockels/open/NoSecondaryStorageException;
        }
    .end annotation

    .line 339
    sget-object v0, Lde/jockels/open/Environment2;->mSecondary:Lde/jockels/open/DeviceDiv;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lde/jockels/open/NoSecondaryStorageException;

    invoke-direct {v0}, Lde/jockels/open/NoSecondaryStorageException;-><init>()V

    throw v0
.end method

.method public static getSecondaryExternalStorageDirectory()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/jockels/open/NoSecondaryStorageException;
        }
    .end annotation

    .line 45
    sget-object v0, Lde/jockels/open/Environment2;->mSecondary:Lde/jockels/open/DeviceDiv;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lde/jockels/open/DeviceDiv;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lde/jockels/open/NoSecondaryStorageException;

    invoke-direct {v0}, Lde/jockels/open/NoSecondaryStorageException;-><init>()V

    throw v0
.end method

.method public static getSecondaryExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/jockels/open/NoSecondaryStorageException;
        }
    .end annotation

    .line 57
    sget-object v0, Lde/jockels/open/Environment2;->mSecondary:Lde/jockels/open/DeviceDiv;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {v0, p0}, Lde/jockels/open/DeviceDiv;->getPublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "s darf nicht null sein"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_1
    new-instance p0, Lde/jockels/open/NoSecondaryStorageException;

    invoke-direct {p0}, Lde/jockels/open/NoSecondaryStorageException;-><init>()V

    throw p0
.end method

.method public static getSecondaryExternalStorageState()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/jockels/open/NoSecondaryStorageException;
        }
    .end annotation

    .line 51
    sget-object v0, Lde/jockels/open/Environment2;->mSecondary:Lde/jockels/open/DeviceDiv;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lde/jockels/open/DeviceDiv;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lde/jockels/open/NoSecondaryStorageException;

    invoke-direct {v0}, Lde/jockels/open/NoSecondaryStorageException;-><init>()V

    throw v0
.end method

.method public static isExternalStorageEmulated()Z
    .locals 1

    .line 139
    sget-boolean v0, Lde/jockels/open/Environment2;->mExternalEmulated:Z

    return v0
.end method

.method public static isExternalStorageRemovable()Z
    .locals 1

    .line 144
    sget-object v0, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    invoke-virtual {v0}, Lde/jockels/open/DeviceExternal;->isRemovable()Z

    move-result v0

    return v0
.end method

.method public static isSecondaryExternalStorageAvailable()Z
    .locals 1

    .line 34
    sget-object v0, Lde/jockels/open/Environment2;->mSecondary:Lde/jockels/open/DeviceDiv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lde/jockels/open/DeviceDiv;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isSecondaryExternalStorageRemovable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/jockels/open/NoSecondaryStorageException;
        }
    .end annotation

    .line 39
    sget-object v0, Lde/jockels/open/Environment2;->mSecondary:Lde/jockels/open/DeviceDiv;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Lde/jockels/open/NoSecondaryStorageException;

    invoke-direct {v0}, Lde/jockels/open/NoSecondaryStorageException;-><init>()V

    throw v0
.end method

.method public static registerRescanBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 1

    .line 185
    sget-object v0, Lde/jockels/open/Environment2;->mDeviceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lde/jockels/open/Environment2;->rescanDevices()V

    .line 186
    :cond_0
    new-instance v0, Lde/jockels/open/Environment2$2;

    invoke-direct {v0, p1}, Lde/jockels/open/Environment2$2;-><init>(Landroid/content/BroadcastReceiver;)V

    .line 194
    invoke-static {}, Lde/jockels/open/Environment2;->getRescanIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-object v0
.end method

.method public static registerRescanBroadcastReceiver(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/content/BroadcastReceiver;
    .locals 1

    .line 170
    sget-object v0, Lde/jockels/open/Environment2;->mDeviceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lde/jockels/open/Environment2;->rescanDevices()V

    .line 171
    :cond_0
    new-instance v0, Lde/jockels/open/Environment2$1;

    invoke-direct {v0, p1}, Lde/jockels/open/Environment2$1;-><init>(Ljava/lang/Runnable;)V

    .line 179
    invoke-static {}, Lde/jockels/open/Environment2;->getRescanIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-object v0
.end method

.method public static rescanDevices()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lde/jockels/open/Environment2;->mDeviceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 210
    new-instance v0, Lde/jockels/open/DeviceExternal;

    invoke-direct {v0}, Lde/jockels/open/DeviceExternal;-><init>()V

    sput-object v0, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    const-string v0, "vold.fstab"

    .line 213
    invoke-static {v0}, Lde/jockels/open/Environment2;->scanVold(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vold.conf"

    invoke-static {v0}, Lde/jockels/open/Environment2;->scanVold(Ljava/lang/String;)Z

    .line 216
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 217
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    sput-boolean v0, Lde/jockels/open/Environment2;->mExternalEmulated:Z

    goto :goto_0

    .line 220
    :cond_1
    sput-boolean v2, Lde/jockels/open/Environment2;->mExternalEmulated:Z

    .line 227
    :goto_0
    sget-object v0, Lde/jockels/open/Environment2;->mDeviceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 228
    sput-object v1, Lde/jockels/open/Environment2;->mSecondary:Lde/jockels/open/DeviceDiv;

    goto :goto_1

    .line 232
    :cond_2
    sget-object v0, Lde/jockels/open/Environment2;->mDeviceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/jockels/open/DeviceDiv;

    sput-object v0, Lde/jockels/open/Environment2;->mSecondary:Lde/jockels/open/DeviceDiv;

    .line 233
    sget-object v0, Lde/jockels/open/Environment2;->mSecondary:Lde/jockels/open/DeviceDiv;

    invoke-virtual {v0}, Lde/jockels/open/DeviceDiv;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "usb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    sput-object v1, Lde/jockels/open/Environment2;->mSecondary:Lde/jockels/open/DeviceDiv;

    goto :goto_1

    .line 238
    :cond_3
    sget-object v0, Lde/jockels/open/Environment2;->mSecondary:Lde/jockels/open/DeviceDiv;

    const-string v1, "SD Card"

    invoke-virtual {v0, v1}, Lde/jockels/open/DeviceDiv;->setName(Ljava/lang/String;)V

    .line 240
    sget-object v0, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    invoke-virtual {v0}, Lde/jockels/open/DeviceExternal;->isRemovable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Environment2"

    const-string v1, "isExternStorageRemovable overwrite (secondary sd found) auf false"

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_4
    sget-object v0, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    invoke-virtual {v0, v2}, Lde/jockels/open/DeviceExternal;->setRemovable(Z)V

    :goto_1
    return-void
.end method

.method private static scanVold(Ljava/lang/String;)Z
    .locals 9

    const-string v0, "Environment2"

    .line 251
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    const/4 v2, 0x0

    .line 253
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/etc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x800

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 254
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_0
    if-eqz v4, :cond_7

    .line 256
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    const-string v7, "dev_mount"

    .line 258
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 259
    new-instance v4, Lde/jockels/open/DeviceDiv;

    invoke-direct {v4, v1}, Lde/jockels/open/DeviceDiv;-><init>(Landroid/text/TextUtils$SimpleStringSplitter;)V

    .line 261
    sget-object v7, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    invoke-virtual {v7}, Lde/jockels/open/DeviceExternal;->getMountPoint()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lde/jockels/open/DeviceDiv;->getMountPoint()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 265
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-ge v4, v6, :cond_0

    .line 266
    sget-object v4, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    invoke-virtual {v4, v5}, Lde/jockels/open/DeviceExternal;->setRemovable(Z)V

    .line 275
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    const-string v6, "nonremovable"

    .line 277
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    sget-object v4, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    invoke-virtual {v4, v2}, Lde/jockels/open/DeviceExternal;->setRemovable(Z)V

    const-string v4, "isExternStorageRemovable overwrite (\'nonremovable\') auf false"

    .line 279
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 285
    :cond_2
    sget-object v7, Lde/jockels/open/Environment2;->mDeviceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_6

    const-string v7, "discard"

    .line 291
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 293
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 294
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    const-string v7, "disable"

    .line 295
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 296
    sget-object v4, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    invoke-virtual {v4, v2}, Lde/jockels/open/DeviceExternal;->setRemovable(Z)V

    const-string v4, "isExternStorageRemovable overwrite (\'discard=disable\') auf false"

    .line 297
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v7, "enable"

    .line 298
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isExternStorageRemovable overwrite overwrite (\'discard=enable\'), bleibt auf "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    invoke-virtual {v7}, Lde/jockels/open/DeviceExternal;->isRemovable()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 304
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disable-Eintrag unverst\ufffdndlich: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_6
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 310
    :cond_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " gelesen; Ger\ufffdte gefunden: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lde/jockels/open/Environment2;->mDeviceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v1

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kann "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " nicht lesen: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static declared-synchronized updateDevices()V
    .locals 3

    const-class v0, Lde/jockels/open/Environment2;

    monitor-enter v0

    .line 200
    :try_start_0
    sget-object v1, Lde/jockels/open/Environment2;->mDeviceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/jockels/open/Device;

    .line 201
    invoke-virtual {v2}, Lde/jockels/open/Device;->updateState()V

    goto :goto_0

    .line 203
    :cond_0
    sget-object v1, Lde/jockels/open/Environment2;->mPrimary:Lde/jockels/open/DeviceExternal;

    invoke-virtual {v1}, Lde/jockels/open/DeviceExternal;->updateState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    return-void
.end method
