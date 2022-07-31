.class public Lcom/crashlytics/android/ndk/CrashlyticsNdk;
.super Lio/fabric/sdk/android/Kit;
.source "CrashlyticsNdk.java"

# interfaces
.implements Lcom/crashlytics/android/core/internal/CrashEventDataProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/crashlytics/android/core/internal/CrashEventDataProvider;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CrashlyticsNdk"


# instance fields
.field private final crashDataParser:Lcom/crashlytics/android/ndk/JsonCrashDataParser;

.field private crashFileManager:Lcom/crashlytics/android/ndk/CrashFileManager;

.field lastCrashEventData:Lcom/crashlytics/android/core/internal/models/SessionEventData;

.field private final nativeApi:Lcom/crashlytics/android/ndk/NativeApi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/crashlytics/android/ndk/JniNativeApi;

    invoke-direct {v0}, Lcom/crashlytics/android/ndk/JniNativeApi;-><init>()V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;-><init>(Lcom/crashlytics/android/ndk/NativeApi;)V

    return-void
.end method

.method constructor <init>(Lcom/crashlytics/android/ndk/NativeApi;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->nativeApi:Lcom/crashlytics/android/ndk/NativeApi;

    .line 39
    new-instance p1, Lcom/crashlytics/android/ndk/JsonCrashDataParser;

    invoke-direct {p1}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->crashDataParser:Lcom/crashlytics/android/ndk/JsonCrashDataParser;

    return-void
.end method

.method public static getInstance()Lcom/crashlytics/android/ndk/CrashlyticsNdk;
    .locals 1

    .line 56
    const-class v0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    return-object v0
.end method

.method private getKitStorageDirectory()Ljava/io/File;
    .locals 1

    .line 128
    new-instance v0, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private readJsonCrashFile(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    const-string v0, "Error closing crash data file."

    .line 142
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "CrashlyticsNdk"

    const-string v3, "Reading NDK crash data..."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 146
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :try_start_1
    invoke-static {v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    :goto_0
    invoke-static {v3, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v3, v1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v3, v1

    .line 149
    :goto_1
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v5, "Failed to read NDK crash data."

    invoke-interface {v4, v2, v5, p1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :goto_2
    return-object v1

    :catchall_1
    move-exception p1

    .line 151
    :goto_3
    invoke-static {v3, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->doInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground()Ljava/lang/Void;
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->crashFileManager:Lcom/crashlytics/android/ndk/CrashFileManager;

    invoke-interface {v0}, Lcom/crashlytics/android/ndk/CrashFileManager;->getLastWrittenCrashFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "CrashlyticsNdk"

    const-string v3, "Found NDK crash file..."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v0}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->readJsonCrashFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->crashDataParser:Lcom/crashlytics/android/ndk/JsonCrashDataParser;

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseCrashEventData(Ljava/lang/String;)Lcom/crashlytics/android/core/internal/models/SessionEventData;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->lastCrashEventData:Lcom/crashlytics/android/core/internal/models/SessionEventData;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Crashlytics failed to parse prior crash data."

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->crashFileManager:Lcom/crashlytics/android/ndk/CrashFileManager;

    invoke-interface {v0}, Lcom/crashlytics/android/ndk/CrashFileManager;->clearCrashFiles()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCrashEventData()Lcom/crashlytics/android/core/internal/models/SessionEventData;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->lastCrashEventData:Lcom/crashlytics/android/core/internal/models/SessionEventData;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "com.crashlytics.sdk.android.crashlytics-ndk"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1.3.119"

    return-object v0
.end method

.method protected onPreExecute()Z
    .locals 3

    .line 71
    const-class v0, Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;

    invoke-direct {p0}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->getKitStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/crashlytics/android/ndk/TimeBasedCrashFileManager;-><init>(Ljava/io/File;)V

    .line 77
    invoke-static {}, Lcom/crashlytics/android/core/CrashlyticsCore;->getInstance()Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v1

    .line 78
    new-instance v2, Lcom/crashlytics/android/core/CrashlyticsKitBinder;

    invoke-direct {v2}, Lcom/crashlytics/android/core/CrashlyticsKitBinder;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->onPreExecute(Lcom/crashlytics/android/ndk/CrashFileManager;Lcom/crashlytics/android/core/CrashlyticsCore;Lcom/crashlytics/android/core/CrashlyticsKitBinder;)Z

    move-result v0

    return v0

    .line 72
    :cond_0
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;

    const-string v1, "CrashlyticsNdk requires Crashlytics"

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onPreExecute(Lcom/crashlytics/android/ndk/CrashFileManager;Lcom/crashlytics/android/core/CrashlyticsCore;Lcom/crashlytics/android/core/CrashlyticsKitBinder;)Z
    .locals 3

    const-string v0, "CrashlyticsNdk"

    .line 86
    iput-object p1, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->crashFileManager:Lcom/crashlytics/android/ndk/CrashFileManager;

    .line 89
    :try_start_0
    invoke-interface {p1}, Lcom/crashlytics/android/ndk/CrashFileManager;->getNewCrashFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 91
    iget-object v1, p0, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->nativeApi:Lcom/crashlytics/android/ndk/NativeApi;

    invoke-virtual {p0}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/crashlytics/android/ndk/NativeApi;->initialize(Ljava/lang/String;Landroid/content/res/AssetManager;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Error initializing CrashlyticsNdk"

    invoke-interface {v1, v0, v2, p1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p3, p2, p0}, Lcom/crashlytics/android/core/CrashlyticsKitBinder;->bindCrashEventDataProvider(Lcom/crashlytics/android/core/CrashlyticsCore;Lcom/crashlytics/android/ndk/CrashlyticsNdk;)V

    .line 98
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object p2

    const-string p3, "Crashlytics NDK initialization successful"

    invoke-interface {p2, v0, p3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p1
.end method
